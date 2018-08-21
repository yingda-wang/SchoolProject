package controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Authority;
import service.AuthorityService;
import util.PageResponse;

@Controller
public class AuthorityController {
	@Autowired
	private AuthorityService autService;
	
	@ResponseBody
	@RequestMapping("authority/add")
	public void authorityAdd(Authority authority){
		autService.authorityAdd(authority);
	}
	@ResponseBody
	@RequestMapping("jy")
	public String authorityJy(String jobnumber){
		if(autService.authoritySelByJobNumber(jobnumber).size()>0){
			return "1";
		}
	return "0";
	}
	@ResponseBody
	@RequestMapping("authority/search")
	public PageResponse getAuthorityList(int page, int limit){
		return autService.authoritySearch(page, limit);
	}
	@ResponseBody
	@RequestMapping("authority/del")
	public void authorityDel(int id){
		autService.authorityDel(id);
	}
	@ResponseBody
	@RequestMapping("authority/qxedit")
	public void authorityEditQx(Authority authority){
		autService.authorityQx(authority);
	}
	@ResponseBody
	@RequestMapping("Authority/update")
	public void authorityUpdate(Authority authority){
		autService.authorityUpdate(authority);
	}
	
}
	
