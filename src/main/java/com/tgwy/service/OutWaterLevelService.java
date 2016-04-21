package com.tgwy.service;

import java.util.List;

public interface OutWaterLevelService {
	
	public List<String> getOutWaterLevelLegend ();
	
	public List<Integer> getOutWaterLevelLegendSensorID();
	
	public List<Double> getOutWaterLevelValue();
	
	public List<Double> getOutWaterLevelValueBySensorId(int sensorId);
	
	public List<String> getOutWaterLevelCategory();
	
	public List<Double> getOutWaterLevelHistoryQueryValue(Integer sensorId, String from ,String to);
	
	
	//获取此测量点丢失时间点集合
	public List<String> getOutWaterLevleCategoryBySensorId(Integer sensorId);
	//获取区间内[from,to]内测量点丢失时间点集合
	public List<String> getOutWaterLevleQueryCategoryBySensorId(Integer sensorId,String from ,String to);
	
	//获取此测量点正常时间点集合
	public List<String> getOutWaterNormaleCategoryBySensorId(Integer sensorId);
	//获取区间内[from,to]内测量点正常时间点集合
	public List<String> getOutWaterNormaleQueryCategoryBySensorId(Integer sensorId,String from,String to);
	
	//通过ID和时间获取特定的值
	public Double getOutWaterValueByidAndTime(Integer sensorId,String dateTime);
	
	//重载
	public List<String> getOutWaterLevelCategoryOverLoad(String from ,String to);

}
