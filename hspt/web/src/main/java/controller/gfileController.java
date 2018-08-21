package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Information;
import pojo.card;
import pojo.gfile;
import pojo.gname;
import service.gfileService;
import user.UserInfo;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class gfileController {
	
	@Autowired
	private gfileService gf;
	
	@ResponseBody
	@RequestMapping("/gfile/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=gf.upload(file);
		return imageResponse;
	}
	
	
	@ResponseBody
	@RequestMapping("/oname/sel")
	public List oNameSel(){ 
		return  gf.gnameSel();
	}
	
	@ResponseBody
	@RequestMapping("/gId/sel")
	public List gIdSel(){ 
		return  gf.zuSel();
	}
	
	@ResponseBody
	@RequestMapping("/gfile/add")
	public void gfileADD(gfile gfile){
	
		gf.gfileADD(gfile);
	}
	
	@ResponseBody
	@RequestMapping("/gfile/Info")
	    public PageResponse cardInfo(int page, int limit,HttpSession session){
		UserInfo role =  (UserInfo) session.getAttribute("user");
		int zId = role.getzId();
		return gf.gfileSee(page, limit, zId);
	}

	  
	@RequestMapping("/gfile/del")
	public void delcardInfo(int id){
		//System.out.println("asdasd");
		gf.delgfileInfo(id);
	}
	
	@ResponseBody
	@RequestMapping("/gfile/update")
	public void gfileupdate(gfile gfile){
		System.out.println(gfile);

		gf.updategfile(gfile);
	}
	
	//operation = request.getSession().getServletContext().getRealPath("/")+operation;

	@ResponseBody
	@RequestMapping("/gfile/down")
	public ResponseEntity<byte[]> download(String operation,HttpServletRequest request) throws IOException {
		operation = java.net.URLDecoder.decode(operation,"UTF-8");  
		operation = request.getSession().getServletContext().getRealPath("/")+operation;
		System.out.println(operation);
		File file = new File(operation);
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
}
