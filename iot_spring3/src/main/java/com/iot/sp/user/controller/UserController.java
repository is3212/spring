package com.iot.sp.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot.sp.user.dto.UserInfo;
import com.iot.sp.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController { 

	@Autowired
	private UserService us; 
	
	@RequestMapping("/main")
	public String init(HttpServletRequest request, ModelMap model, HttpSession hs) {
		String id = (String)hs.getAttribute("ID");
		if(id!=null){
			model.addAttribute("userid", id);
			return "/user/main";
		}else{
			return "/user/login";
		} 
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody ModelMap loginTest(HttpServletRequest request, @RequestBody UserInfo pUser,ModelMap model,HttpSession hs) {
		UserInfo user = us.getUser(pUser);
		if(user==null){
			model.put("data", "F");
			model.put("url", "/user/login");
			model.put("msg", "Login Fail");
		}else{
			hs.setAttribute("ID", user.getUserId());
			model.put("data", "S");
			model.put("url", "/user/main");
			model.put("msg", "Login Success");
		}
		return model;
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insertTest(HttpServletRequest request, @RequestBody UserInfo pUser,ModelMap model,HttpSession hs) {
		UserInfo user = us.getUser(pUser);
		if(user==null){
			model.put("data", "F");
			model.put("url", "/user/login");
			model.put("msg", "Login Fail");
		}else{
			hs.setAttribute("ID", user.getUserId());
			model.put("data", "S");
			model.put("url", "/user/main");
			model.put("msg", "Login Success");
		}
		return model;
	}
}
