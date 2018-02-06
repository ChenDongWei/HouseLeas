package com.houseleas.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.CustomerDao;
import com.houseleas.entity.CustomerModel;
import com.houseleas.service.CustomerService;

/**
 * CustomerService实现类
 * @author Administrator
 * @date 2018年1月27日
 */
@Service("CustomerService")
@Transactional
public class ICustomerServiceImpl implements CustomerService {
	@Resource
	private CustomerDao customerDao;

	@Override
	public CustomerModel login(CustomerModel customerModel) {
		return customerDao.login(customerModel);
	}

	@Override
	public List<CustomerModel> getCustomerList(String mobilePhone, int start, int size) {
		return customerDao.getCustomerList(mobilePhone, start, size);
	}

	@Override
	public Long getTotal(String mobilePhone, int start, int size) {
		return customerDao.getTotal(mobilePhone, start, size);
	}

	@Override
	public int addCustomer(CustomerModel customer) {
		return customerDao.addCustomer(customer);
	}

	@Override
	public int updateCustomer(CustomerModel customer) {
		return customerDao.updateCustomer(customer);
	}

	@Override
	public int deleteCustomer(List<Integer> seqs) {
		return customerDao.deleteCustomer(seqs);
	}
}
