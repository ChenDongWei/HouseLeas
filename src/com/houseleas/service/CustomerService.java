package com.houseleas.service;

import java.util.List;

import com.houseleas.entity.CustomerModel;

/**
 * 客户service接口
 * @author Administrator
 * @date 2018年1月26日
 */
public interface CustomerService {
	/**
	 * 客户登录
	 * @param customerModel
	 * @return
	 */
	public CustomerModel login(CustomerModel customerModel);
	
	/**
	 * 查询客户列表数据
	 * @param map
	 * @return
	 */
	public List<CustomerModel> getCustomerList(String mobilePhone, int start, int size);
	
	/**
	 * 获取客户数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(String mobilePhone, int start, int size);
	
	/**
	 * 添加客户
	 * @param customer
	 * @return
	 */
	public int addCustomer(CustomerModel customer);
	
	/**
	 * 修改客户信息
	 * @param customer
	 * @return
	 */
	public int updateCustomer(CustomerModel customer);
	
	/**
	 * 删除客户
	 * @param id
	 * @return
	 */
	public int deleteCustomer(List<Integer> seq);
}
