package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import job.JobTrain;
import mapper.BasicMapper;
import pojo.Basic;
import util.PageResponse;

@Service
public class BasicServiceImpl implements BasicService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private BasicMapper BasicMapper;
	@Override
	public void basicAdd(Basic basic) {
		// TODO Auto-generated method stub
		BasicMapper.basicAdd(basic);
	}
	@Override
	public PageResponse basicSearch(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Basic> list = BasicMapper.basicSearch();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Basic> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	@Override
	public PageResponse getbasicLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Basic> list = 	BasicMapper.getbasicLike(searchName);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Basic> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}
	@Override
	public void delbasic(String phone) {
		BasicMapper.delbasic(phone);
	}
}
