package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.FworkMapper;
import pojo.Fwork;
import util.PageResponse;

@Service
public class fworkServiceImpl implements fworkService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private FworkMapper p;
	
	@Override
	public PageResponse getfworkInfo(int page, int limit,int id) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		List<Fwork> list = p.getfworkInfo(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Fwork> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
		
	@Override
	public void fworkADD(Fwork fwork) {
		// TODO Auto-generated method stub
		p.fwork_ADD(fwork);
	}

	@Override
	public void delfworkInfo(int id) {
		// TODO Auto-generated method stub
		p.delfworkInfo(id);
	}

	@Override
	public PageResponse getfworkInfoLike(int page, int limit,String id) {
		
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Fwork> list = p.getfworkInfoLike(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Fwork> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}
	@Override
	public void updatefwork(Fwork fwork) {
		// TODO Auto-generated method stub
		p.updatefwork(fwork);
	}

	@Override
	public PageResponse getfworkInfo(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Fwork> list = p.getfworkInfoS();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Fwork> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

}
