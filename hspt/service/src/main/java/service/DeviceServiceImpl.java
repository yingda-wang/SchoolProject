package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.DeviceSea;
import jl.deviceAndCat;
import mapper.DeviceMapper;
import mapper.DeviceSeaMapper;
import pojo.Device;
import pojo.DeviceExample;
import pojo.Devicecat;
import pojo.DevicecatExample;
import pojo.DeviceExample.Criteria;
import util.ImageResponse;
import util.PageResponse;
@Service
public class DeviceServiceImpl implements DeviceService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private DeviceMapper deviceMapper;
	@Autowired
	private DeviceSeaMapper deviceSeaMapper;
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
	public void addDevice(Device device) {
		// TODO Auto-generated method stub
		deviceMapper.insertSelective(device);
	}
	//@Cacheable(value="userCache")
	@Override
	public PageResponse getDeviceList(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		//DeviceExample example=new DeviceExample();
		List<DeviceSea> list = deviceSeaMapper.deviceSeaSel();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		//System.out.println("12312124");
		return pageResponse;
	}
	@Override
	public PageResponse getDeviceListBySbid(int page, int limit, String sbid) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//���÷�ҳ��Ϣ
				PageHelper.startPage(page, limit);
				/*DeviceExample example=new DeviceExample();
				Criteria cri=example.createCriteria();
				cri.andSbidLike(sbid);*/
				List<DeviceSea> list = deviceSeaMapper.deviceSeaSelById(sbid);
				pageResponse.setData(list);
				//ȡ��ҳ���
				PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
				//ȡ�ܼ�¼��
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}
	@Override
	public void deviceDel(long id) {
		// TODO Auto-generated method stub
		deviceMapper.deleteByPrimaryKey(id);
	}
	@Override
	public List<Device> selectBysbid(String sbid) {
		// TODO Auto-generated method stub
		DeviceExample example=new DeviceExample();
		Criteria criteria = example.createCriteria();
		criteria.andSbidEqualTo(sbid);
		List<Device> device=deviceMapper.selectByExample(example);
		return device;
	}
	@Override
	public void deviceEdit(Device device) {
		// TODO Auto-generated method stub
		deviceMapper.updateByPrimaryKeySelective(device);
	}
	@Override
	public PageResponse getDeviceListByState(int page, int limit, String state) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//���÷�ҳ��Ϣ
				PageHelper.startPage(page, limit);
				/*DeviceExample example=new DeviceExample();
				Criteria cri=example.createCriteria();
				cri.andStateLike(state);*/
				List<DeviceSea> list = deviceSeaMapper.deviceSeaSelByState(state);
				pageResponse.setData(list);
				//ȡ��ҳ���
				PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
				//ȡ�ܼ�¼��
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}
	@Override
	public void deviceStateUpdate(Device device,String sbid) {
		// TODO Auto-generated method stub
		DeviceExample example=new DeviceExample();
		Criteria criteria=example.createCriteria();
		criteria.andSbidEqualTo(sbid);
		deviceMapper.updateByExampleSelective(device, example);

	}
	@Override
	public List<Device> getBhList() {
		// TODO Auto-generated method stub
		DeviceExample example=new DeviceExample();
		return deviceMapper.selectByExample(example);
	}
	@Override
	public void sbQr(String bh) {
		// TODO Auto-generated method stub
		DeviceExample example=new DeviceExample();
		Criteria criteria=example.createCriteria();
		criteria.andSbidEqualTo(bh);
		Device device=new Device();
		device.setState("����");
		deviceMapper.updateByExampleSelective(device, example);
	}
	@Override
	public List<Device> getBhListNoBf() {
		// TODO Auto-generated method stub
		return deviceMapper.getBhListNoBf();
		
	}
	

}
