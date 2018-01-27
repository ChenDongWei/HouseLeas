package com.houseleas.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.houseleas.entity.EmployeeModel;

/**
 * 用户dao接口
 * @author dongwei
 * @date 2017年11月16日
 */
public interface EmployeeDao {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public EmployeeModel login(@Param("employeeModel")EmployeeModel employeeModel);
	
	/**
	 * 查询用户列表数据
	 * @param map
	 * @return
	 */
	public List<EmployeeModel> getUserList(@Param("userName")String userName, @Param("roleType")String roleType, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 获取用户数据总数
	 * @param map
	 * @return
	 */
	public Long getTotal(@Param("userName")String userName, @Param("roleType")String roleType, @Param("start")int start, @Param("size")int size);
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	public int addUser(@Param("user")EmployeeModel user);
	
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	public int updateUser(@Param("user")EmployeeModel user);
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int deleteUser(@Param("ids")List<Integer> ids);
}
