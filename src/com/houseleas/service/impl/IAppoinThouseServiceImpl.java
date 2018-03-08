package com.houseleas.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.AppoinThouseDao;
import com.houseleas.dao.EmployeeDao;
import com.houseleas.entity.AppoinThouseModel;
import com.houseleas.entity.EmployeeModel;
import com.houseleas.service.AppoinThouseService;
import com.houseleas.service.EmployeeService;

/**
 * AppoinThouseService实现类
 * @author Administrator
 * @date 2018年3月8日
 */
@Service("AppoinThouseService")
@Transactional
public class IAppoinThouseServiceImpl implements AppoinThouseService {
	@Resource
	private AppoinThouseDao appoinThouseDao;

	@Override
	public List<AppoinThouseModel> getAppoinThouseList(
			AppoinThouseModel appoinThouse, int start, int size) {
		return appoinThouseDao.getAppoinThouseList(appoinThouse, start, size);
	}

	@Override
	public Long getTotal(AppoinThouseModel appoinThouse, int start, int size) {
		return appoinThouseDao.getTotal(appoinThouse, start, size);
	}

	@Override
	public int addAppoinThouse(AppoinThouseModel appoinThouse) {
		return appoinThouseDao.addAppoinThouse(appoinThouse);
	}

	@Override
	public int updateAppoinThouse(AppoinThouseModel appoinThouse) {
		return appoinThouseDao.updateAppoinThouse(appoinThouse);
	}

	@Override
	public int deleteAppoinThouse(List<Integer> seqs) {
		return appoinThouseDao.deleteAppoinThouse(seqs);
	}
}
