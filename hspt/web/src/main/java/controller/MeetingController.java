package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ksxs.Meeting;
import service.ExpertguidanceService;
import service.MeetingService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class MeetingController {
	@Autowired
	private MeetingService meetingService;
	@Autowired
	private ExpertguidanceService m;
	@ResponseBody
	@RequestMapping("/meeting/add")
	public void basicAdd(Meeting meeting){
		System.out.println(meeting);
		meetingService.meetingAdd(meeting);
	}
	@ResponseBody
	@RequestMapping("/meeting/search")
	public PageResponse managerUserInfo(int page, int limit){
		return meetingService.meetingSearch(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/meeting/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=m.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/meeting/down")
	public ResponseEntity<byte[]> download(String fileSave,HttpServletRequest request) throws IOException {
		fileSave = java.net.URLDecoder.decode(fileSave,"UTF-8");  
		fileSave = request.getSession().getServletContext().getRealPath("/")+fileSave;
		System.out.println(fileSave);
		File file = new File(fileSave);
	    byte[] body = null;
	    InputStream is = new FileInputStream(file);
	    body = new byte[is.available()];
	    is.read(body);
	    HttpHeaders headers = new HttpHeaders();
	    headers.add("Content-Disposition", "attchement;filename=" + file.getName());
	    HttpStatus statusCode = HttpStatus.OK;
	    ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(body, headers, statusCode);
	    return entity;
	}
	@RequestMapping("/meeting/del")
	public void delmeeting(int id){
		meetingService.delmeeting(id);
	}
	@ResponseBody
	@RequestMapping("/meeting/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return meetingService.getmeetingLike(page, limit,searchName.trim());
	}
}
