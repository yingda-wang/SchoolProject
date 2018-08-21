package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.DevicerepairMapper;
import pojo.Devicerepair;
import pojo.DevicerepairExample;
import pojo.DevicerepairExample.Criteria;
import util.PageResponse;

@Service
public class DeviceRepairServiceImpl implements DeviceRepairService{
	@Autowired
	private DevicerepairMapper devicerepairMapper;
	@Override
	public void add(Devicerepair devicerepair) {
		// TODO Auto-generated method stub
		devicerepairMapper.insertSelective(devicerepair);
	}
	@Override
	public PageResponse getDeviceRepairList(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DevicerepairExample example=new DevicerepairExample();
		List<Devicerepair> list = devicerepairMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Devicerepair> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public void deviceRepariDel(long id) {
		// TODO Auto-generated method stub
		DevicerepairExample example=new DevicerepairExample();
		Criteria criteria=example.createCriteria();
		criteria.andIdEqualTo(id);
		devicerepairMapper.deleteByExample(example);
	}
	@Override
	public void deviceRepairStateUpdate(Devicerepair deviceRepair) {
		// TODO Auto-generated method stub
		devicerepairMapper.updateByPrimaryKeySelective(deviceRepair);
	}
	
}
