package com.houseleas.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.DataDicModel;

/**
 * 数据字典Dao接口
 * @author Administrator
 *
 */
public interface DataDicDao {

	
	/**
	 * 查询数据字典集合
	 * @param map
	 * @return
	 */
	public List<DataDicModel> find(@Param("dataDic")DataDicModel dataDic, @Param("start")int start, @Param("size")int size);
	
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
	public Long getTotal(@Param("dataDic")DataDicModel dataDic, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 修改数据字典
	 * @param dataDic
	 * @return
	 */
	public int update(@Param("dataDic")DataDicModel dataDic);
	
	/**
	 * 添加数据字典
	 * @param dataDic
	 * @return
	 */
	public int add(@Param("dataDic")DataDicModel dataDic);
	
	/**
	 * 删除数据字典
	 * @param id
	 * @return
	 */
	public int delete(@Param("seqs")Integer seqs);
	
}
