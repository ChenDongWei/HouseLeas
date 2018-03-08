package com.houseleas.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.AppoinThouseModel;
import com.houseleas.entity.EmployeeModel;

/**
 * 指定租房dao接口
 * @author Administrator
 * @date 2018年1月28日
 */
public interface AppoinThouseDao {
	/**
	 * 查询指定租房信息列表数据
	 * @param appoinThouse
	 * @param start
	 * @param size
	 * @return
	 */
	public List<AppoinThouseModel> getAppoinThouseList(@Param("appoinThouse")AppoinThouseModel appoinThouse, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 获取指定租房信息数据总数
	 * @param appoinThouse
	 * @param start
	 * @param size
	 * @return
	 */
	public Long getTotal(@Param("appoinThouse")AppoinThouseModel appoinThouse, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 添加指定租房信息
	 * @param appoinThouse
	 * @return
	 */
	public int addAppoinThouse(@Param("appoinThouse")AppoinThouseModel appoinThouse);
	
	/**
	 * 修改指定租房信息信息
	 * @param appoinThouse
	 * @return
	 */
	public int updateAppoinThouse(@Param("appoinThouse")AppoinThouseModel appoinThouse);
	
	/**
	 * 删除指定租房信息
	 * @param seqs
	 * @return
	 */
	public int deleteAppoinThouse(@Param("seqs")List<Integer> seqs);
}
