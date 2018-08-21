package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.presentMapper;
import pojo.Award;
import pojo.Eexperience;
import pojo.Fwork;
import pojo.Wexperience;
import pojo.gfile;
import pojo.Tec;
import user.UserInfo;
import util.PageResponse;
@Service
public class presentServiceImpl implements presentService{
@Autowired
 presentMapper presentmapper;

@Override
public PageResponse selectTecourse(int page, int limit,int id) {
	
		
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<Tec> list = presentmapper.selectTecourse(id);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<Tec> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}


@Override
public PageResponse selectGfile(int page, int limit, int id) {
	// TODO Auto-generated method stub
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<gfile> list = presentmapper.selectGfile(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<gfile> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

@Override
public PageResponse selectFwork(int page, int limit,int id) {
	// TODO Auto-generated method stub
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<Fwork> list = presentmapper.selectFwork(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<Fwork> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

@Override
public PageResponse selectEexperience(int page, int limit,int id) {
	// TODO Auto-generated method stub
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<Eexperience> list = presentmapper.selectEexperience(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<Eexperience> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

@Override
public PageResponse selectAward(int page, int limit,int id) {
	// TODO Auto-generated method stub
	System.out.println("############################################");
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<Award> list = presentmapper.selectAward(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<Award> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

@Override
public PageResponse selectWexperience(int page, int limit,int id) {
	// TODO Auto-generated method stub
	PageResponse pageResponse=new PageResponse();
	//���÷�ҳ��Ϣ
	PageHelper.startPage(page, limit);
	List<Wexperience> list = presentmapper.selectWexperience(id);
	pageResponse.setData(list);
	//ȡ��ҳ���
	PageInfo<Wexperience> pageInfo = new PageInfo<>(list);
	//ȡ�ܼ�¼��
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
}

}
