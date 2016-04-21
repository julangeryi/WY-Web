package com.tgwy.dao;

import java.util.List;

import com.tgwy.entity.OutRainEntity;

public interface OutRainDao {
	
	public List<OutRainEntity> getRainInfo();
	
	public List<String> getRainCategory();
	
	public List<Integer> getRainLegendSensorID();
	
	public List<String> getRainLegend();
	
	public List<Double> getRainValue();
	
	public List<Double> getRainValueBySensorId(Integer sensorId);
	
	
	//History通过ID获取	
	public List<Double> getRainHistoryQueryValue(Integer sensorId,String from ,String to);
	
	//通过sensor_id 获取丢失测量点的测量时间
	public List<String> getRainCategoryBySensorId(Integer sensorId);
	
	//通过sensor_id 获取正常测量点的测量时间
	public List<String> getRainNormaleCategoryBySensorId(Integer sensorId);
	
	//通过ID和时间获取特定的值
	public Double getRainValueByidAndTime(Integer sensorId,String dateTime);
	
	//历史查询--获取丢失测量点的测量时间 通过from和to
	public List<String> getRainQueryCategoryBySensorId(Integer sensorId,String from,String to);
	
	//历史查询--获取正常测量点的测量时间，通过from和头
	public List<String> getRainQueryNormaleCategoryBySensorId(Integer sensorId,String from,String to);
	
	//重载
	public List<String> getRainCategoryOverLoad(String from ,String to);
	
	

}
