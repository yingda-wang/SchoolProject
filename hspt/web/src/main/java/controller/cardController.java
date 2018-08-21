package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Information;
import pojo.card;
import service.cardService;
import user.UserInfo;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class cardController {
	@Autowired
	private cardService c;
	
	
	
	@ResponseBody
	@RequestMapping("/cardname/sel")
	public List cardNameSel(){
		return c.cardnameSel();
	}

	@ResponseBody
	@RequestMapping("/card/add")
		public void cardADD(card card){
		c.cardADD(card); 
	}
	
	@ResponseBody
	@RequestMapping("/card/Info")
	    public PageResponse cardInfo(int page, int limit,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int id = role.getId();
		return c.getcardInfo(page, limit,id);
	}
	  
	@ResponseBody
	@RequestMapping("/card/InfoSearch")
	    public PageResponse cardInfoSearch(int page, int limit){
		
		return c.getcardInfo(page, limit);
	}
	
	@RequestMapping("/card/del")
	public void delcardInfo(int id){
		//System.out.println("asdasd");
		c.delcardInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/card/update")
	public void cardupdate(card card){
		//System.out.println(card);

		c.updatecard(card);
	}
	
}