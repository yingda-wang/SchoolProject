package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Wexperience;
import service.wexperienceService;
import util.PageResponse;
@Controller
public class WexperienceController {
	@Autowired
	private wexperienceService p;
	
	@ResponseBody
	@RequestMapping("/wexperience/add")
	public void wexperienceADD(Wexperience wexperience){
		//System.out.println(wexperience);
		
		p.wexperienceADD(wexperience); 
	}
	
	@ResponseBody
	@RequestMapping("/wexperience/Info")
	    public PageResponse cardInfo(int page, int limit){
		return p.getwexperienceInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/wexperience/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.getwexperienceInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/wexperience/del")
	public void delwexperienceInfo(int id){
		p.delwexperienceInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/wexperience/update")
	public void updatewexperience(Wexperience wexperience){
		//System.out.println(wexperience);

		p.updatewexperience(wexperience);
	}
	  
}