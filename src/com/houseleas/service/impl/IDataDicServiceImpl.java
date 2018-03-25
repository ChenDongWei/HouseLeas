package com.houseleas.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.DataDicDao;
import com.houseleas.entity.DataDicModel;
import com.houseleas.service.DataDicService;

/**
 * 数据字典Service实现类
 * @author Administrator
 *
 */
@Service("DataDicService")
@Transactional
public class IDataDicServiceImpl implements DataDicService{

	@Resource
	private DataDicDao dataDicDao;
	
	@Override
	public List<DataDicModel> find(DataDicModel dataDicModel, int start, int size) {
		return dataDicDao.find(dataDicModel, start, size);
	}

	@Override
	public List<DataDicModel> findAll() {
		return dataDicDao.findAll();
	}

	@Override
	public Long getTotal(DataDicModel dataDicModel, int start, int size) {
		return dataDicDao.getTotal(dataDicModel, start, size);
	}

	@Override
	public int update(DataDicModel dataDic) {
		return dataDicDao.update(dataDic);
	}

	@Override
	public int add(DataDicModel dataDic) {
		return dataDicDao.add(dataDic);
	}

	@Override
	public int delete(Integer id) {
		return dataDicDao.delete(id);
	}

}
