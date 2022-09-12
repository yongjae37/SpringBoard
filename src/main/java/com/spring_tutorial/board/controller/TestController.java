package com.spring_tutorial.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("index")
	public String main() throws Exception{
		return "/index";
	}
	
	@RequestMapping("csstest")
	public String main1() throws Exception{
		return "/csstest";
	}
	
	@RequestMapping("main")
	public String main2() throws Exception{
		return "/main";
	}
	

}

