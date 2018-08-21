package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pojo.Fwork;
import pojo.Information;
import service.fworkService;
import user.UserInfo;
import util.PageResponse;
@Controller
public class FworkController {
	@Autowired
	private fworkService p;
	
	@ResponseBody
	@RequestMapping("/fwork/add")
	public void fworkADD(Fwork fwork){
		//System.out.println(fwork);
		
		p.fworkADD(fwork); 
	}
	
	@ResponseBody
	@RequestMapping("/fwork/Info")
	    public PageResponse cardInfo(int page, int limit,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int id = role.getId();	
		return p.getfworkInfo(page, limit,id);		 		
		
	}
	
	@ResponseBody
	@RequestMapping("/fwork/InfoS")
	    public PageResponse cardInfoS(int page, int limit){
	
		return p.getfworkInfo(page, limit);		 		
		
	}
	@ResponseBody
	@RequestMapping("/fwork/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.getfworkInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/fwork/del")
	public void delfworkInfo(int id){
		p.delfworkInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/fwork/update")
	public void updatefwork(Fwork fwork){
		//System.out.println(fwork);

		p.updatefwork(fwork);
	}
	  
}