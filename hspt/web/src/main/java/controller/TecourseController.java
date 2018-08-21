package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Tecourse;
import service.tecourseService;
import util.PageResponse;
@Controller
public class TecourseController {
	@Autowired
	private tecourseService p;
	
	@ResponseBody
	@RequestMapping("/tecourse/add")
	public void tecourseADD(Tecourse tecourse){
		//System.out.println(tecourse);
		
		p.tecourseADD(tecourse); 
	}
	
	@ResponseBody
	@RequestMapping("/tecourse/Info")
	    public PageResponse cardInfo(int page, int limit){
		return p.gettecourseInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/tecourse/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.gettecourseInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/tecourse/del")
	public void deltecourseInfo(int id){
		p.deltecourseInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/tecourse/update")
	public void updatetecourse(Tecourse tecourse){
		//System.out.println(tecourse);

		p.updatetecourse(tecourse);
	}
	  
}