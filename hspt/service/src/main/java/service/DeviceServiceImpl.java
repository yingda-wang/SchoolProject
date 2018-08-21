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
		
		String path=null;// 文件路径
		String type=null;// 文件类型
	    String fileName=file.getOriginalFilename();// 文件原名称
	    System.out.println("上传的文件原名称:"+fileName);
	    // 判断文件类型
		type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
		// 项目在容器中实际发布运行的根路径
		String realPath=request.getSession().getServletContext().getRealPath("/");
		//String realPath="E:/apache-tomcat-7.0.54/images/";
		// 自定义的文件名称
		String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
		// 设置存放图片文件的路径
		path=realPath+"images"+"\\"+trueFileName;
		String path1="images"+"\\"+trueFileName;
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
	public void addDevice(Device device) {
		// TODO Auto-generated method stub
		deviceMapper.insertSelective(device);
	}
	//@Cacheable(value="userCache")
	@Override
	public PageResponse getDeviceList(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		//DeviceExample example=new DeviceExample();
		List<DeviceSea> list = deviceSeaMapper.deviceSeaSel();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		//System.out.println("12312124");
		return pageResponse;
	}
	@Override
	public PageResponse getDeviceListBySbid(int page, int limit, String sbid) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//设置分页信息
				PageHelper.startPage(page, limit);
				/*DeviceExample example=new DeviceExample();
				Criteria cri=example.createCriteria();
				cri.andSbidLike(sbid);*/
				List<DeviceSea> list = deviceSeaMapper.deviceSeaSelById(sbid);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
				//取总记录数
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
				//设置分页信息
				PageHelper.startPage(page, limit);
				/*DeviceExample example=new DeviceExample();
				Criteria cri=example.createCriteria();
				cri.andStateLike(state);*/
				List<DeviceSea> list = deviceSeaMapper.deviceSeaSelByState(state);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<DeviceSea> pageInfo = new PageInfo<>(list);
				//取总记录数
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
		device.setState("报废");
		deviceMapper.updateByExampleSelective(device, example);
	}
	@Override
	public List<Device> getBhListNoBf() {
		// TODO Auto-generated method stub
		return deviceMapper.getBhListNoBf();
		
	}
	

}
