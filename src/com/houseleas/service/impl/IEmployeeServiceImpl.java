package com.houseleas.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.EmployeeDao;
import com.houseleas.entity.EmployeeModel;
import com.houseleas.service.EmployeeService;

/**
 * userService实现类
 * @author dongwei
 * @date 2017年11月16日
 */
@Service("UserService")
@Transactional
public class IEmployeeServiceImpl implements EmployeeService {
	@Resource
	private EmployeeDao userDao;

	@Override
	public EmployeeModel login(EmployeeModel employeeModel) {
		return userDao.login(employeeModel);
	}

	@Override
	public List<EmployeeModel> getUserList(String userName, String roleType, int start, int size) {
		return userDao.getUserList(userName, roleType, start, size);
	}

	@Override
	public Long getTotal(String userName, String roleType, int start, int size) {
		return userDao.getTotal(userName, roleType, start, size);
	}

	@Override
	public int addUser(EmployeeModel user) {
		return userDao.addUser(user);
	}

	@Override
	public int updateUser(EmployeeModel user) {
		return userDao.updateUser(user);
	}

	@Override
	public int deleteUser(List<Integer> id) {
		return userDao.deleteUser(id);
	}
}
