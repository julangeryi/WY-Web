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
import com.tgwy.util.TgwyDateStringUtil;

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
			
			Integer sensorId = outRainLegendSensorId.get(i);
			List<Double> tempValues = new ArrayList<Double>();
			tempValues = this.getHandLostValues(1,sensorId,"","");
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
		
		int outRainLegendSize = 0;
		List<Integer> outRainLegendSensorId = outRainService.getRainLegendSensorID();
		outRainLegendSize = outRainLegendSensorId.size();
		
		List<String> fromTo = this.getFromDateAndToDate("from","to");
		
		String from = fromTo.get(0);
		String to = fromTo.get(1);
		
		List<String> outRainCategories = outRainService.getRainCategoryOverLoad(from, to);
		List<Object[]> outRainValue = new ArrayList<Object[]>();

		for (int i = 0; i < outRainLegendSize; i++) {
			Integer sensorId = outRainLegendSensorId.get(i);
			outRainValue.add(this.getHandLostValues(3, sensorId,from,to).toArray());
		}
		Map<String, Object> map = new HashMap<String, Object>();
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
			
			tempValues = this.getHandLostValues(2, sensorId,"","");
			//获取测量点的值集
			outWaterLevelValue.add(tempValues.toArray());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categories", outWaterLevelCategories);
		map.put("values", outWaterLevelValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	/*
	 * 
	 * 处理“地下水位-历史数据”
	 * */
	
	@ResponseBody
	@RequestMapping(value = "getOutWaterLevelQueryInfo", produces = "text/html;charset=UTF-8")
	public String getOutWaterLevelQueryInfo(){
		
		int outWaterLevelQuerySize = 0;
		List<Integer> outWaterLevelQueryLegendSensorId = outWaterLevelService.getOutWaterLevelLegendSensorID();
		outWaterLevelQuerySize = outWaterLevelQueryLegendSensorId.size();
		
		List<String> fromToDate = this.getFromDateAndToDate("from2","to2");
		
		String from = fromToDate.get(0);
		String to = fromToDate.get(1);
		
		List<String> outWaterLevelQueryCategories = outWaterLevelService.getOutWaterLevelCategoryOverLoad(from, to);
		
		List<Object[]> outWaterLevelQueryValue = new ArrayList<Object[]>();

		
		for (int i = 0; i < outWaterLevelQuerySize; i++) {
			Integer sensorId = outWaterLevelQueryLegendSensorId.get(i);
			outWaterLevelQueryValue.add(this.getHandLostValues(4, sensorId, from, to).toArray());
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categories2", outWaterLevelQueryCategories);
		map.put("values2", outWaterLevelQueryValue);
		String json = JSON.toJSONString(map);
		return json;
		
	}
	
	//私有处理:开始时间与结束时间(from to)
	private List<String> getFromDateAndToDate(String _from,String _to){
		List<String> fromToDate = new ArrayList<String>();
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String from = (String) session.getAttribute(_from);
		String to = (String) session.getAttribute(_to);
		
		if((null==from||"".equals(from))||(null==to||"".equals(to))){
			from = TgwyDateStringUtil.getCalcutelaterDate(-7);
			to = TgwyDateStringUtil.getOnlyDate();
		}
		
		fromToDate.add(from);
		fromToDate.add(to);
		return fromToDate;
	}
	
	
	//私有处理：values和category匹配
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
	
	
	//私有处理：处理丢失测量点信息
	private List<Double> getHandLostValues(int flag,Integer sensorId,String from ,String to){
		
		//丢失的测量点的时间和值
		List<Map<String,Double>> tempMapForLostValueList = new ArrayList<Map<String,Double>>();
		//正常测量点的时间和值
		List<Map<String,Double>> mapForNormalValueList = new ArrayList<Map<String,Double>>();
		//获取丢失测量点测量时间的集合
		List<String> idCategory = new ArrayList<String>();
		//获取正常测量点测量时间的集合
		List<String> idNormalCategory = new ArrayList<String>();
		
		if(1==flag){
			idCategory = outRainService.getRainCategoryBySensorId(sensorId);
			idNormalCategory = outRainService.getRainNormaleCategoryBySensorId(sensorId);
		}else if(2==flag){
			idCategory = outWaterLevelService.getOutWaterLevleCategoryBySensorId(sensorId);
			idNormalCategory = outWaterLevelService.getOutWaterNormaleCategoryBySensorId(sensorId);
		}else if(3==flag){
			idCategory = outRainService.getRainQueryCategoryBySensorId(sensorId,from,to);
			idNormalCategory = outRainService.getRainQueryNormaleCategoryBySensorId(sensorId,from,to);
		}else if(4==flag){
			idCategory = outWaterLevelService.getOutWaterLevleQueryCategoryBySensorId(sensorId, from, to);
			idNormalCategory = outWaterLevelService.getOutWaterNormaleQueryCategoryBySensorId(sensorId, from, to);
		}
		
		List<Map<String,Double>> value = new ArrayList<Map<String,Double>>();
		
		List<Double> tempValues = new ArrayList<Double>();
		
		for(int j=0;j<idCategory.size();j++){
			Map<String,Double> tempMapForLostValue = new HashMap<String, Double>();
			tempMapForLostValue.put(idCategory.get(j),(double)-1);
			tempMapForLostValueList.add(tempMapForLostValue);
		}
		
		for(int j=0;j<idNormalCategory.size();j++){
			Map<String,Double> mapForNormalValue = new HashMap<String, Double>();
			Double normalValue = new Double(0);
			if(1==flag||3==flag){
				 normalValue = outRainService.getRainValueByidAndTime(sensorId, idNormalCategory.get(j));
			}else if(2==flag||4==flag){
				 normalValue = outWaterLevelService.getOutWaterValueByidAndTime(sensorId, idNormalCategory.get(j));
			}
			mapForNormalValue.put(idNormalCategory.get(j),normalValue);
			mapForNormalValueList.add(mapForNormalValue);
		}
		value.addAll(tempMapForLostValueList);
		value.addAll(mapForNormalValueList);
		
		List<String> outCategories = new ArrayList<String>();
		if(1==flag){
			outCategories = outRainService.getRainCategory();
		}else if(2==flag){
			outCategories = outWaterLevelService.getOutWaterLevelCategory();
		}else if(3==flag){
			outCategories = outRainService.getRainCategoryOverLoad(from,to);
		}else if(4==flag){
			outCategories = outWaterLevelService.getOutWaterLevelCategoryOverLoad(from, to);
		}
		
		for(int j=0;j<outCategories.size();j++){
			String key = outCategories.get(j);
			Double valueDouble = this.getDoubleValue(value, key);
			if(valueDouble!=(double)-2){
				tempValues.add(this.getDoubleValue(value,key));
			}
		}
		return tempValues;
	}

}
