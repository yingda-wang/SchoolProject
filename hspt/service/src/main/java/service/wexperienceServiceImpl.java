package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.WexperienceMapper;
import pojo.Wexperience;
import util.PageResponse;

@Service
public class wexperienceServiceImpl implements wexperienceService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private WexperienceMapper p;
	
	@Override
	public PageResponse getwexperienceInfo(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		List<Wexperience> list = p.getwexperienceInfo();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Wexperience> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void wexperienceADD(Wexperience wexperience) {
		// TODO Auto-generated method stub
		p.wexperience_ADD(wexperience);
	}

	@Override
	public void delwexperienceInfo(int id) {
		// TODO Auto-generated method stub
		p.delwexperienceInfo(id);
	}

	@Override
	public void updatewexperience(Wexperience wexperience) {
		// TODO Auto-generated method stub
		p.updatewexperience(wexperience);
	}

	@Override
	public PageResponse getwexperienceInfoLike(int page, int limit,String id) {
		System.out.println(id);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Wexperience> list = p.getwexperienceInfoLike(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Wexperience> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

}
