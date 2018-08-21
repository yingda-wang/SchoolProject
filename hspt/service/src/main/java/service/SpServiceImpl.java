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

import mapper.SpMapper;
import pojo.Sp;
import util.ImageResponse;
@Service
public class SpServiceImpl implements SpService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private SpMapper spMapper;
	
	@Override
	public ImageResponse upload(MultipartFile file) {
		// TODO Auto-generated method stub
		String path=null;// �ļ�·��
		String type=null;// �ļ�����
	    String fileName=file.getOriginalFilename();// �ļ�ԭ����
	    System.out.println("�ϴ����ļ�ԭ����:"+fileName);
	    // �ж��ļ�����
		type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
		// ��Ŀ��������ʵ�ʷ������еĸ�·��
		String realPath=request.getSession().getServletContext().getRealPath("/");
		//String realPath="E:/apache-tomcat-7.0.54/images/";
		// �Զ�����ļ�����
		String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
		// ���ô��ͼƬ�ļ���·��
		path=realPath+"images"+"\\"+trueFileName;
		String path1="images"+"\\"+trueFileName;
		System.out.println("���ͼƬ�ļ���·��:"+path);
		// ת���ļ���ָ����·��
		try {
			file.transferTo(new File(path));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("�ļ��ɹ��ϴ���ָ��Ŀ¼��");
		
		ImageResponse imageResponse=new ImageResponse();
		Map<String,String> map=new HashMap<String,String>();
		map.put("src", path1);
		List<Map<String,String>> list=new ArrayList<Map<String,String>>();
		list.add(map);
		imageResponse.setData(list);
		return imageResponse;
	}


	@Override
	public void spAdd(Sp sp) {
		// TODO Auto-generated method stub
		spMapper.spAdd(sp);
	}

}
