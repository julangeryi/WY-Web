package com.tgwy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RepController {

	@RequestMapping("repDataStatistics")
	public String repDataStatistics() {
		return "jsp/rep/repDataStatistics";
	}
	
	@RequestMapping("repUpLoad")
	public String repUpLoad(){
		return "jsp/rep/repUpLoad";
	}
	
	@RequestMapping("repQuery")
	public String repQuery(){
		return "jsp/rep/repQuery";
	}
	
}
