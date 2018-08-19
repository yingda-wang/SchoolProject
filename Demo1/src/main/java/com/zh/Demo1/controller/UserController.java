package com.zh.Demo1.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zh.Demo1.pojo.User;
import com.zh.Demo1.pojo.UserInfo;
import com.zh.Demo1.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
    HttpServletResponse httpServletResponse;
	@Autowired
	HttpSession httpSession;
	
	@RequestMapping(value="/log")
	public String log() {
        return "index";
	}
	@RequestMapping(value="/updata")
	@ResponseBody
	public String updata(UserInfo userInfo) {
		
        return "index";
	}
	
	@RequestMapping(value="/userInfo")
	@ResponseBody
	public ModelAndView login(User user) {
		ModelAndView mav = new ModelAndView();
	 UserInfo userInfo = userService.UserLogin(user);	 
	 if(userInfo==null) {	
		 mav.setViewName("404");
	     return mav;
	 }	
	 mav.addObject("userInfo", userInfo);
	 mav.setViewName("userInfo");
		return mav;		
	}
	
}
