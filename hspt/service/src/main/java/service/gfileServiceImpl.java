package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.ZuMapper;
import mapper.gfileMapper;
import mapper.gnameMapper;
import pojo.Zu;
import pojo.ZuExample;
import pojo.card;
import pojo.gfile;
import pojo.gname;

import util.ImageResponse;
import util.PageResponse;

@Service
public class gfileServiceImpl implements gfileService{
	
	@Autowired
	HttpServletRequest request;
	@Autowired
	
	private gnameMapper gn;
	@Autowired
	private ZuMapper z;
	@Autowired
	private gfileMapper gf;
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

	@Override
	public List<gname> gnameSel() {
		// TODO Auto-generated method stub
		return gn.gnameSel();
		
	}
	
	@Override
	public List<Zu> zuSel() {
		// TODO Auto-generated method stub
		ZuExample example=new ZuExample();
		return z.selectByExample(example);
		
	}

	@Override
	public void gfileADD(gfile gfile1) {
		//System.out.println(gfile1);
		gf.gfile_ADD(gfile1);
		
	}

   @Override
	public PageResponse getgfileInfo(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<gfile> list = 	gf.getgfileInfo();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<gfile> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void delgfileInfo(int id) {
		gf.delgfileInfo(id);
	}

	@Override
	public void updategfile(gfile gfile){
		gf.updategfile(gfile);
	}

	@Override
	public void gfileDown(String fileName) {
		
		
	}

	@Override
	public PageResponse gfileSee(int page, int limit, int zId) {
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<gfile> list = 	gf.gfileSee(zId);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<gfile> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	
}
