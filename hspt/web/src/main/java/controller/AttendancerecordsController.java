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

import ksxs.Attendancerecords;
import service.AttendancerecordsService;
import service.ExpertguidanceService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class AttendancerecordsController {
	@Autowired
	private AttendancerecordsService attendancerecordsService;
	@Autowired
	private ExpertguidanceService ar;
	@ResponseBody
	@RequestMapping("/attendancerecords/add")
	public void attendancerecordsAdd(Attendancerecords attendancerecords){
		System.out.println(attendancerecords);
		attendancerecordsService.attendancerecordsAdd(attendancerecords);
	}
	@ResponseBody
	@RequestMapping("/attendancerecords/search")
	public PageResponse managerUserInfo(int page, int limit){
		return attendancerecordsService.attendancerecordsSearch(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/attendancerecords/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=ar.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/attendancerecords/down")
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
	@RequestMapping("/attendancerecords/del")
	public void delattendancerecords(int id){
		attendancerecordsService.delattendancerecords(id);
	}
	@ResponseBody
	@RequestMapping("/attendancerecords/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return attendancerecordsService.getattendancerecordsLike(page, limit,searchName.trim());
	}
}
