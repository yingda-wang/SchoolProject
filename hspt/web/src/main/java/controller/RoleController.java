package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import pojo.Information;
import pojo.Role;
import service.UserService;
import user.UserInfo;
import util.CookieUtils;



@Controller
public class RoleController {
	@Autowired
	private UserService userService;
	@RequestMapping("/dl")
	public String loginSel(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
	
		String userID=request.getParameter("username").trim();
		String password=request.getParameter("password").trim();
		String md5Pass = DigestUtils.md5DigestAsHex(password.getBytes());
		UserInfo role=new UserInfo();
		role.setId(Integer.parseInt(userID));
		role.setPassword(md5Pass);
		
		List<UserInfo> list=userService.selUser(role);
		if(list.size()==0){
			model.addAttribute("info", "400");
			return "login";
		}else{
			//CookieUtils.setCookie(request, response, "username",username);
			model.addAttribute("info", "200");
			UserInfo user=list.get(0);
			//System.out.println(user);
			request.getSession().setAttribute("user",user);
			String qx=user.getRoleName();
			//List<Object> str=JSON.parseArray(qx);
			String[] str=qx.split(",");
			if(str.length==1){
				if(str[0].equals("组员"))
					response.sendRedirect("/web/index");
				else if(str[0].equals("组长"))
					response.sendRedirect("/web/indexZuZ");
				else if(str[0].equals("质控员"))
					response.sendRedirect("/web/indexZhiKY");
				else if(str[0].equals("设备质控员"))
					response.sendRedirect("/web/indexSheBZKY");
				else if(str[0].equals("物资质控员"))	
					response.sendRedirect("/web/indexWuZZKY");
				else if(str[0].equals("档案质控员"))
					response.sendRedirect("/web/indexDangAZKY");
				else{
					response.sendRedirect("/web/indexAdmin");
				}
			}else{
				model.addAttribute("info", "200");
				model.addAttribute("qx", str);
				return "roleSel";
			}
			
		}
		
		
		return null;
	}
	@RequestMapping("/zhuxiao")
	@ResponseBody
	public String userZx(HttpSession session,Model model) throws Exception{
		session.invalidate();
		model.addAttribute("info", "777");
		return "finish";
	}
}
