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

import ksxs.Expertguidance;
import service.ExpertguidanceService;
import service.gfileService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class ExpertguidanceController {
	@Autowired
	private ExpertguidanceService expertguidanceService;
	@Autowired
	private ExpertguidanceService eg;
	@ResponseBody
	@RequestMapping("/expertguidance/add")
	public void basicAdd(Expertguidance expertguidance){
		System.out.println(expertguidance);
		expertguidanceService.expertguidanceAdd(expertguidance);
	}
	@ResponseBody
	@RequestMapping("/expertguidance/search")
	public PageResponse managerUserInfo(int page, int limit){
		return expertguidanceService.expertguidanceSearch(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/expertguidance/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=eg.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/expertguidance/down")
	public ResponseEntity<byte[]> download(String photoSave,HttpServletRequest request) throws IOException {
		photoSave = java.net.URLDecoder.decode(photoSave,"UTF-8");  
		photoSave = request.getSession().getServletContext().getRealPath("/")+photoSave;
		System.out.println(photoSave);
		File file = new File(photoSave);
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
	@RequestMapping("/expertguidance/del")
	public void delexpertguidance(int id){
		expertguidanceService.delexpertguidance(id);
	}
	@ResponseBody
	@RequestMapping("/expertguidance/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return expertguidanceService.getexpertguidanceLike(page, limit,searchName.trim());
	}
}
