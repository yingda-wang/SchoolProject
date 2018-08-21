package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.TestudentMapper;
import pojo.Testudent;
import util.PageResponse;

@Service
public class testudentServiceImpl implements testudentService{

	@Autowired
	HttpServletRequest request;

	@Autowired
	private TestudentMapper p;
	
	@Override
	public PageResponse gettestudentInfo(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		List<Testudent> list = p.gettestudentInfo();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Testudent> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public PageResponse gettestudentInfoLike(int page, int limit,String id) {
		System.out.println(id);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Testudent> list = p.gettestudentInfoLike(id);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Testudent> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}
	
	@Override
	public void testudentADD(Testudent testudent) {
		// TODO Auto-generated method stub
		p.testudent_ADD(testudent);
	}

	@Override
	public void deltestudentInfo(int id) {
		// TODO Auto-generated method stub
		p.deltestudentInfo(id);
	}

	@Override
	public void updatetestudent(Testudent testudent) {
		// TODO Auto-generated method stub
		p.updatetestudent(testudent);
	}

}
