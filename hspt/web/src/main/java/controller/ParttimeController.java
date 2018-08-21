package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Information;
import pojo.Parttime;
import service.parttimeService;
import user.UserInfo;
import util.ImageResponse;
import util.PageResponse;
@Controller
public class ParttimeController {
	@Autowired
	private parttimeService p;
	
	@ResponseBody
	@RequestMapping("/parttime/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=p.upload(file);
		return imageResponse;
	}
	
	@ResponseBody
	@RequestMapping("/parttime/add")
	public void parttimeADD(Parttime parttime){
		System.out.println(parttime);
		
		p.parttimeADD(parttime); 
	}
	
	@ResponseBody
	@RequestMapping("/parttime/Info")
	    public PageResponse cardInfo(int page, int limit,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int id = role.getId();
		return p.getparttimeInfo(page, limit,id);
	}
	@ResponseBody
	@RequestMapping("/parttime/Search")
	    public PageResponse Search(int page, int limit){
		
		return p.getparttimeSearch(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/parttime/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String id){
			return p.getparttimeInfoLike(page, limit,id.trim());
	}
	@RequestMapping("/parttime/del")
	public void delparttimeInfo(int id){
		p.delparttimeInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/parttime/update")
	public void updateparttime(Parttime parttime){
		System.out.println(parttime);

		p.updateparttime(parttime);
	}
	  
}