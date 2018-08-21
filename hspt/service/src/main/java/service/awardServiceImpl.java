package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.AwardMapper;
import pojo.Award;
import util.PageResponse;

@Service
public class awardServiceImpl implements awardService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private AwardMapper p;
	
	@Override
	public PageResponse getawardInfo(int page, int limit,int id) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		List<Award> list = p.getawardInfo(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Award> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void awardADD(Award award) {
		// TODO Auto-generated method stub
		p.award_ADD(award);
	}

	@Override
	public void delawardInfo(int id) {
		// TODO Auto-generated method stub
		p.delawardInfo(id);
	}

	@Override
	public PageResponse getawardInfoLike(int page, int limit,String id) {
		
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Award> list = p.getawardInfoLike(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Award> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

	@Override
	public void updateaward(Award award) {
		// TODO Auto-generated method stub
		p.updateaward(award);
	}

	@Override
	public PageResponse getawardInfo(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Award> list = p.getawardInfoS();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Award> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	


}
