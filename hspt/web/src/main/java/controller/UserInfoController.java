package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pojo.Information;
import service.UserListService;
import user.Nation;
import user.Party;
import user.Technical;
import user.UserInfo;
import user.UserQx;
import user.ZPosition;
import util.PageResponse;



@Controller
public class UserInfoController {

	
	@Autowired
	private UserListService userListService ;

	
	@RequestMapping("/addInfo")
	public ModelAndView addInfo(){
		List<Nation>list = userListService.getNation();
		List<Party>party = userListService.getParty();
		List<Technical>technical = userListService.getTechnical();
		List<ZPosition> zu = userListService.getZu();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("party", party);
		mav.addObject("technical", technical);	
		mav.addObject("zu",zu);
		return mav;
	}
	@ResponseBody
	@RequestMapping("/user/updateSelect")
	public List[] updateSelect(){
		List<Nation>list = userListService.getNation();
		List<Party>party = userListService.getParty();
		List<Technical>technical = userListService.getTechnical();
		List<ZPosition> zu = userListService.getZu();
		List[] l=new List[4];
		l[0]=list;
		l[1]=party;
		l[2]=technical;
		l[3]=zu;
	
		return l ;
	}
	@ResponseBody
	@RequestMapping("/user/addInfo")
	public void userAddInfo(UserInfo userInfo){		
		String pas = DigestUtils.md5DigestAsHex(userInfo.getPassword().getBytes());
		userInfo.setPassword(pas);
		userListService.setUserInfo(userInfo);
	}
	
	@ResponseBody
	@RequestMapping("/user/info")
	public PageResponse managerUserInfo(int page, int limit){
		return userListService.getUserInfo(page, limit);
	}
	@ResponseBody
	@RequestMapping("/user/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
			return userListService.getUserInfoLike(page, limit,searchName.trim());
	}
	@ResponseBody
	@RequestMapping("/presentPerson")
	public ModelAndView infoLook(HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int id = role.getId();
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", userListService.getPersonInfo(id));
		return mav;
}
	@ResponseBody
	@RequestMapping("/user/getGw")
	public List<ZPosition> getGw(HttpServletRequest request){
		int zId;
		String z = request.getParameter("zId")+"";
	
		if("".equals(z)){
			z="0";
			 zId =Integer.parseInt(z) ;
		}else{
			 zId =Integer.parseInt(z) ;
		}
		List<ZPosition>list = userListService.getPosition(zId);
		return list;
	}
	@RequestMapping("/user/del")
	public void delUserInfo(int id){
		userListService.delUserInfo(id);
	}
	@RequestMapping("/user/updateQx")
	public void updateQz(String qx,int id){
		userListService.updateQx(qx, id);
 	}
	@ResponseBody
	@RequestMapping("/user/updateDate")
	public void updateDate(UserInfo userInfo){
	
		userListService.updateUserInfo(userInfo);
 	}
	
	@ResponseBody
	@RequestMapping("/user/infoDate")
	public PageResponse InfoDate(int page, int limit){
	   return userListService.getUserInfo(page, limit);
 	}
	
	@ResponseBody
	@RequestMapping("/user/infoDateLike")
	public PageResponse infoDateLike(int page, int limit,String searchName){
	   return userListService.getUserInfoLike(page, limit,searchName);
 	}
	@ResponseBody
	@RequestMapping("/user/updatePersonInfo")
	public void updatePersonInfo(UserInfo userInfo){
	  
		userListService.updatePersonInfo(userInfo);;
 	}
}
