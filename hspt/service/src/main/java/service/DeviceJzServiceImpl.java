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

import jl.deviceAndCat;
import mapper.DevicecalibrationMapper;
import pojo.Devicecalibration;
import pojo.DevicecalibrationExample;
import pojo.Devicemaintenance;
import pojo.DevicemaintenanceExample;
import pojo.DevicecalibrationExample.Criteria;
import util.ImageResponse;
import util.PageResponse;
@Service
public class DeviceJzServiceImpl implements DeviceJzService{
	@Autowired
	private DevicecalibrationMapper devicecalibrationMapper;
	@Autowired
	HttpServletRequest request;
	@Override
	public List<Devicecalibration> getJzList(String bh) {
		// TODO Auto-generated method stub
		DevicecalibrationExample example=new DevicecalibrationExample();
		Criteria criteria=example.createCriteria();
		criteria.andExportidEqualTo(bh);
		return devicecalibrationMapper.selectByExample(example);

	}
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
	public void deviceJzAdd(Devicecalibration devicecalibration) {
		// TODO Auto-generated method stub
		devicecalibrationMapper.insertSelective(devicecalibration);
	}
	@Override
	public PageResponse getDeviceJzList(int page, int limit) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//���÷�ҳ��Ϣ
				PageHelper.startPage(page, limit);
				DevicecalibrationExample example=new DevicecalibrationExample();
				List<Devicecalibration> list = devicecalibrationMapper.selectByExample(example);
				pageResponse.setData(list);
				//ȡ��ҳ���
				PageInfo<Devicecalibration> pageInfo = new PageInfo<>(list);
				//ȡ�ܼ�¼��
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}
	@Override
	public void deviceJzDel(long id) {
		// TODO Auto-generated method stub
		devicecalibrationMapper.deleteByPrimaryKey(id);
	}
	@Override
	public PageResponse getDeviceListByBh(int page, int limit, String bh) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		DevicecalibrationExample example=new DevicecalibrationExample();
		Criteria criteria = example.createCriteria();
		criteria.andExportidLike("%"+bh+"%");
		List<Devicecalibration> list = devicecalibrationMapper.selectByExample(example);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Devicecalibration> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	

}
