package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import mapper.IstudentMapper;
import pojo.Istudent;
import util.PageResponse;

@Service
public class IstudentServiceImpl implements IstudentService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private IstudentMapper IstudentMapper;
	@Override
	public void istudentAdd(Istudent istudent) {
		// TODO Auto-generated method stub
		IstudentMapper.istudentAdd(istudent);
	}
	@Override
	public PageResponse istudentSearch(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Istudent> list = IstudentMapper.istudentSearch();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Istudent> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public PageResponse getistudentLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Istudent> list = 	IstudentMapper.getistudentLike(searchName);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Istudent> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}
	@Override
	public void delistudent(int id) {
		IstudentMapper.delistudent(id);;
	}
}
