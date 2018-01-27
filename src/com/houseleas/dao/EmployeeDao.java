package com.houseleas.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.EmployeeModel;

/**
 * 用户dao接口
 * @author Administrator
 * @date 2018年1月28日
 */
public interface EmployeeDao {
	/**
	 * 用户登录
	 * @param employee
	 * @return
	 */
	public EmployeeModel login(@Param("employeeModel")EmployeeModel employeeModel);
	
	/**
	 * 查询用户列表数据
	 * @param map
	 * @return
	 */
	public List<EmployeeModel> getEmployeeList(@Param("userCode")String userCode, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 获取用户数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(@Param("userCode")String userCode, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 添加用户
	 * @param employee
	 * @return
	 */
	public int addEmployee(@Param("employee")EmployeeModel employee);
	
	/**
	 * 修改用户信息
	 * @param employee
	 * @return
	 */
	public int updateEmployee(@Param("employee")EmployeeModel employee);
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int deleteEmployee(@Param("seqs")List<Integer> seqs);
}
