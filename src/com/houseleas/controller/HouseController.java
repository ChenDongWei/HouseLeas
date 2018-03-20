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

import com.houseleas.entity.HouseModel;
import com.houseleas.entity.PageModel;
import com.houseleas.service.HouseService;
import com.houseleas.util.ResponseUtil;

/**
 * 出租房屋Control层
 * @author Administrator
 * @date 2018年1月27日
 */
@Controller
@RequestMapping("/house")
public class HouseController {
	@Resource
	private HouseService houseService;

	@RequestMapping("/toHouse")
	public ModelAndView toHouse(HouseModel houseModel, HttpServletRequest request)throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		String category = request.getParameter("category");
		houseModel.setCategory(Long.valueOf(category));
		if ("1".equals(category)) {//平台房源
			modelAndView.setViewName("outnet/pro_pingtai");
			//获取平台最新发布的房屋信息
			List<HouseModel> houseList = houseService.getHouseList(houseModel, 0, 1000);
			//获取5个平台热门房源信息(也就是打广告)
			houseModel.setIsHot(1L);
			List<HouseModel> hotHouseList = houseService.getHouseList(houseModel, 0, 5);
			modelAndView.addObject("houseList", houseList);
			modelAndView.addObject("hotHouseList", hotHouseList);
		}else if ("2".equals(category)) {//个人房源
			modelAndView.setViewName("outnet/pro_geren");
			//获取个人最新发布的房屋信息
			List<HouseModel> houseList = houseService.getHouseList(houseModel, 0, 1000);
			//获取5个个人热门房源信息(也就是打广告)
			houseModel.setIsHot(1L);
			List<HouseModel> hotHouseList = houseService.getHouseList(houseModel, 0, 5);
			modelAndView.addObject("houseList", houseList);
			modelAndView.addObject("hotHouseList", hotHouseList);
		}
		return modelAndView;	
	}
	
	/**
	 * 查询出租房屋列表
	 * 
	 * @param page
	 * @param rows
	 * @param house
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getHouseList")
	@ResponseBody
	public Map<String, Object> getHouseList(
			@RequestParam(value = "page", required = true) String page,
			@RequestParam(value = "rows", required = true) String rows,
			HouseModel houseModel,
			HouseModel house, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PageModel pageModel = new PageModel(Integer.parseInt(page),
				Integer.parseInt(rows));
		int start = pageModel.getStart();
		int size = pageModel.getPageSize();
		List<HouseModel> houseList = houseService.getHouseList(houseModel, start, size);
		Long total = houseService.getTotal(houseModel, start, size);
		JSONObject result = new JSONObject();
		JSONArray jsonArray = JSONArray.fromObject(houseList);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response, result);
		return null;
	}

	/**
	 * 添加或修改出租房屋
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addOrUpdateHouse")
	public String addOrUpdateHouse(HouseModel house, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int resultTotal = 0;// 操作返回的记录条数
		if (house.getSeq() != null) {
			resultTotal = houseService.updateHouse(house);
		} else {
			resultTotal = houseService.addHouse(house);
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
	 * 删除出租房屋
	 * @param ids
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteHouse")
	public String deleteHouse(@RequestParam(value = "seqs") String seqs,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] seqsStr = seqs.split(",");
		List<Integer> list = new ArrayList<Integer>();
		for (String seq : seqsStr) {
			list.add(Integer.parseInt(seq));
		}
		houseService.deleteHouse(list);
		JSONObject result = new JSONObject();
		result.put("success", true);
		ResponseUtil.write(response, result);
		return null;
	}
	
	@InitBinder("houseModel")
	public void bindHouseModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("houseModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}
}
