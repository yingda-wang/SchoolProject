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

import pojo.Authority;
import pojo.Rl;
import service.RlService;
import service.UserService;


@Controller
public class RoleController {
	@Autowired
	private UserService userService;
	@Autowired
	private RlService rlService;
	@RequestMapping("/dl")
	public String loginSel(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
	
		String userID=request.getParameter("jobnumber").trim();
		String password=request.getParameter("password").trim();
		
		/*String md5Pass = DigestUtils.md5DigestAsHex(password.getBytes());*/
		Authority role=new Authority();
		role.setJobnumber(userID);
		role.setPassword(password);
		
		List<Authority> list=userService.selectUser(role);
		List<Rl> rl = rlService.selectRl("已应用");
		if(list.size()==0){
			model.addAttribute("info", "400");
			return "login";
		}else{
			model.addAttribute("info", "200");
			Authority user=list.get(0);
            String xn = rl.get(0).getXn().toString();
            String xq = "第" +rl.get(0).getXq().toString()+"学期";
            String nf=xn+"-"+rl.get(0).getXq().toString();
			request.getSession().setAttribute("user",user);
			request.getSession().setAttribute("xn",xn);
			request.getSession().setAttribute("xq",xq);
			request.getSession().setAttribute("nf",nf);
			String qx=user.getAuthority();
			String[] str=qx.split(",");
			if(str.length==1){
				if(str[0].equals("教师"))
					response.sendRedirect("/web/tIndex");
				else if(str[0].equals("负责人"))
					response.sendRedirect("/web/fIndex");
				else{
					response.sendRedirect("/web/mindex");
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
