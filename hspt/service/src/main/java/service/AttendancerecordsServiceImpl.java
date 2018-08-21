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


import mapper.AttendancerecordsMapper;
import mapper.gfileMapper;
import ksxs.Attendancerecords;
import ksxs.Baseteach;
import util.ImageResponse;
import util.PageResponse;

@Service
public class AttendancerecordsServiceImpl implements AttendancerecordsService{
	
	@Autowired
	HttpServletRequest request;
	@Autowired
	private gfileMapper ar;
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
				//String realPath="E:/apache-tomcat-7.0.54/files/";
				// �Զ�����ļ�����
				String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
				// ���ô��ͼƬ�ļ���·��
				path=realPath+"files"+"\\"+trueFileName;
				String path1="files"+"\\"+trueFileName;
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
				System.out.println(path);
				return imageResponse;
	}
	@Autowired
	private AttendancerecordsMapper AttendancerecordsMapper;
	@Override
	public void attendancerecordsAdd(Attendancerecords attendancerecords) {
		// TODO Auto-generated method stub
		AttendancerecordsMapper.attendancerecordsAdd(attendancerecords);
	}
	@Override
	public PageResponse attendancerecordsSearch(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Attendancerecords> list = AttendancerecordsMapper.attendancerecordsSearch();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Attendancerecords> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	
	@Override
	public PageResponse getattendancerecordsLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Attendancerecords> list =AttendancerecordsMapper.getattendancerecordsLike(searchName);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Attendancerecords> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}
	@Override
	public void delattendancerecords(int id) {
		AttendancerecordsMapper.delattendancerecords(id);
	}
	@Override
	public void attendancerecordsDown(String fileName) {
		
	}
}
