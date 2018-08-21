package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.WzInfoService;
import user.UserInfo;
import pojo.Wznotes;

import util.PageResponse;

import wz.WzInfo;
import wz.WzType;

@Controller
public class WzInfoController {
	@Autowired
	private WzInfoService wzInfoService;
	
	@ResponseBody
	@RequestMapping("/wzApply")
	public ModelAndView wzApply(){
		List<WzType> Type = wzInfoService.getWzTypeType();
		List<WzType> wzType = wzInfoService.getType();		
		ModelAndView mav= new ModelAndView();
		mav.addObject("wzType",wzType);
		mav.addObject("Type",Type);
		mav.setViewName("wzApply");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/managerWzType")
	public ModelAndView managerWzType(){
		List<WzType> Type = wzInfoService.getWzTypeType();		
		ModelAndView mav= new ModelAndView();
		mav.addObject("Type",Type);
		mav.setViewName("managerWzType");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/addWz")
	public ModelAndView getWzType(){
		List<WzType> Type = wzInfoService.getWzTypeType();		
		ModelAndView mav= new ModelAndView();
		mav.addObject("Type",Type);
		mav.setViewName("addWz");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/wzApply/getwz")
	public List<WzType> getWz(int tId){
	
		return  wzInfoService.getWz(tId);
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/applyAddInfo")
	public void wzInfoAddInfo(WzInfo wzInfo,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		wzInfo.setzId(role.getzId());
		wzInfoService.setWzApply(wzInfo);
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/info")
	public PageResponse wzApplyInfo(int page, int limit){
		return wzInfoService.getWzApply(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/getType")
	public List<WzInfo> getType(HttpServletRequest request){
		int dId;
		String t = request.getParameter("dId")+"";
		if("".equals(t)){
			t="0";
			 dId =Integer.parseInt(t) ;
		}else{
			 dId =Integer.parseInt(t) ;
		}
		List<WzInfo>list = wzInfoService.getPosition(dId);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/updateSelect")
	public List[] updateSelect(){
		List<WzType>wzInfo = wzInfoService.getType();
		List[] l=new List[1];
		l[0]=wzInfo;
	
		return l ;
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/updateDate")
	public void updateDate(WzInfo wzInfo,HttpServletRequest request){
		//System.out.println(jobTrain.getpId());
		//System.out.println(jobTrain.getNation());
		wzInfoService.updateWzInfo(wzInfo);
 	}
	
	@RequestMapping("/wzInfo/del")
	public void delWzInfo(int id){
		wzInfoService.delWzInfo(id);
	}
	
	@RequestMapping("/wzInfo/updateIfYes")
	public void updateIfYes(String ifYes,int id){
		wzInfoService.updateIfYes(ifYes, id);
 	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/setIfYes")
	public void wzInfoAddInfo(int id){
		wzInfoService.setIfYes(id);
				
	}
	

	@ResponseBody
	@RequestMapping("/wzInfo/apply/search")
	public PageResponse wzInfoApplySearch(int page, int limit) {
		return wzInfoService.getWzApply(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/wzNotesInfo")
	public PageResponse wzNotesInfo(int page, int limit){
		return wzInfoService.getWzNotes(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return wzInfoService.getWzInfoLike(page, limit,searchName);
	}
	@ResponseBody
	@RequestMapping("/wzInfo/addWz")
	public void addWz(WzType wzType){		
		wzInfoService.addWz(wzType);;
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/addWzType")
	public void addWzType(String  type){		
		wzInfoService.addWzType(type);;
	}
	
	@ResponseBody
	@RequestMapping("/wzInfo/getWz")
	public PageResponse getWzType(int page, int limit){		
		return wzInfoService.getWzType(page, limit);
	}
	@ResponseBody
	@RequestMapping("/wzInfo/getWzTypeSN")
	public PageResponse getWzTypeSN(int page, int limit,String searchName){
		return wzInfoService.getWzTypeLike(page, limit,searchName);
	}
	@ResponseBody
	@RequestMapping("/wzInfo/upDateWzType")
	public void upDateWzType(WzType wzType){
		 wzType.setDel("≤ªø…”√");
		 wzInfoService.upDateWzInfo(wzType);
	}
}
