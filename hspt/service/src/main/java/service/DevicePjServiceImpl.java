package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.DeviceaccessoriesMapper;
import pojo.Deviceaccessories;
import pojo.DeviceaccessoriesExample;
import pojo.DeviceaccessoriesExample.Criteria;
import pojo.Deviceaccessoriesnotes;
import pojo.DeviceaccessoriesnotesExample;


import util.PageResponse;
@Service
public class DevicePjServiceImpl implements DevicePjService{
	
	@Autowired
	private DeviceaccessoriesMapper deviceaccessoriesMapper;
	
	@Override
	public void pjAdd(Deviceaccessories deviceaccessories) {
		// TODO Auto-generated method stub
		deviceaccessoriesMapper.insertSelective(deviceaccessories);
		
	}
	@Override
	public PageResponse getDevicePjList(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DeviceaccessoriesExample example=new DeviceaccessoriesExample();
		List<Deviceaccessories> list = deviceaccessoriesMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Deviceaccessories> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public void devicePjDel(long id) {
		// TODO Auto-generated method stub
		deviceaccessoriesMapper.deleteByPrimaryKey(id);
	}
	@Override
	public PageResponse getDeviceListByBh(int page, int limit, String bh) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DeviceaccessoriesExample example=new DeviceaccessoriesExample();
		Criteria criteria = example.createCriteria();
		criteria.andDevicecodingLike("%"+bh+"%");         
		List<Deviceaccessories> list = deviceaccessoriesMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Deviceaccessories> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

}
