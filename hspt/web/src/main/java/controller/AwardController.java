package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Award;
import pojo.Information;
import service.awardService;
import user.UserInfo;
import util.PageResponse;
@Controller
public class AwardController {
	@Autowired
	private awardService p;
	
	@ResponseBody
	@RequestMapping("/award/add")
	public void awardADD(Award award){
		//System.out.println(award);
		
		p.awardADD(award); 
	}
	
	@ResponseBody
	@RequestMapping("/award/InfoS")
	    public PageResponse cardInfoS(int page, int limit ){
		
		return p.getawardInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/award/Info")
	    public PageResponse cardInfo(int page, int limit , HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int id = role.getId();	
		return p.getawardInfo(page, limit,id);
	}
	
	@ResponseBody
	@RequestMapping("/award/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.getawardInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/award/del")
	public void delawardInfo(int id){
		p.delawardInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/award/update")
	public void updateaward(Award award){
		//System.out.println(award);

		p.updateaward(award);
	}
	  
}