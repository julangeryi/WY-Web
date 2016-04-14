package com.tgwy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfController {

	@RequestMapping("infAutoRelease")
	public String infAutoRelease() {
		return "jsp/inf/infAutoRelease";
	}
	
	@RequestMapping("infArtificialRelease")
	public String infArtificialRelease(){
		return "jsp/inf/infArtificialRelease";
	}
	
	@RequestMapping("infJournal")
	public String infJournal(){
		return "jsp/inf/infJournal";
	}
	
}
