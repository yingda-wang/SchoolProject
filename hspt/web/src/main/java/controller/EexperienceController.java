package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Eexperience;
import service.eexperienceService;
import util.ImageResponse;
import util.PageResponse;
@Controller
public class EexperienceController {
	@Autowired
	private eexperienceService p;
	
	@ResponseBody
	@RequestMapping("/eexperience/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=p.upload(file);
		return imageResponse;
	}
	
	@ResponseBody
	@RequestMapping("/eexperience/add")
	public void eexperienceADD(Eexperience eexperience){
		
		
		p.eexperienceADD(eexperience); 
	}
	
	@ResponseBody
	@RequestMapping("/eexperience/Info")
	    public PageResponse cardInfo(int page, int limit){
		return p.geteexperienceInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/eexperience/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.geteexperienceInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/eexperience/del")
	public void deleexperienceInfo(int id){
		p.deleexperienceInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/eexperience/update")
	public void updateeexperience(Eexperience eexperience){
		System.out.println(eexperience);

		p.updateeexperience(eexperience);
	}
	  
}