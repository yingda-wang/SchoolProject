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

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.EexperienceMapper;
import pojo.Eexperience;
import util.ImageResponse;
import util.PageResponse;

@Service
public class eexperienceServiceImpl implements eexperienceService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private EexperienceMapper p;
	
	@Override
	public ImageResponse upload(MultipartFile file) {
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
				return imageResponse;
	}

	@Override
	public PageResponse geteexperienceInfo(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		List<Eexperience> list = p.geteexperienceInfo();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Eexperience> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void eexperienceADD(Eexperience eexperience) {
		// TODO Auto-generated method stub
		p.eexperience_ADD(eexperience);
	}

	@Override
	public void deleexperienceInfo(int id) {
		// TODO Auto-generated method stub
		p.deleexperienceInfo(id);
	}

	@Override
	public void updateeexperience(Eexperience eexperience) {
		// TODO Auto-generated method stub
		p.updateeexperience(eexperience);
	}

	@Override
	public PageResponse geteexperienceInfoLike(int page, int limit,String id) {
		System.out.println(id);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Eexperience> list = p.geteexperienceInfoLike(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Eexperience> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

}
