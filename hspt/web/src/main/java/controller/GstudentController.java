package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Gstudent;
import service.GstudentService;
import util.PageResponse;

@Controller
public class GstudentController {
	@Autowired
	private GstudentService gstudentService;
	@ResponseBody
	@RequestMapping("/gstudent/add")
	public void gstudentAdd(Gstudent gstudent){
		System.out.println(gstudent);
		gstudentService.gstudentAdd(gstudent);
	}
	@ResponseBody
	@RequestMapping("/gstudent/search")
	public PageResponse managerUserInfo(int page, int limit){
		return gstudentService.gstudentSearch(page, limit);
	}
	@RequestMapping("/gstudent/del")
	public void delgstudent(int id){
		gstudentService.delgstudent(id);
	}
	@ResponseBody
	@RequestMapping("/gstudent/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		System.out.print("@@@@@@@@@@@@@@@@@@@@@@@"+searchName);
		
		return gstudentService.getgstudentLike(page, limit,searchName);
	}
}

