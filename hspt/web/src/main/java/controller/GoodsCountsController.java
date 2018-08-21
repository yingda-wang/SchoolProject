package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import goods.GoodCountSend;
import goods.GoodCounts;
import service.GoodCountService;
import service.UserListService;
import user.Nation;
import user.Party;
import user.Technical;
import user.ZPosition;


@Controller 
public class GoodsCountsController {

	@Autowired
	private UserListService userListService ;
	@Autowired
    private GoodCountService goodCountService;
	
	
	@RequestMapping("/goodsCounts")
	public ModelAndView goodsCounts(){	
		List<ZPosition> zu = userListService.getZu();
		System.out.println(zu.get(3).getId());
		ModelAndView mav = new ModelAndView();		
		mav.addObject("zu",zu);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/goods/goodsCounts")
	public List<GoodCounts> goodCounts(int zId,String date){
		GoodCountSend goodCountSend = new GoodCountSend();
		System.out.println(zId+"@@@@"+date);
		goodCountSend.setDate(date);
		goodCountSend.setzId(zId);
		List<GoodCounts> data = goodCountService.goodCount(goodCountSend);
		return data;	
		
		
	}
	
}
