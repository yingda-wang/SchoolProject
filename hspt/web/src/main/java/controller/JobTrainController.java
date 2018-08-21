package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.JobTrainService;
import job.JobTrain;
import user.UserInfo;
import user.ZPosition;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class JobTrainController {
	@Autowired
	private JobTrainService jobTrainService ;

	@ResponseBody
	@RequestMapping("/jobTrain/addInfo")
	public void jobTrainAddInfo(JobTrain jobtrain){
		jobTrainService.setJobTrain(jobtrain);
	}
	
	@ResponseBody
	@RequestMapping("/jobTrain/info")
	public PageResponse managerUserInfo(int page, int limit,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int zId = role.getzId();
		return jobTrainService.getJobTrainInfo(page, limit,zId);
	}

	@RequestMapping("/jobTrain/del")
	public void delJobTrainInfo(int id){
		jobTrainService.delJobTrainInfo(id);
	}
	
	@RequestMapping("/jobTrain")
	public ModelAndView jobTrain(){
		List<ZPosition> zu = jobTrainService.getZu();
		ModelAndView mav= new ModelAndView();
		mav.addObject("zu",zu);
		mav.setViewName("jobTrain");
		return mav;
	}
	
	
	
	@ResponseBody
	@RequestMapping("/jobTrain/updateDate")
	public void updateDate(JobTrain jobTrain,HttpServletRequest request){
		System.out.println(jobTrain.getpId());
		//System.out.println(jobTrain.getNation());
		jobTrainService.updateJobTrainInfo(jobTrain);
 	}

	@ResponseBody
	@RequestMapping("/jobTrain/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		System.out.print("@@@@@@@@@@@@@@@@@@@@@@@"+searchName);
		
		return jobTrainService.getJobTrainLike(page, limit,searchName);
	}
	
	@ResponseBody
	@RequestMapping("/card/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=jobTrainService.upload(file);
		return imageResponse;
	}

	
}