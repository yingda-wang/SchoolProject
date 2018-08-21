package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Authority;
import service.StuService;
import util.PageResponse;

@Controller
public class StuController {
	@Autowired
	private StuService stuService;
	@ResponseBody
	@RequestMapping("stu/add")
	public void  sutAdd(String kcm,String filename,HttpSession session){
		String []a=kcm.split("--");
		String kcbh=a[0];
		kcm=a[1];
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		stuService.stuAdd(kcm, kcbh, filename,jobNumber);		
	}
	@ResponseBody
	@RequestMapping("stu/search")
	public PageResponse stuSearch(int page,int limit,HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		return stuService.stuSearch(page, limit,jobNumber);
	}
	@ResponseBody
	@RequestMapping("stu/search1")
	public PageResponse stuSearch(int page,int limit,HttpSession session,String kcbh){
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		
		return stuService.stuSearch1(kcbh,page, limit,jobNumber);
	}
	@ResponseBody
	@RequestMapping("stu/search/js")
	public PageResponse stuSearch(String bh,int page,int limit,HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		return stuService.stuSearch(bh,page, limit,jobNumber);
	}
	@ResponseBody
	@RequestMapping("stu/search1/js")
	public PageResponse stuSearch(String xuehao,String kcbh,int page,int limit,HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		
		return stuService.stuSearch(xuehao,kcbh,page, limit,jobNumber);
	}
	@ResponseBody
	@RequestMapping("stu/jy")
	public String stuJy(String pyfa,String kcm , HttpSession session){
		String []a=kcm.split("--");
		String kcbh=a[0];
		kcm=a[1];
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		return stuService.stuJy(kcbh, kcm,jobNumber);
	}
	@ResponseBody
	@RequestMapping("stu/del")
	public void stuDel(long id){
		stuService.stuDel(id);
	}
	
	@ResponseBody
	@RequestMapping("stu/edit/name")
	public void stuEditName(long id,String name){
		stuService.stuEditName(id,name);
	}
	@ResponseBody
	@RequestMapping("stuadd/jy")
	public String stuAddJy(String room,String str,String id){
		return stuService.stuAddJy(room, str, id);
	}
	
}
