package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import mapper.RdoctorMapper;
import pojo.Rdoctor;
import util.PageResponse;

@Service
public class RdoctorServiceImpl implements RdoctorService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private RdoctorMapper RdoctorMapper;
	@Override
	public void rdoctorAdd(Rdoctor rdoctor) {
		// TODO Auto-generated method stub
		RdoctorMapper.rdoctorAdd(rdoctor);
	}
	@Override
	public PageResponse rdoctorSearch(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Rdoctor> list = RdoctorMapper.rdoctorSearch();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Rdoctor> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public PageResponse getrdoctorLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Rdoctor> list = 	RdoctorMapper.getrdoctorLike(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Rdoctor> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}
	@Override
	public void delrdoctor(String phone) {
		RdoctorMapper.delrdoctor(phone);
	}
}
