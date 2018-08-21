package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.KcbMapper;
import pojo.Kcb;
import pojo.KcbExample;

@Service
public class KcbServiceImpl implements KcbService{
	@Autowired
	private KcbMapper kcbMapper;
	@Override
	public List<Kcb> kcbSearch() {
		// TODO Auto-generated method stub
		KcbExample example=new KcbExample();
		return kcbMapper.selectByExample(example);
	}

}
