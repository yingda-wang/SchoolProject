package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.ZuMapper;
import pojo.Zu;
import pojo.ZuExample;
@Service
public class ZuServiceImpl implements ZuService{
	
	@Autowired
	private ZuMapper zuMapper;
	
	@Override
	public List<Zu> getZu() {
		// TODO Auto-generated method stub
		ZuExample example=new ZuExample();
		return zuMapper.selectByExample(example);
	}

}
