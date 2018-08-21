package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.DeviceaccessoriesnotesMapper;
import pojo.Deviceaccessories;
import pojo.DeviceaccessoriesExample;
import pojo.Deviceaccessoriesnotes;
import pojo.DeviceaccessoriesnotesExample;
import pojo.DeviceaccessoriesnotesExample.Criteria;
import util.PageResponse;
@Service
public class DevicePjNotesServiceImpl implements DevicePjNotesService{
	@Autowired
	private DeviceaccessoriesnotesMapper deviceaccessoriesnotesMapper;
	@Override
	public void devicePjNotesAdd(Deviceaccessoriesnotes deviceaccessoriesnotes) {
		// TODO Auto-generated method stub
		deviceaccessoriesnotesMapper.insertSelective(deviceaccessoriesnotes);
	}
	@Override
	public PageResponse getDevicepjNotesList(int page, int limit) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//设置分页信息
				PageHelper.startPage(page, limit);
				DeviceaccessoriesnotesExample example=new DeviceaccessoriesnotesExample();
				List<Deviceaccessoriesnotes> list = deviceaccessoriesnotesMapper.selectByExample(example);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<Deviceaccessoriesnotes> pageInfo = new PageInfo<>(list);
				//取总记录数
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}
	@Override
	public PageResponse getDeviceListByBh(int page, int limit, long bh) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//设置分页信息
				PageHelper.startPage(page, limit);
				DeviceaccessoriesnotesExample example=new DeviceaccessoriesnotesExample();
				Criteria criteria = example.createCriteria();
				criteria.andPidEqualTo(bh);            
				List<Deviceaccessoriesnotes> list = deviceaccessoriesnotesMapper.selectByExample(example);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<Deviceaccessoriesnotes> pageInfo = new PageInfo<>(list);
				//取总记录数
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				return pageResponse;
	}
	@Override
	public void devicepjnotesDel(long id) {
		// TODO Auto-generated method stub
		deviceaccessoriesnotesMapper.deleteByPrimaryKey(id);
	}
	@Override
	public String ifly(long id) {
		// TODO Auto-generated method stub
		List<Deviceaccessoriesnotes> list=new ArrayList<Deviceaccessoriesnotes>();
		DeviceaccessoriesnotesExample example=new DeviceaccessoriesnotesExample();
		Criteria criteria=example.createCriteria();
		criteria.andPidEqualTo(id);
		list=deviceaccessoriesnotesMapper.selectByExample(example);
		
		if(list.size()==0){
			return "yes";
		}
		else{
			return "no";
		}
	}

}
