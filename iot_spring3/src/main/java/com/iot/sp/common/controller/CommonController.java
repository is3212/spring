package com.iot.sp.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class CommonController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String Home(HttpSession hs){
		if(hs.getAttribute("user")==null){
			return "/user/login";
		}
		return "user/main";
	}
}
