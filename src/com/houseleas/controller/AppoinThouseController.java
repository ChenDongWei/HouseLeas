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
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.houseleas.entity.AppoinThouseModel;
import com.houseleas.entity.PageModel;
import com.houseleas.service.AppoinThouseService;
import com.houseleas.util.ResponseUtil;

/**
 * 指定租房Control层
 * @author Administrator
 * @date 2018年1月27日
 */
@Controller
@RequestMapping("/appoinThouse")
public class AppoinThouseController {
	@Resource
	private AppoinThouseService appoinThouseService;

	/**
	 * 跳转到指定租房页面
	 * @param appoinThouse
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("toAppoinThouse")
	public ModelAndView toAppoinThouse(AppoinThouseModel appoinThouse, HttpServletRequest request) throws Exception{
		ModelAndView modelAndView = new ModelAndView("outnet/appoinThouse");
		
		return modelAndView;
	}
	
	/**
	 * 查询指定租房信息列表
	 * @param page
	 * @param rows
	 * @param appoinThouse
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getAppoinThouseList")
	@ResponseBody
	public Map<String, Object> getEmployeeList(
			@RequestParam(value = "page", required = true) String page,
			@RequestParam(value = "rows", required = true) String rows,
			AppoinThouseModel appoinThouse, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PageModel pageModel = new PageModel(Integer.parseInt(page),
				Integer.parseInt(rows));
		int start = pageModel.getStart();
		int size = pageModel.getPageSize();
		List<AppoinThouseModel> appoinThouseList = appoinThouseService.getAppoinThouseList(appoinThouse, start, size);
		Long total = appoinThouseService.getTotal(appoinThouse, start, size);
		JSONObject result = new JSONObject();
		JSONArray jsonArray = JSONArray.fromObject(appoinThouseList);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response, result);
		return null;
	}

	/**
	 * 添加指定租房信息
	 * @param appoinThouse
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addAppoinThouse")
	public String addOrUpdateEmployee(AppoinThouseModel appoinThouse, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int resultTotal = 0;// 操作返回的记录条数
		resultTotal = appoinThouseService.addAppoinThouse(appoinThouse);
		JSONObject result = new JSONObject();
		if (resultTotal > 0) {
			result.put("success", true);
		} else {
			result.put("success", false);
		}
		ResponseUtil.write(response, result);
		return null;
	}
	
	@RequestMapping("/updateAppoinThouse")
	public String updateAppoinThouse(AppoinThouseModel appoinThouse, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int resultTotal = 0;// 操作返回的记录条数
		resultTotal = appoinThouseService.updateAppoinThouse(appoinThouse);
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
	 * 删除指定租房信息
	 * @param ids
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteAppoinThouse")
	public String deleteAppoinThouse(@RequestParam(value = "seqs") String seqs,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] seqsStr = seqs.split(",");
		List<Integer> list = new ArrayList<Integer>();
		for (String seq : seqsStr) {
			list.add(Integer.parseInt(seq));
		}
		appoinThouseService.deleteAppoinThouse(list);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(response, result);
		return null;
	}
	
	@InitBinder("appoinThouseModel")
	public void bindAppoinThouseModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("appoinThouseModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}
}
