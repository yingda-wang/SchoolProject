package controller;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import user.Nation;
import user.Party;
import user.Technical;
import user.ZPosition;
import user.ZPosition1;
import user.position;
import user.zu;
import util.PageResponse;
import service.UserListService;
import service.ZPositionService;
@Controller
public class ZPositionController {
	@Autowired
	private UserListService userlistService;
	@Autowired
	private ZPositionService zpositionservice;
	
	@ResponseBody
	@RequestMapping("/ZPosition/getZPosition")		
	public PageResponse managerUserInfo(int page, int limit){
		return zpositionservice.getZPosition(page, limit);}
	
	
	@RequestMapping("/ZPosition/addZPosition")
	public void addZPosition(ZPosition1 zposition){
		zpositionservice.addZPosition(zposition);
		
	}
	//新增
	@RequestMapping("/ZPosition/data")
	public List[] updatePosition(){
		List<zu>zu = zpositionservice.getZu();
		List<position>position = zpositionservice.getPosition();
		/*List<Technical>technical = zpositionservice.getTechnical();
		List<ZPosition> zu = zpositionservice.getZu();*/
		List[] l=new List[2];
		l[0]=zu;
		l[1]=position;
        
	
		return l ;
	}
	@ResponseBody
	@RequestMapping("/ZPositon/getGw")
	public List<ZPosition1> getGw(HttpServletRequest request){
		int zId;
		String z = request.getParameter("zId")+"";
		if("".equals(z)){
			z="0";
			 zId =Integer.parseInt(z) ;
		}else{
			 zId =Integer.parseInt(z) ;
		}
		List<ZPosition1>list = zpositionservice.getPosition1(zId);
		return list;
	}
	@RequestMapping("/addZu")
	public ModelAndView addZu(){
		List<zu>list = zpositionservice.getZu();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject(list);
		mav.addObject("list", list);

		return mav;
	}
	@RequestMapping("/addPosition")
	public ModelAndView addPosition(){
		List<zu>list = zpositionservice.getZu();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", list);

		return mav;
	}

	@RequestMapping("ZPosition/addPosition1")
	public ModelAndView addZu1(position position ){
		
		ModelAndView mod = new ModelAndView();
		
		zpositionservice.addPosition1(position);
		
		mod.setViewName("addPosition");
		return mod;
	}
	

	
	@RequestMapping("ZPosition/addZu1")
	public ModelAndView addZu1(zu zu){
		
		ModelAndView mod = new ModelAndView();
		
		zpositionservice.addZu1(zu);
		
		mod.setViewName("addZu");
		return mod;
	}
	@RequestMapping("ZPosition/del")
	public void del(int id){
		zpositionservice.del( id);
	}
	@ResponseBody
	@RequestMapping("/ZPosition/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		
		
		return zpositionservice.getZPositionLike(page, limit,searchName.trim());
	}
	@ResponseBody
	@RequestMapping("/ZPosition/getZu")
	public int getZu(HttpServletRequest request) throws Exception{
		String zName1=request.getParameter("zName");
		
		String zName = new String(zName1.getBytes("ISO-8859-1"),"utf-8");
	
		int f=0;
		List<zu>zu = zpositionservice.getZu();		
	
			for(int i=0;i<zu.size();i++){
				
				if(zu.get(i).getzName().equals(zName)){
				
					f++;
				} 
			}
			
			return f;
	}
	@ResponseBody
	@RequestMapping("/ZPosition/getPosition1")
	public int getPosition1(HttpServletRequest request){
		int f=0;
		int zId=Integer.parseInt(request.getParameter("zId"));
		
		
		String position = request.getParameter("position").trim();
	
		List<ZPosition1> list = zpositionservice.getPosition2();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getzId()==zId){
			if(list.get(i).getPosition().equals(position)){
				f++;}
			}
		}
		
		return f;
	}
	@ResponseBody
	@RequestMapping("/zu")		
	public ModelAndView getZu(){
		ModelAndView mod = new ModelAndView();
		List<zu> zu = zpositionservice.getZu();
		mod.addObject("list", zu);
		mod.setViewName("zu");
		return mod;
		}
	
	@ResponseBody
	@RequestMapping("ZPosition/del1")	
	public void del1(int id){
		
		zpositionservice.del1(id);
	}
	
}

