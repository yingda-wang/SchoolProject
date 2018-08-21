package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.Response;

import pojo.Authority;
import service.AuthorityService;
import service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	
	
	@RequestMapping("/addUser")
	public String addUser(Authority authority) throws IOException{
		
		userService.addUser(authority);
		return "login";
	}
	@ResponseBody
	@RequestMapping("/seeUser")
	public List<Authority> seeUser(HttpSession session){			
		Authority role =  (Authority) session.getAttribute("user");
		String jobNumber = role.getJobnumber();
		return userService.seeUser(jobNumber);
	}
	

}
