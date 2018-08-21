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

import ksxs.Baseteach;
import service.BaseteachService;
import service.ExpertguidanceService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class BaseteachController {
	@Autowired
	private BaseteachService baseteachService;
	@Autowired
	private ExpertguidanceService bt;
	@ResponseBody
	@RequestMapping("/baseteach/add")
	public void baseteachAdd(Baseteach baseteach){
		System.out.println(baseteach);
		baseteachService.baseteachAdd(baseteach);
	}
	@ResponseBody
	@RequestMapping("/baseteach/search")
	public PageResponse managerUserInfo(int page, int limit){
		return baseteachService.baseteachSearch(page, limit);
	}
	@ResponseBody
	@RequestMapping("/baseteach/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=bt.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/baseteach/down")
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
	@RequestMapping("/baseteach/del")
	public void delbaseteach(int id){
		baseteachService.delbaseteach(id);
	}
	@ResponseBody
	@RequestMapping("/baseteach/searchName")
	public PageResponse managerSearchsearchName(int page, int limit,String searchName){
		return baseteachService.getbaseteachLike(page, limit,searchName.trim());
	}
}
