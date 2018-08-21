package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.AuthorityMapper;
import pojo.Authority;
import pojo.AuthorityExample;
import pojo.AuthorityExample.Criteria;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	AuthorityMapper authorityMapper;
	
	@Override
	public void addUser(Authority authority) {
		authorityMapper.insertSelective(authority);
	}

	@Override
	public List<Authority> seeUser(String jobNumber) {
		return authorityMapper.selectUser(jobNumber);
	}

	@Override
	public List<Authority> selectUser(Authority authority) {
			// TODO Auto-generated method stub
		    AuthorityExample example=new AuthorityExample();
			Criteria cri=example.createCriteria();
			
			cri.andJobnumberEqualTo(authority.getJobnumber());
			
			cri.andPasswordEqualTo(authority.getPassword());
		
			return authorityMapper.selectByExample(example);
		}

	

}
