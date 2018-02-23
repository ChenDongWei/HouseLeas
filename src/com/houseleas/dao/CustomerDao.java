package com.houseleas.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.CustomerModel;

/**
 * 客户dao接口
 * @author Administrator
 * @date 2018年1月28日
 */
public interface CustomerDao {
	/**
	 * 客户登录
	 * @param customer
	 * @return
	 */
	public CustomerModel login(@Param("customerModel")CustomerModel customerModel);
	
	/**
	 * 查询客户列表数据
	 * @param map
	 * @return
	 */
	public List<CustomerModel> getCustomerList(@Param("mobilePhone")String mobilePhone, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 获取客户数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(@Param("mobilePhone")String mobilePhone, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 添加客户
	 * @param customer
	 * @return
	 */
	public int addCustomer(@Param("customer")CustomerModel customer);
	
	/**
	 * 修改客户信息
	 * @param customer
	 * @return
	 */
	public int updateCustomer(@Param("customer")CustomerModel customer);
	
	/**
	 * 删除客户
	 * @param id
	 * @return
	 */
	public int deleteCustomer(@Param("seqs")List<Integer> seqs);

	/**
	 * 根据条件查询客户信息
	 * @param customer
	 * @return
	 */
	public CustomerModel getCustomer(@Param("customer")CustomerModel customer);
}
