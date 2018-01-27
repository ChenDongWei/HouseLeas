package com.houseleas.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.houseleas.entity.EmployeeModel;
import com.houseleas.entity.PageModel;
import com.houseleas.service.EmployeeService;
import com.houseleas.util.ResponseUtil;
import com.houseleas.util.StringUtil;

/**
 * 用户Control层
 * @author Administrator
 * @date 2018年1月27日
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Resource
	private EmployeeService employeeService;

	/**
	 * 查询用户列表
	 * 
	 * @param page
	 * @param rows
	 * @param employee
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getEmployeeList")
	@ResponseBody
	public Map<String, Object> getEmployeeList(
			@RequestParam(value = "page", required = true) String page,
			@RequestParam(value = "rows", required = true) String rows,
			EmployeeModel employee, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PageModel pageModel = new PageModel(Integer.parseInt(page),
				Integer.parseInt(rows));
		String userCode = StringUtil.formatLike(employee.getUserCode());
		int start = pageModel.getStart();
		int size = pageModel.getPageSize();
		List<EmployeeModel> employeeList = employeeService.getEmployeeList(userCode, start, size);
		Long total = employeeService.getTotal(userCode, start, size);
		JSONObject result = new JSONObject();
		JSONArray jsonArray = JSONArray.fromObject(employeeList);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response, result);
		return null;
	}

	/**
	 * 添加或修改用户
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addOrUpdateEmployee")
	public String addOrUpdateEmployee(EmployeeModel employee, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int resultTotal = 0;// 操作返回的记录条数
		if (employee.getSeq() != null) {
			resultTotal = employeeService.updateEmployee(employee);
		} else {
			resultTotal = employeeService.addEmployee(employee);
		}
		JSONObject result = new JSONObject();
		if (resultTotal > 0) {
			result.put("success", true);
		} else {
			result.put("success", false);
		}
		ResponseUtil.write(response, result);
		return null;
	}

	/**
	 * 删除用户
	 * @param ids
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam(value = "seqs") String seqs,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] idsStr = seqs.split(",");
		List<Integer> list = new ArrayList<Integer>();
		for (String id : idsStr) {
			list.add(Integer.parseInt(id));
		}
		employeeService.deleteEmployee(list);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(response, result);
		return null;
	}
}
