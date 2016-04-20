package com.tgwy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgwy.dao.OutWaterLevleDao;
import com.tgwy.service.OutWaterLevelService;

@Service("outWaterLevelService")
public class OutWaterLevelServiceImpl implements OutWaterLevelService{

	@Autowired
	private OutWaterLevleDao outWaterLevleDao;
	
	public List<String> getOutWaterLevelLegend() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelLegend();
	}

	public List<Integer> getOutWaterLevelLegendSensorID() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelLegendSensorID();
	}

	public List<Double> getOutWaterLevelValue() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelValue();
	}

	public List<Double> getOutWaterLevelValueBySensorId(int sensorId) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelValueBySensorId(sensorId);
	}

	public List<String> getOutWaterLevelCategory() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelCategory();
	}

	public List<Double> getOutWaterLevelHistoryQueryValue(Integer sensorId, String from, String to) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelHistoryQueryValue(sensorId, from, to);
	}

	//获取此测量点丢失时间点集合
	public List<String> getOutWaterLevleCategoryBySensorId(Integer sensorId) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevleCategoryBySensorId(sensorId);
	}

	//获取此测量点正常时间点集合
	public List<String> getOutWaterNormaleCategoryBySensorId(Integer sensorId) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterNormaleCategoryBySensorId(sensorId);
	}

	//通过ID和时间获取特定的值
	public Double getOutWaterValueByidAndTime(Integer sensorId, String dateTime) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterValueByidAndTime(sensorId, dateTime);
	}

}
