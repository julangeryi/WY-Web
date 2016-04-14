package com.tgwy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MonController {
	
	@RequestMapping("monEquipmentDistribution")
	public String monEquipmentDistribution(){
		return "jsp/mon/monEquipmentDistribution";
	}
	
	@RequestMapping("monEquipmentState")
	public String monEquipmentState(){
		return "jsp/mon/monEquipmentState";
	}
	
	@RequestMapping("monEquipmentParameter")
	public String monEquipmentParameter(){
		return "jsp/mon/monEquipmentParameter";
	}
	
	@RequestMapping("monRealTimeData")
	public String monRealTimeData(){
		return "jsp/mon/monRealTimeData";
	}
	
	@RequestMapping("monHistoryQuery")
	public String monHistoryQuery(){
		return "jsp/mon/monHistoryQuery";
	}
	
	@RequestMapping("monDownload")
	public String monDownload(){
		return "jsp/mon/monDownload";
	}

}
