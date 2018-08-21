package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.deviceAndCat;
import mapper.DevicemaintenanceMapper;
import pojo.Devicecat;
import pojo.DevicecatExample;
import pojo.Devicemaintenance;
import pojo.DevicemaintenanceExample;
import pojo.DevicemaintenanceExample.Criteria;
import util.PageResponse;
@Service
public class DeviceWbServiceImpl implements DeviceWbService {
	
	@Autowired
	private DevicemaintenanceMapper devicemaintenanceMapper;
	
	@Override
	public void deviceWbAdd(Devicemaintenance devicemaintenance) {
		// TODO Auto-generated method stub
		devicemaintenanceMapper.insertSelective(devicemaintenance);
	}

	@Override
	public PageResponse getDeviceWbList(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DevicemaintenanceExample example=new DevicemaintenanceExample();
		List<Devicemaintenance> list = devicemaintenanceMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Devicemaintenance> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public void deviceWbDel(long id) {
		// TODO Auto-generated method stub
		devicemaintenanceMapper.deleteByPrimaryKey(id);
	}

	@Override
	public PageResponse getDeviceListByBh(int page, int limit, String bh) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//设置分页信息
				PageHelper.startPage(page, limit);
				DevicemaintenanceExample example=new DevicemaintenanceExample();
				Criteria criteria = example.createCriteria();
				criteria.andMidLike("%"+bh+"%");
				List<Devicemaintenance> list = devicemaintenanceMapper.selectByExample(example);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<Devicemaintenance> pageInfo = new PageInfo<>(list);
				//取总记录数
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}

}
