package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mapper.NotesMapper;
import mapper.RlMapper;
import pojo.Notes;
import pojo.Rl;
import util.ExcelUtil;
import util.ImageResponse;
@Service
public class UploadServiceImpl implements UploadService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private RlMapper rlMapper;
	
	@Autowired
	private NotesMapper notesMapper;
	
	@Override
	public ImageResponse upload(MultipartFile file) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		
		String path=null;// 文件路径
		String type=null;// 文件类型
	    String fileName=file.getOriginalFilename();// 文件原名称
	    System.out.println("上传的文件原名称:"+fileName);
	    // 判断文件类型
		type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
		// 项目在容器中实际发布运行的根路径
		String realPath=request.getSession().getServletContext().getRealPath("/");
		//String realPath="E:/apache-tomcat-7.0.54/files/";
		// 自定义的文件名称
		String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
		// 设置存放图片文件的路径
		path=realPath+"files"+"\\"+trueFileName;
		String path1="files"+"\\"+trueFileName;
		System.out.println("存放图片文件的路径:"+path);
		// 转存文件到指定的路径
		try {
			file.transferTo(new File(path));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("文件成功上传到指定目录下");
		
		ImageResponse imageResponse=new ImageResponse();
		Map<String,String> map=new HashMap<String,String>();
		map.put("src", path1);
		List<Map<String,String>> list=new ArrayList<Map<String,String>>();
		list.add(map);
		imageResponse.setData(list);
		System.out.println(path);
		return imageResponse;
	}

	@Override
	public String scheduleDownload(Notes notes) {
		List<Rl>rl =  rlMapper.selectRl("已应用");
		String filename = rl.get(0).getFilename();
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String path=realPath+filename;
		File file = new File(path);  		
	    ArrayList<ArrayList<Object>> result = ExcelUtil.readExcel(file); 
		ExcelUtil eu = new ExcelUtil();	
		String url = "files"+"\\"+System.currentTimeMillis()+Math.random()+""+".xls";
		String path1 = realPath+url;	
		List<Notes> list = notesMapper.selectNotes2(notes);
		eu.writeExcel(result,path1,list);
		return url;
	}

	@Override
	public String scheduleFzrDownload(String nf) {
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String url = "files"+"\\"+System.currentTimeMillis()+Math.random()+""+".xls";
		String path1 = realPath+url;
		ExcelUtil eu = new ExcelUtil();	
		eu.writeExcel(path1,nf);
		return url;
	}
	
}
