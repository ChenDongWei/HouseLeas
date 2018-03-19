package com.houseleas.service;

import java.util.List;

import com.houseleas.entity.HouseModel;

/**
 * 出租房屋service接口
 * @author Administrator
 * @date 2018年3月20日
 */
public interface HouseService {
	
	/**
	 * 查询出租房屋列表数据
	 * @param map
	 * @return
	 */
	public List<HouseModel> getHouseList(HouseModel houseModel, int start, int size);
	
	/**
	 * 获取出租房屋数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(HouseModel houseModel, int start, int size);
	
	/**
	 * 添加出租房屋
	 * @param houseModel
	 * @return
	 */
	public int addHouse(HouseModel houseModel);
	
	/**
	 * 修改出租房屋信息
	 * @param houseModel
	 * @return
	 */
	public int updateHouse(HouseModel houseModel);
	
	/**
	 * 删除出租房屋
	 * @param id
	 * @return
	 */
	public int deleteHouse(List<Integer> seq);
}
