package com.houseleas.service;

import java.util.List;

import com.houseleas.entity.EmployeeModel;

/**
 * 用户service接口
 * @author Administrator
 * @date 2018年1月26日
 */
public interface EmployeeService {
	/**
	 * 用户登录
	 * @param employeeModel
	 * @return
	 */
	public EmployeeModel login(EmployeeModel employeeModel);
	
	/**
	 * 查询用户列表数据
	 * @param map
	 * @return
	 */
	public List<EmployeeModel> getEmployeeList(String userCode, int start, int size);
	
	/**
	 * 获取用户数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(String userCode, int start, int size);
	
	/**
	 * 添加用户
	 * @param employee
	 * @return
	 */
	public int addEmployee(EmployeeModel employee);
	
	/**
	 * 修改用户信息
	 * @param employee
	 * @return
	 */
	public int updateEmployee(EmployeeModel employee);
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int deleteEmployee(List<Integer> seq);
}
