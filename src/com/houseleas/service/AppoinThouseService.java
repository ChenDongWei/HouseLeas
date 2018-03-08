package com.houseleas.service;

import java.util.List;

import com.houseleas.entity.AppoinThouseModel;
import com.houseleas.entity.EmployeeModel;

/**
 * 指定租房service接口
 * @author Administrator
 * @date 2018年1月26日
 */
public interface AppoinThouseService {
	/**
	 * 查询指定租房信息列表数据
	 * @param appoinThouse
	 * @param start
	 * @param size
	 * @return
	 */
	public List<AppoinThouseModel> getAppoinThouseList(AppoinThouseModel appoinThouse, int start, int size);
	
	/**
	 * 获取指定租房信息数据总数
	 * @param appoinThouse
	 * @param start
	 * @param size
	 * @return
	 */
	public Long getTotal(AppoinThouseModel appoinThouse, int start, int size);
	
	/**
	 * 添加指定租房信息
	 * @param appoinThouse
	 * @return
	 */
	public int addAppoinThouse(AppoinThouseModel appoinThouse);
	
	/**
	 * 修改指定租房信息信息
	 * @param appoinThouse
	 * @return
	 */
	public int updateAppoinThouse(AppoinThouseModel appoinThouse);
	
	/**
	 * 删除指定租房信息
	 * @param id
	 * @return
	 */
	public int deleteAppoinThouse(List<Integer> seq);
}
