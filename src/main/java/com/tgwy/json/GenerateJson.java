package com.tgwy.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.tgwy.service.OutRainService;
import com.tgwy.service.OutWaterLevelService;

@Controller
public class GenerateJson {

	@Autowired
	public OutRainService outRainService;
	@Autowired	
	public OutWaterLevelService outWaterLevelService;

	/*
	 * 处理“雨量 -实时数据”
	 * */
	@ResponseBody
	@RequestMapping(value = "getOutRainInfo", produces = "text/html;charset=UTF-8")
	public String getOutRainInfo() {
		
		int outRainLegendSize = 0;
		List<Integer> outRainLegendSensorId = outRainService.getRainLegendSensorID();
		outRainLegendSize = outRainLegendSensorId.size();

		List<String> outRainCategories = outRainService.getRainCategory();
		List<Object[]> outRainValue = new ArrayList<Object[]>();
		
		for (int i = 0; i < outRainLegendSize; i++) {
			
			List<Double> tempValues = new ArrayList<Double>();
			Integer sensorId = outRainLegendSensorId.get(i);
			
			//丢失的测量点的时间和值
			List<Map<String,Double>> tempMapForLostValueList = new ArrayList<Map<String,Double>>();
			
			//正常测量点的时间和值
			List<Map<String,Double>> mapForNormalValueList = new ArrayList<Map<String,Double>>();
			
			//获取丢失测量点测量时间的集合
			List<String> idCategory = outRainService.getRainCategoryBySensorId(sensorId);
			
			//获取正常测量点测量时间的集合
			List<String> idNormalCategory = outRainService.getRainNormaleCategoryBySensorId(sensorId);
			
			
			for(int j=0;j<idCategory.size();j++){
				Map<String,Double> tempMapForLostValue = new HashMap<String, Double>();
				tempMapForLostValue.put(idCategory.get(j),(double)-1);
				tempMapForLostValueList.add(tempMapForLostValue);
			}
			for(int j=0;j<idNormalCategory.size();j++){
				Map<String,Double> mapForNormalValue = new HashMap<String, Double>();
				Double normalValue = outRainService.getRainValueByidAndTime(sensorId, idNormalCategory.get(j));
				mapForNormalValue.put(idNormalCategory.get(j),normalValue);
				mapForNormalValueList.add(mapForNormalValue);
			}
			//两个list
			//丢失的测量点的时间和值 tempMapForLostValueList
			//正常测量点的时间和值    mapForNormalValueList
			
			List<Map<String,Double>> value = new ArrayList<Map<String,Double>>();
			value.addAll(tempMapForLostValueList);
			value.addAll(mapForNormalValueList);
			
			for(int j=0;j<outRainCategories.size();j++){
				String key = outRainCategories.get(j);
				Double valueDouble = this.getDoubleValue(value, key);
				if(valueDouble!=(double)-2){
					tempValues.add(this.getDoubleValue(value,key));
				}
			}
			//获取测量点的值集
			outRainValue.add(tempValues.toArray());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categories", outRainCategories);
		map.put("values", outRainValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	/*
	 * 处理“雨量 -历史数据”
	 * */
	@ResponseBody
	@RequestMapping(value = "getOutRainQueryInfo", produces = "text/html;charset=UTF-8")
	public String getOutRainQueryInfo(){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String from = (String) session.getAttribute("from");
		String to = (String) session.getAttribute("to");
		
		int outRainLegendSize = 0;
		List<Integer> outRainLegendSensorId = outRainService.getRainLegendSensorID();
		outRainLegendSize = outRainLegendSensorId.size();

		List<String> outRainLegend = outRainService.getRainLegend();

		List<String> outRainCategories = outRainService.getRainCategory();
		
		
		
		List<Object[]> outRainValue = new ArrayList<Object[]>();

		for (int i = 0; i < outRainLegendSize; i++) {
			Integer sensorId = outRainLegendSensorId.get(i);
			if("exchageErr".equals(from)||null==from||"".equals(from)){
				outRainValue.add(outRainService.getRainValueBySensorId(sensorId).toArray());
			}else{
				outRainValue.add(outRainService.getRainHistoryQueryValue(sensorId, from, to).toArray());
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend", outRainLegend);
		map.put("categories", outRainCategories);
		map.put("values", outRainValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	
	/*
	 * 
	 * 处理“地下水位-实时数据”	
	 * */
	
	@ResponseBody
	@RequestMapping(value = "getOutWaterLevelInfo", produces = "text/html;charset=UTF-8")
	public String getOutWaterLevelInfo(){
		
		int outWaterLevelLegendSize = 0;
		List<Integer> outWaterLevelLegendSensorId = outWaterLevelService.getOutWaterLevelLegendSensorID();
		outWaterLevelLegendSize = outWaterLevelLegendSensorId.size();
		
		List<String> outWaterLevelCategories = outWaterLevelService.getOutWaterLevelCategory();
		List<Object[]> outWaterLevelValue = new ArrayList<Object[]>();
		
		
		for (int i = 0; i < outWaterLevelLegendSize; i++) {
			List<Double> tempValues = new ArrayList<Double>();
			Integer sensorId = outWaterLevelLegendSensorId.get(i);
			
			//丢失的测量点的时间和值
			List<Map<String,Double>> tempMapForLostValueList = new ArrayList<Map<String,Double>>();
			
			//正常测量点的时间和值
			List<Map<String,Double>> mapForNormalValueList = new ArrayList<Map<String,Double>>();
			
			//获取丢失测量点测量时间的集合
			List<String> idCategory = outWaterLevelService.getOutWaterLevleCategoryBySensorId(sensorId);
			
			//获取正常测量点测量时间的集合
			List<String> idNormalCategory = outWaterLevelService.getOutWaterNormaleCategoryBySensorId(sensorId);
			
			
			for(int j=0;j<idCategory.size();j++){
				Map<String,Double> tempMapForLostValue = new HashMap<String, Double>();
				tempMapForLostValue.put(idCategory.get(j),(double)-1);
				tempMapForLostValueList.add(tempMapForLostValue);
			}
			for(int j=0;j<idNormalCategory.size();j++){
				Map<String,Double> mapForNormalValue = new HashMap<String, Double>();
				Double normalValue = outWaterLevelService.getOutWaterValueByidAndTime(sensorId, idNormalCategory.get(j));
				mapForNormalValue.put(idNormalCategory.get(j),normalValue);
				mapForNormalValueList.add(mapForNormalValue);
			}
			//两个list
			//丢失的测量点的时间和值 tempMapForLostValueList
			//正常测量点的时间和值    mapForNormalValueList
			
			List<Map<String,Double>> value = new ArrayList<Map<String,Double>>();
			value.addAll(tempMapForLostValueList);
			value.addAll(mapForNormalValueList);
			
			for(int j=0;j<outWaterLevelCategories.size();j++){
				String key = outWaterLevelCategories.get(j);
				Double valueDouble = this.getDoubleValue(value, key);
				if(valueDouble!=(double)-2){
					tempValues.add(this.getDoubleValue(value,key));
				}
			}
			//获取测量点的值集
			outWaterLevelValue.add(tempValues.toArray());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categories", outWaterLevelCategories);
		map.put("values", outWaterLevelValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "getOutWaterLevelQueryInfo", produces = "text/html;charset=UTF-8")
	public String getOutWaterLevelQueryInfo(){
		
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String from = (String) session.getAttribute("from2");
		String to = (String) session.getAttribute("to2");
		
		int outWaterLevelQuerySize = 0;
		List<Integer> outWaterLevelQueryLegendSensorId = outWaterLevelService.getOutWaterLevelLegendSensorID();
		outWaterLevelQuerySize = outWaterLevelQueryLegendSensorId.size();

		List<String> outWaterLevelQueryLegend = outWaterLevelService.getOutWaterLevelLegend();

		List<String> outWaterLevelQueryCategories = outWaterLevelService.getOutWaterLevelCategory();

		List<Object[]> outWaterLevelQueryValue = new ArrayList<Object[]>();

		
		for (int i = 0; i < outWaterLevelQuerySize; i++) {
			Integer sensorId = outWaterLevelQueryLegendSensorId.get(i);
			if("exchageErr".equals(from)||null==from||"".equals(from)){
				outWaterLevelQueryValue.add(outWaterLevelService.getOutWaterLevelValueBySensorId(sensorId).toArray());
			}else{
				outWaterLevelQueryValue.add(outWaterLevelService.getOutWaterLevelHistoryQueryValue(sensorId, from+" 00:01", to+" 23:59").toArray());
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend2", outWaterLevelQueryLegend);
		map.put("categories2", outWaterLevelQueryCategories);
		map.put("values2", outWaterLevelQueryValue);
		String json = JSON.toJSONString(map);
		return json;
		
	}
	
	private Double getDoubleValue(List<Map<String,Double>> value ,String key){
		Double result = new Double(-2);
		for(int i=0;i<value.size();i++){
			if(value.get(i).containsKey(key)){
				result = value.get(i).get(key);
				break;
			}
		}
		return result;
		
	}

}
