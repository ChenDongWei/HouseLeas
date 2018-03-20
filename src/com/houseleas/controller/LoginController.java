package com.houseleas.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.houseleas.entity.CustomerModel;
import com.houseleas.entity.EmployeeModel;
import com.houseleas.entity.HouseModel;
import com.houseleas.service.CustomerService;
import com.houseleas.service.EmployeeService;
import com.houseleas.service.HouseService;

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
	
	@Resource
	private HouseService houseService;

	/**
	 * 跳转到网站主页
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toIndex")
	public ModelAndView toIndex() throws Exception{
		ModelAndView modelAndView = new ModelAndView("outnet/index");
		HouseModel houseModel = new HouseModel();
		houseModel.setCategory(1L);//平台房源
		//获取平台最新发布的4个房屋信息
		List<HouseModel> ptHouseList = houseService.getHouseList(houseModel, 0, 4);
		
		houseModel.setCategory(2L);//个人房源
		//获取个人最新发布的4个房屋信息
		List<HouseModel> grHouseList = houseService.getHouseList(houseModel, 0, 4);
		modelAndView.addObject("ptHouseList", ptHouseList);
		modelAndView.addObject("grHouseList", grHouseList);
		return modelAndView;
	}
	
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

	/**
	 * 客户登录方法
	 * @param customerModel
	 * @param request
	 * @return
	 * @throws Exception
	 */
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
			//modelAndView.addObject("customerModel", resultCustomer);
			HttpSession session = request.getSession(true);
			session.setAttribute("resultCustomer", resultCustomer); 
		}
		return modelAndView;
	}
	
	/**
	 * 客户退出登录
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession();
		session.invalidate();
		String isManage = request.getParameter("manage");
		if ("1".equals(isManage)) {
			return "redirect:/jsp/manage/login/login.jsp";
		}else {
			return null;
		}
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
