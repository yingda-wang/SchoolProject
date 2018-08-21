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

import service.UploadService;
import util.ImageResponse;

@Controller
public class UploadController {
	@Autowired
	private UploadService gf;
	
	@ResponseBody
	@RequestMapping("/gfile/upload/")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=gf.upload(file);
		return imageResponse;
	}
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
