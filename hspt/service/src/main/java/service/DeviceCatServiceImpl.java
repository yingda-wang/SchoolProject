package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.deviceAndCat;
import mapper.DevicecatMapper;
import pojo.Device;
import pojo.DeviceExample;
import pojo.Devicecat;
import pojo.DevicecatExample;
import pojo.DevicecatExample.Criteria;
import util.PageResponse;
@Service
public class DeviceCatServiceImpl implements DeviceCatService{
	@Autowired
	private DevicecatMapper DeviceCatMapper;
	@Autowired
	private DevicecatMapper devicecatMapper;
	@Override
	public List<Devicecat> getDeviceCat() {
		// TODO Auto-generated method stub		
		DevicecatExample DeviceCatExample=new DevicecatExample();
		List<Devicecat> list=DeviceCatMapper.selectByExample(DeviceCatExample);
		return list;
	}
	@Override
	public PageResponse getList(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DevicecatExample example=new DevicecatExample();
		List<Devicecat> list = devicecatMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Devicecat> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public List<Devicecat> selectByType(String type) {
		
		// TODO Auto-generated method stub
				DevicecatExample example=new DevicecatExample();
				Criteria criteria = example.createCriteria();
				criteria.andTypeEqualTo(type);
				List<Devicecat> deviceCat=devicecatMapper.selectByExample(example);
				return deviceCat;
	}
	@Override
	public void addDeviceCat(Devicecat deviceCat) {
		// TODO Auto-generated method stub
		devicecatMapper.insertSelective(deviceCat);

	}
	@Override
	public void deviceCatDel(int id) {
		// TODO Auto-generated method stub
		devicecatMapper.deleteByPrimaryKey(id);
	}
	@Override
	public PageResponse getDeviceCatListByType(int page, int limit, String type) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DevicecatExample example=new DevicecatExample();
		Criteria criteria = example.createCriteria();
		criteria.andTypeLike("%"+type+"%");
		List<Devicecat> list = devicecatMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Devicecat> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	
}
