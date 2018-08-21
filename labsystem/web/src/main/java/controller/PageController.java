package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Authority;

import org.springframework.ui.Model;
@Controller
public class PageController {
	@RequestMapping("/login")
	public String showLogin(Model model){
		model.addAttribute("info", "666");
		return "login";
	}
	@RequestMapping("/mindex")
	public String mindex(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();

	    if(qx.equals("����Ա")){
	    	return "mindex";
	    }
		return "";
	}
	@RequestMapping("/fIndex")
	public String fIndex(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();

	    if(qx.equals("������")){
	    	return "fIndex";
	    }
		return "";
	}
	@RequestMapping("/tIndex")
	public String tIndex(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();
	    if(qx.equals("��ʦ")){
	    	return "tIndex";
	    }
		return "";
	}
	@RequestMapping("/manageLab")
	public String manageLab(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();
	    if(qx.equals("����Ա")){
	    	return "manageLab";
	    }
		return "";
	}
	@RequestMapping("/manageLabCourse")
	public String manageLabCourse(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();
	    if(qx.equals("����Ա")){
	    	return "manageLabCourse";
	    }
		return "";
	}
	@RequestMapping("/tregisterSearch")
	public String tregisterSearch(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();
	    if(qx.equals("����Ա")){
	    	return "tregisterSearch";
	    }
		return "";
	}
	@RequestMapping("/outlineSearch")
	public String outlineSearch(HttpSession session){
		Authority role =  (Authority) session.getAttribute("user");
	    String qx =role.getAuthority();
	    if(qx.equals("����Ա")){
	    	return "outlineSearch";
	    }
		return "";
	}
	@RequestMapping("/{page}")
	public String showPage(@PathVariable String page){
		return page;
	}
}
