package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Testudent;
import service.testudentService;
import util.PageResponse;
@Controller
public class TestudentController {
	@Autowired
	private testudentService p;
	
	@ResponseBody
	@RequestMapping("/testudent/add")
	public void testudentADD(Testudent testudent){
		//System.out.println(testudent);
		
		p.testudentADD(testudent); 
	}
	
	@ResponseBody
	@RequestMapping("/testudent/Info")
	    public PageResponse cardInfo(int page, int limit){
		return p.gettestudentInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/testudent/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.gettestudentInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/testudent/del")
	public void deltestudentInfo(int id){
		p.deltestudentInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/testudent/update")
	public void updatetestudent(Testudent testudent){
		//System.out.println(testudent);

		p.updatetestudent(testudent);
	}
	  
}