package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Rdoctor;
import service.RdoctorService;
import util.PageResponse;

@Controller
public class RdoctorController {
	@Autowired
	private RdoctorService rdoctorService;
	@ResponseBody
	@RequestMapping("/rdoctor/add")
	public void rdoctorAdd(Rdoctor rdoctor){
		System.out.println(rdoctor);
		rdoctorService.rdoctorAdd(rdoctor);
	}
	@ResponseBody
	@RequestMapping("/rdoctor/search")
	public PageResponse managerUserInfo(int page, int limit){
		return rdoctorService.rdoctorSearch(page, limit);
	}
	@RequestMapping("/rdoctor/del")
	public void delrdoctor(String phone){
		rdoctorService.delrdoctor(phone);
	}
	@ResponseBody
	@RequestMapping("/rdoctor/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return rdoctorService.getrdoctorLike(page, limit,searchName);
	}
}
