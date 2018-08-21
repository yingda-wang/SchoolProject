package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.AuthorityMapper;
import mapper.KcmMapper;
import pojo.Authority;
import pojo.Kcm;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	KcmMapper kcmMapper;

	@Override
	public List<Kcm> getCourse() {
		// TODO Auto-generated method stub
		return kcmMapper.selectKcm();
	}
	
	

}
