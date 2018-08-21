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

import mapper.ParttimeMapper;
import pojo.Parttime;
import util.ImageResponse;
import util.PageResponse;

@Service
public class parttimeServiceImpl implements parttimeService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private ParttimeMapper p;
	
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
				return imageResponse;
	}

	@Override
	public PageResponse getparttimeInfo(int page, int limit,int id) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		List<Parttime> list = p.getparttimeInfo(id);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Parttime> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void parttimeADD(Parttime parttime) {
		// TODO Auto-generated method stub
		p.parttime_ADD(parttime);
	}

	@Override
	public PageResponse getparttimeInfoLike(int page, int limit,String id) {
		System.out.println(id);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Parttime> list = p.getparttimeInfoLike(id);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Parttime> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

	@Override
	public void delparttimeInfo(int id) {
		// TODO Auto-generated method stub
		p.delparttimeInfo(id);
	}

	@Override
	public void updateparttime(Parttime parttime) {
		// TODO Auto-generated method stub
		p.updateparttime(parttime);
	}

	@Override
	public PageResponse getparttimeSearch(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Parttime> list = p.getparttimeSearch();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Parttime> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;

	}

}
