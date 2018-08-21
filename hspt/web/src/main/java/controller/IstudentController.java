package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Istudent;
import service.IstudentService;
import util.PageResponse;

@Controller
public class IstudentController {
	@Autowired
	private IstudentService istudentService;
	@ResponseBody
	@RequestMapping("/istudent/add")
	public void istudentAdd(Istudent istudent){
		System.out.println(istudent);
		istudentService.istudentAdd(istudent);
	}
	@ResponseBody
	@RequestMapping("/istudent/search")
	public PageResponse managerUserInfo(int page, int limit){
		return istudentService.istudentSearch(page, limit);
	}
	@RequestMapping("/istudent/del")
	public void delistudent(int id){
		istudentService.delistudent(id);
	}
	@ResponseBody
	@RequestMapping("/istudent/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return istudentService.getistudentLike(page, limit,searchName);
	}
}

