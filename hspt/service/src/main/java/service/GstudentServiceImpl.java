package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import mapper.GstudentMapper;
import pojo.Basic;
import pojo.Gstudent;
import util.PageResponse;

@Service
public class GstudentServiceImpl implements GstudentService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private GstudentMapper GstudentMapper;
	@Override
	public void gstudentAdd(Gstudent gstudent) {
		// TODO Auto-generated method stub
		GstudentMapper.gstudentAdd(gstudent);
	}
	@Override
	public PageResponse gstudentSearch(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Gstudent> list = GstudentMapper.gstudentSearch();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Gstudent> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public PageResponse getgstudentLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Gstudent> list = 	GstudentMapper.getgstudentLike(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Gstudent> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}
	@Override
	public void delgstudent(int id) {
		GstudentMapper.delgstudent(id);
		
	}

}
