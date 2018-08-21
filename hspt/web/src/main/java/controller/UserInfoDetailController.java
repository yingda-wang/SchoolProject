package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.UserInfoDetailService;
import user.UserInfoDetail;
import util.PageResponse;
@Controller
public class UserInfoDetailController {
	@Autowired
	UserInfoDetailService userinfodetailservice;
	@ResponseBody
	@RequestMapping("/user/getInfoDetail")
	public  ModelAndView getPerson(/*int id*/){
		System.out.println("");
		ModelAndView mod = new ModelAndView();
		UserInfoDetail s = new UserInfoDetail();
		 s=userinfodetailservice.getUserInfoDetail(10004);
		 mod.addObject("userinfo",s);
		 System.out.println(s.getId());
		 mod.setViewName("presentPerson");
		 
		 return mod ;
	}
}
