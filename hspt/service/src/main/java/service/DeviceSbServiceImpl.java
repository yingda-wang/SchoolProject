package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.Cs;
import mapper.DevSbSearMapper;
import mapper.DeviceSbMapper;
import mapper.DevicescrappedapplyregistMapper;
import pojo.DevSbSear;
import pojo.Devicecat;
import pojo.DevicecatExample;
import pojo.Devicescrappedapplyregist;
import pojo.DevicescrappedapplyregistExample;
import pojo.DevicescrappedapplyregistExample.Criteria;
import util.PageResponse;

@Service
public class DeviceSbServiceImpl implements DeviceSbService{
	
	@Autowired
	private DeviceSbMapper dev;
	@Autowired
	private DevicescrappedapplyregistMapper devMapper;
	@Autowired
	private DevSbSearMapper devsm;
	
	

	@Override
	public void sbInsert(Devicescrappedapplyregist devicescrappedapplyregist) {
		// TODO Auto-generated method stub
		devMapper.insertSelective(devicescrappedapplyregist);
	}

	@Override
	public PageResponse getSb(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		DevicescrappedapplyregistExample example=new DevicescrappedapplyregistExample();
		List<Devicescrappedapplyregist> list = devMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Devicescrappedapplyregist> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public void SbDel(long id) {
		// TODO Auto-generated method stub
		devMapper.deleteByPrimaryKey(id);
	}

	@Override
	public String cfjy(String bh) {
		// TODO Auto-generated method stub
		DevicescrappedapplyregistExample example=new DevicescrappedapplyregistExample();
		Criteria cri=example.createCriteria();
		cri.andDevicecodingEqualTo(bh);
		List<Devicescrappedapplyregist> list=devMapper.selectByExample(example);
		if(list.size()>0){
			return "nak";
		}else{
			return "ack";
		}
	
	}

	
	
}
