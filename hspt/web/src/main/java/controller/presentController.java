package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Information;
import service.presentService;
import user.UserInfo;
import util.PageResponse;

@Controller
public class presentController {
@Autowired	
private presentService presentservice;
@ResponseBody
@RequestMapping("/user/selectTecourse")
public PageResponse selectTecourse(int page,int limit ,HttpServletRequest req) {
UserInfo user= (UserInfo)req.getSession().getAttribute("user");
int id = user.getId();

	// TODO Auto-generated method stub
	return presentservice.selectTecourse(page,limit,id);
}
@ResponseBody
@RequestMapping("/user/selectGfile")
public PageResponse selectGfile(int page,int limit,HttpServletRequest req) {
	UserInfo user= (UserInfo)req.getSession().getAttribute("user");
	int id = user.getId();

	return presentservice.selectGfile(page,limit,id);
}
@ResponseBody
@RequestMapping("/user/selectFwork")
public PageResponse selectFwork(int page,int limit,HttpServletRequest req) {
	UserInfo user= (UserInfo)req.getSession().getAttribute("user");
	int id = user.getId();

	return presentservice.selectFwork(page,limit,id);
}
@ResponseBody
@RequestMapping("/user/selectEexperience")
public PageResponse selectEexperience(int page,int limit,HttpServletRequest req) {
	UserInfo user= (UserInfo)req.getSession().getAttribute("user");
	int id = user.getId();

	return presentservice.selectEexperience(page,limit,id);
}
@ResponseBody
@RequestMapping("/user/selectAward")
public PageResponse selectAward(int page,int limit,HttpServletRequest req) {
	// TODO Auto-generated method stub
	UserInfo user= (UserInfo)req.getSession().getAttribute("user");
	int id = user.getId();

	return presentservice.selectAward(page,limit,id);
}
@ResponseBody
@RequestMapping("/user/selectWexperience")
public PageResponse selectWexperience(int page,int limit,HttpServletRequest req) {
	// TODO Auto-generated method stub
	UserInfo user= (UserInfo)req.getSession().getAttribute("user");
	int id = user.getId();

	return presentservice.selectWexperience(page,limit,id);
}
}
