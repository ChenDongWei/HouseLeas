package com.houseleas.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.EmployeeDao;
import com.houseleas.entity.EmployeeModel;
import com.houseleas.service.EmployeeService;

/**
 * EmployeeService实现类
 * @author Administrator
 * @date 2018年1月27日
 */
@Service("EmployeeService")
@Transactional
public class IEmployeeServiceImpl implements EmployeeService {
	@Resource
	private EmployeeDao employeeDao;

	@Override
	public EmployeeModel login(EmployeeModel employeeModel) {
		return employeeDao.login(employeeModel);
	}

	@Override
	public List<EmployeeModel> getEmployeeList(String userCode, int start, int size) {
		return employeeDao.getEmployeeList(userCode, start, size);
	}

	@Override
	public Long getTotal(String userCode, int start, int size) {
		return employeeDao.getTotal(userCode, start, size);
	}

	@Override
	public int addEmployee(EmployeeModel employee) {
		return employeeDao.addEmployee(employee);
	}

	@Override
	public int updateEmployee(EmployeeModel employee) {
		return employeeDao.updateEmployee(employee);
	}

	@Override
	public int deleteEmployee(List<Integer> seqs) {
		return employeeDao.deleteEmployee(seqs);
	}
}
