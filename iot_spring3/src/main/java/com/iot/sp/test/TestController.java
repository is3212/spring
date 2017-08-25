package com.iot.sp.test;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/test")   // test. jsp로
public class TestController {

	@RequestMapping("/list")
	public String list(HttpServletRequest request, ModelMap map){
		return "test/list";        //test.jsp 리턴
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, ModelMap map){
		return "test/write";        //test.jsp 리턴
	}
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, ModelMap map){
		return "test/modify";        //test.jsp 리턴
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, ModelMap map){
		return "test/delete";        //test.jsp 리턴
	}
	
}
