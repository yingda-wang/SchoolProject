package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.AuthorityMapper;
import pojo.Authority;
import pojo.AuthorityExample;
import pojo.AuthorityExample.Criteria;
import util.PageResponse;
@Service
public class AuthorityServiceImpl implements AuthorityService{
	@Autowired
	private AuthorityMapper autMapper;
	@Override
	public void authorityAdd(Authority authority) {
		// TODO Auto-generated method stub
		autMapper.insertSelective(authority);
	}
	@Override
	public List<Authority> authoritySelByJobNumber(String jobNumber) {
		// TODO Auto-generated method stub
		
		AuthorityExample example=new AuthorityExample();
		Criteria cri=example.createCriteria();
		cri.andJobnumberEqualTo(jobNumber);
		return autMapper.selectByExample(example);
	}
	@Override
	public PageResponse authoritySearch(int page, int limit) {
		// TODO Auto-generated method stub
				PageResponse pageResponse=new PageResponse();
				//设置分页信息
				PageHelper.startPage(page, limit);
				AuthorityExample example=new AuthorityExample();
				List<Authority> list = autMapper.selectByExample(example);
				pageResponse.setData(list);
				//取分页结果
				PageInfo<Authority> pageInfo = new PageInfo<>(list);
				//取总记录数
				long total = pageInfo.getTotal();
				pageResponse.setCount(total);
				
				return pageResponse;
	}
	@Override
	public void authorityDel(int id) {
		// TODO Auto-generated method stub
		autMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void authorityQx(Authority authority) {
		// TODO Auto-generated method stub
		autMapper.updateByPrimaryKeySelective(authority);
	}
	@Override
	public void authorityUpdate(Authority authority) {
		// TODO Auto-generated method stub
		autMapper.updateByPrimaryKeySelective(authority);
	}

}
