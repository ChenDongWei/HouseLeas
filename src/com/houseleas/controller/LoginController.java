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
import com.houseleas.entity.EmployeeModel;
import com.houseleas.service.CustomerService;
import com.houseleas.service.EmployeeService;
import com.houseleas.util.ResponseUtil;
import com.houseleas.util.StringUtil;

/**
 * 登录Control层
 * 
 * @author Administrator
 * @date 2018年1月24日
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private EmployeeService employeeService;
	
	@Resource
	private CustomerService customerService;

	/**
	 * 跳转到平台员工登录页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toManageLogin")
	public ModelAndView toManageLogin() throws Exception {
		ModelAndView modelAndView = new ModelAndView("manage/login/login");
		return modelAndView;
	}

	/**
	 * 平台员工登录方法
	 * 
	 * @param employeeModel
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/loginManage")
	public ModelAndView loginManage(EmployeeModel employeeModel,
			HttpServletRequest request) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		EmployeeModel resultEmployee = employeeService.login(employeeModel);
		if (resultEmployee == null) {
			modelAndView.setViewName("manage/login/login");
			modelAndView.addObject("employeeModel", employeeModel);
			modelAndView.addObject("errorMsg", "用户名或密码错误！");
		} else {
			modelAndView.setViewName("manage/main");
			modelAndView.addObject("resultEmployee", resultEmployee);
		}
		return modelAndView;
	}

	@RequestMapping("/loginCustomer")
	public ModelAndView loginCustomer(CustomerModel customerModel, HttpServletRequest request) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		CustomerModel resultCustomer = customerService.login(customerModel);
		if (resultCustomer == null) {
			modelAndView.setViewName("outnet/login");
			modelAndView.addObject("customerModel", customerModel);
			modelAndView.addObject("errorMsg", "用户名或密码错误！");
		}else {
			modelAndView.setViewName("outnet/index");
			modelAndView.addObject("customerModel", customerModel);
		}
		return modelAndView;
	}
	
	/**
	 * bindControlModel:(办件信息传参model). <br/>
	 * <b>Be careful：</b>InitBinder的value使用实体对象的驼峰命名法（也就是首字母小写）
	 * 
	 * @author Administrator
	 * @date 2018年1月27日上午9:48:38
	 * @param webDataBinder
	 */
	@InitBinder("employeeModel")
	public void bindEmployeeModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("employeeModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}

	@InitBinder("customerModel")
	public void bindCustomerModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("customerModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}
}
