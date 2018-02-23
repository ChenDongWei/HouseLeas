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

import com.houseleas.entity.CustomerModel;
import com.houseleas.entity.PageModel;
import com.houseleas.service.CustomerService;
import com.houseleas.service.CustomerService;
import com.houseleas.util.ResponseUtil;
import com.houseleas.util.StringUtil;

/**
 * 客户Control层
 * 
 * @author Administrator
 * @date 2018年1月27日
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Resource
	private CustomerService customerService;

	/**
	 * 查询用户列表
	 * 
	 * @param page
	 * @param rows
	 * @param customer
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getCustomerList")
	@ResponseBody
	public Map<String, Object> getCustomerList(
			@RequestParam(value = "page", required = true) String page,
			@RequestParam(value = "rows", required = true) String rows,
			CustomerModel customer, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PageModel pageModel = new PageModel(Integer.parseInt(page),
				Integer.parseInt(rows));
		String mobilePhone = StringUtil.formatLike(customer.getMobilePhone());
		int start = pageModel.getStart();
		int size = pageModel.getPageSize();
		List<CustomerModel> customerList = customerService.getCustomerList(
				mobilePhone, start, size);
		Long total = customerService.getTotal(mobilePhone, start, size);
		JSONObject result = new JSONObject();
		JSONArray jsonArray = JSONArray.fromObject(customerList);
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
	@RequestMapping("/addOrUpdateCustomer")
	public String addOrUpdateCustomer(CustomerModel customer,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int resultTotal = 0;// 操作返回的记录条数
		if (customer.getSeq() != null) {
			resultTotal = customerService.updateCustomer(customer);
		} else {
			resultTotal = customerService.addCustomer(customer);
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
	 * 客户注册
	 * 
	 * @param customer
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/registerCustomer")
	public ModelAndView registerCustomer(CustomerModel customer,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		if (customer != null) {
			CustomerModel customerModel = customerService.getCustomer(customer);
			if (customerModel == null) {
				int resultTotal = 0;// 操作返回的记录条数
				resultTotal = customerService.addCustomer(customer);
				JSONObject result = new JSONObject();
				if (resultTotal > 0) {
					result.put("success", true);
					modelAndView.setViewName("outnet/login");
				} else {
					result.put("success", false);
					modelAndView.setViewName("outnet/reg");
				}
				modelAndView.addObject(request);
			}
		}
		
		return modelAndView;
	}

	/**
	 * 删除用户
	 * 
	 * @param ids
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(@RequestParam(value = "seqs") String seqs,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] seqsStr = seqs.split(",");
		List<Integer> list = new ArrayList<Integer>();
		for (String seq : seqsStr) {
			list.add(Integer.parseInt(seq));
		}
		customerService.deleteCustomer(list);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(response, result);
		return null;
	}
	
	@InitBinder("customerModel")
	public void bindCustomerModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("customerModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}
}
