package com.houseleas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.houseleas.entity.DataDicModel;
import com.houseleas.entity.PageModel;
import com.houseleas.service.DataDicService;
import com.houseleas.util.ResponseUtil;
import com.houseleas.util.StringUtil;

/**
 * 数据字典Controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/dataDic")
public class DataDicController {
	
	@Resource
	private DataDicService dataDicService;
	
	
	/**
	 * 分页条件查询数据字典
	 * @param page
	 * @param rows
	 * @param dataDicModelModel
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getDataDicList")
	public String getDataDicList(@RequestParam(value="page",required=false)String page,@RequestParam(value="rows",required=false)String rows,DataDicModel dataDicModel,HttpServletResponse response)throws Exception{
		PageModel pageModel = new PageModel(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String,Object> map=new HashMap<String,Object>();
		dataDicModel.setDataDicValue(StringUtil.formatLike(dataDicModel.getDataDicValue()));
		int start = pageModel.getStart();
		int size = pageModel.getPageSize();
		List<DataDicModel> dataDicModelList=dataDicService.find(dataDicModel, start, size);
		Long total=dataDicService.getTotal(dataDicModel, start, size);
		JSONObject result=new JSONObject();
		JSONArray jsonArray=JSONArray.fromObject(dataDicModelList);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response, result);
		return null;
	}
	
	/**
	 * 根据数据字典名称查找，用户下拉框
	 * @param dataDicModelName
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/dataDicModelComboList")
	public String dataDicModelComboList(DataDicModel dataDicModel,HttpServletResponse response)throws Exception{
		JSONArray jsonArray=new JSONArray();
		Map<String,Object> map=new HashMap<String,Object>();
		List<DataDicModel> dataDicModelList=dataDicService.find(dataDicModel, 0, 10);
		JSONArray rows=JSONArray.fromObject(dataDicModelList);
		jsonArray.addAll(rows);
		ResponseUtil.write(response, jsonArray);
		return null;
	}
	
	/**
	 * 查询所有的数据字典名称
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findDataDicName")
	public String dataDicModelNameComboList(HttpServletResponse response)throws Exception{
		JSONArray jsonArray=new JSONArray();
		List<DataDicModel> dataDicModelList=dataDicService.findAll();
		JSONArray rows=JSONArray.fromObject(dataDicModelList);
		jsonArray.addAll(rows);
		ResponseUtil.write(response, jsonArray);
		return null;
	}
	
	/**
	 * 添加或者修改数据字典
	 * @param dataDicModel
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/save")
	public String save(DataDicModel dataDicModel,HttpServletResponse response)throws Exception{
		int resultTotal=0; // 操作的记录条数
		if(dataDicModel.getSeq()==null){
			resultTotal=dataDicService.add(dataDicModel);
		}else{
			resultTotal=dataDicService.update(dataDicModel);
		}
		JSONObject result=new JSONObject();
		if(resultTotal>0){
			result.put("success", true);
		}else{
			result.put("success", false);
		}
		ResponseUtil.write(response, result);
		return null;
	}
	
	/**
	 * 删除数据字典
	 * @param seqs
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	public String delete(@RequestParam(value="seqs")String seqs,HttpServletResponse response)throws Exception{
		String []seqsStr=seqs.split(",");
		for(int i=0;i<seqsStr.length;i++){
			dataDicService.delete(Integer.parseInt(seqsStr[i]));
		}
		JSONObject result=new JSONObject();
		result.put("success", true);
		ResponseUtil.write(response, result);
		return null;
	}
	
	@InitBinder("dataDicModel")
	public void bindDataDicModel(WebDataBinder webDataBinder) {
		webDataBinder.setFieldDefaultPrefix("dataDicModel."); // 参数前缀可以自定义，和页面传参方式一直即可
	}
}
