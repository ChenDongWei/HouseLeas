package com.houseleas.service;

import java.util.List;
import java.util.Map;

import com.houseleas.entity.DataDicModel;

/**
 * 数据字典Service接口
 * @author Administrator
 *
 */
public interface DataDicService {

	/**
	 * 查询数据字典集合
	 * @param map
	 * @return
	 */
	public List<DataDicModel> find(DataDicModel dataDicModel, int start, int size);
	
	/**
	 * 查询所有的数据字典名称集合
	 * @return
	 */
	public List<DataDicModel> findAll();
	
	/**
	 * 获取总记录数
	 * @param map
	 * @return
	 */
	public Long getTotal(DataDicModel dataDicModel, int start, int size);
	
	/**
	 * 修改数据字典
	 * @param dataDic
	 * @return
	 */
	public int update(DataDicModel dataDic);
	
	/**
	 * 添加数据字典
	 * @param dataDic
	 * @return
	 */
	public int add(DataDicModel dataDic);
	
	/**
	 * 删除数据字典
	 * @param id
	 * @return
	 */
	public int delete(Integer id);
}
