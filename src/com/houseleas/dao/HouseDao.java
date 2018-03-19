package com.houseleas.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.EmployeeModel;
import com.houseleas.entity.HouseModel;

/**
 * 出租房屋dao接口
 * @author Administrator
 * @date 2018年3月19日
 */
public interface HouseDao {
	/**
	 * 查询出租房屋列表数据
	 * @param houseModel
	 * @param start
	 * @param size
	 * @return
	 */
	public List<HouseModel> getHouseList(@Param("house")HouseModel house, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 获取出租房屋数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(@Param("house")HouseModel house, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 添加出租房屋
	 * @param employee
	 * @return
	 */
	public int addHouse(@Param("house")HouseModel house);
	
	/**
	 * 修改出租房屋信息
	 * @param employee
	 * @return
	 */
	public int updateHouse(@Param("house")HouseModel house);
	
	/**
	 * 删除出租房屋
	 * @param id
	 * @return
	 */
	public int deleteHouse(@Param("seqs")List<Integer> seqs);
}
