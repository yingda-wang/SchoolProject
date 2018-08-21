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

import ksxs.Meetingspoken;
import service.ExpertguidanceService;
import service.MeetingspokenService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class MeetingspokenController {
	@Autowired
	private MeetingspokenService meetingspokenService;
	@Autowired
	private ExpertguidanceService ms;
	@ResponseBody
	@RequestMapping("/meetingspoken/add")
	public void basicAdd(Meetingspoken meetingspoken){
		System.out.println(meetingspoken);
		meetingspokenService.meetingspokenAdd(meetingspoken);
	}
	@ResponseBody
	@RequestMapping("/meetingspoken/search")
	public PageResponse managerUserInfo(int page, int limit){
		return meetingspokenService.meetingspokenSearch(page, limit);
	}
	@ResponseBody
	@RequestMapping("/meetingspoken/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=ms.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/meetingspoken/down")
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
	@RequestMapping("/meetingspoken/del")
	public void delmeeting(int id){
		
		meetingspokenService.delmeetingspoken(id);
	}
	@ResponseBody
	@RequestMapping("/meetingspoken/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return meetingspokenService.getmeetingspokenLike(page, limit,searchName.trim());
	}
}
