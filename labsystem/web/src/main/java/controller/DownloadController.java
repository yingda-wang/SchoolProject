package controller;


import java.io.IOException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Notes;
import service.UploadService;

@Controller
public class DownloadController {
	@Autowired
	private UploadService gf;
	@ResponseBody
	@RequestMapping("/schedule/down")
	public String scheduleDownload(HttpServletRequest request,HttpSession session, Notes notes) throws IOException {  
		String nf =  (String) session.getAttribute("nf");
		notes.setNf(nf);
	  	String res = gf.scheduleDownload(notes);
	  
		return res;
		
	}
	@ResponseBody
	@RequestMapping("/scheduleFzr/down")
	public String scheduleFzrDownload(HttpServletRequest request,HttpSession session) throws IOException {  
		String nf =  (String) session.getAttribute("nf");		
	  	String res = gf.scheduleFzrDownload(nf);	
		return res;
		
	}
}
