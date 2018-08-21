package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.TecourseMapper;
import pojo.Tecourse;
import util.PageResponse;

@Service
public class tecourseServiceImpl implements tecourseService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private TecourseMapper p;
	
	@Override
	public PageResponse gettecourseInfo(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		List<Tecourse> list = p.gettecourseInfo();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Tecourse> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public PageResponse gettecourseInfoLike(int page, int limit,String id) {
		System.out.println(id);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Tecourse> list = p.gettecourseInfoLike(id);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Tecourse> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}	
	@Override
	public void tecourseADD(Tecourse tecourse) {
		// TODO Auto-generated method stub
		p.tecourse_ADD(tecourse);
	}

	@Override
	public void deltecourseInfo(int id) {
		// TODO Auto-generated method stub
		p.deltecourseInfo(id);
	}

	@Override
	public void updatetecourse(Tecourse tecourse) {
		// TODO Auto-generated method stub
		p.updatetecourse(tecourse);
	}

}
