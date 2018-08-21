package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Basic;
import service.BasicService;
import util.PageResponse;

@Controller
public class BasicController {
	@Autowired
	private BasicService basicService;
	
	@ResponseBody
	@RequestMapping("/basic/add")
	public void basicAdd(Basic basic){
		System.out.println(basic);
		basicService.basicAdd(basic);
	}
	
	@ResponseBody
	@RequestMapping("/basic/search1")
	public PageResponse managerUserInfo(int page, int limit){
		return basicService.basicSearch(page, limit);
	}
	@RequestMapping("/basic/del")
	public void delbasic(String phone){
		basicService.delbasic(phone);
	}
	@ResponseBody
	@RequestMapping("/basic/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return basicService.getbasicLike(page, limit,searchName.trim());
	}
}
