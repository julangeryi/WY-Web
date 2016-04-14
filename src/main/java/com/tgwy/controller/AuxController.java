package com.tgwy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuxController {

	
	@RequestMapping("auxDecisionInfo")
	public String auxDecisionInfo() {
		return "jsp/aux0/auxDecisionInfo";
	}
	
	@RequestMapping("auxReferenceResources")
	public String auxReferenceResources(){
		return "jsp/aux0/auxReferenceResources";
	}
	
	@RequestMapping("auxUpLoad")
	public String auxUpLoad(){
		return "jsp/aux0/auxUpLoad";
	}
	
}
