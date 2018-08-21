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

import mapper.cardMapper;
import mapper.cardnameMapper;
import pojo.card;
import pojo.cardname;
import pojo.gfile;
import pojo.gname;
import util.ImageResponse;
import util.PageResponse;

@Service
public class cardServiceImpl implements cardService{
@Autowired
HttpServletRequest request;

@Autowired
private cardMapper c;

@Autowired
private cardnameMapper cn;

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
 public List<cardname> cardnameSel() {
	// TODO Auto-generated method stub
	return cn.cardnameSel();
 }

 /**/
	/*public PageResponse getcardInfo(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<card> list = 	c.getcardInfo();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<card> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}*/

 @Override
 public void  cardADD(card card){
	//System.out.println(gfile1);
	 c.card_ADD(card);
 }

@Override
public PageResponse getcardInfo(int page, int limit,int id) {
	// TODO Auto-generated method stub
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<card> list = 	c.getcardInfo(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<card> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}
	
@Override
public void delcardInfo(int id) {
	c.delcardInfo(id);
}

@Override
public void updatecard(card card){
	c.updatecard(card);
}

@Override
public PageResponse getcardInfo(int page, int limit) {
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<card> list = 	c.getcardInfoSearch();
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<card> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

}
