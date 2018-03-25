package com.houseleas.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.houseleas.dao.HouseDao;
import com.houseleas.entity.HouseModel;
import com.houseleas.service.HouseService;
import com.houseleas.service.HouseService;

/**
 * HouseService实现类
 * @author Administrator
 * @date 2018年3月20日
 */
@Service("HouseService")
@Transactional
public class IHouseServiceImpl implements HouseService {
	@Resource
	private HouseDao houseDao;

	@Override
	public List<HouseModel> getHouseList(HouseModel houseModel, int start, int size) {
		return houseDao.getHouseList(houseModel, start, size);
	}

	@Override
	public Long getTotal(HouseModel houseModel, int start, int size) {
		return houseDao.getTotal(houseModel, start, size);
	}

	@Override
	public int addHouse(HouseModel house) {
		return houseDao.addHouse(house);
	}

	@Override
	public int updateHouse(HouseModel house) {
		return houseDao.updateHouse(house);
	}

	@Override
	public int deleteHouse(List<Integer> seqs) {
		return houseDao.deleteHouse(seqs);
	}

	@Override
	public HouseModel getHouseDetail(HouseModel houseModel, int start, int size) {
		return houseDao.getHouseDetail(houseModel);
	}
}
