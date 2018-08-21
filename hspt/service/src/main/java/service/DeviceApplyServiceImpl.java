package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.DeviceApplyAndCat;
import mapper.DeviceApplyAndCatMapper;
import mapper.DeviceapplyMapper;
import pojo.Deviceapply;
import pojo.DeviceapplyExample;
import pojo.Devicecat;
import pojo.DevicecatExample;
import util.PageResponse;

@Service
public class DeviceApplyServiceImpl implements DeviceApplyService{

	@Autowired
	private DeviceapplyMapper deviceapplyMapper;
	
	@Autowired
	private DeviceApplyAndCatMapper dev;
	@Override
	public void deviceApplyAdd(Deviceapply deviceapply) {
		// TODO Auto-generated method stub
		deviceapplyMapper.insertSelective(deviceapply);
	}

	@Override
	public PageResponse getList(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		
		List<DeviceApplyAndCat> list = dev.getList();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<DeviceApplyAndCat> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public void deviceApplyDel(long id) {
		// TODO Auto-generated method stub
		deviceapplyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void deviceApplyUpdateById(long id) {
		// TODO Auto-generated method stub
		Deviceapply record=new Deviceapply();
		record.setIfyes("是");
		record.setId(id);
		deviceapplyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public void deviceApplyUpdateById(long id,double number) {
		// TODO Auto-generated method stub
		Deviceapply record=new Deviceapply();
		record.setId(id);
		record.setNumber(number);
		deviceapplyMapper.updateByPrimaryKeySelective(record);
	}
	
}
