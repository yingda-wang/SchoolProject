package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.ZPositionMapper;
import user.UserInfoLike;
import user.ZPosition;
import user.ZPosition1;
import user.position;
import user.zu;
import util.PageResponse;

@Service
public class ZPositionServiceImpl implements ZPositionService{
	@Autowired
	private ZPositionMapper zpositionMapper;
	@Override
	public void addZPosition(ZPosition1 zposition) {
		zpositionMapper.addZPosition(zposition);
		
	}

	@Override
	public PageResponse getZPosition(int page, int limit) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<ZPosition1> list = zpositionMapper.getZPosition();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<ZPosition1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}


//新增
	@Override
	public List<zu> getZu() {
		// TODO Auto-generated method stub
		List<zu> list = zpositionMapper.getZu();
		return list;
	}
	@Override
	public zu getZu1() {
		// TODO Auto-generated method stub
		zu list = zpositionMapper.getZu1();
		return list;
	}
	@Override
	public List<position> getPosition() {
		// TODO Auto-generated method stub
		List<position> list = zpositionMapper.getPosition();
		return list;
	}

	@Override
	public List<ZPosition1> getPosition1(int zId) {
		// TODO Auto-generated method stub
		List <ZPosition1> list = zpositionMapper.getPosition1();
		return list;
	}

	@Override
	public void addZu1(zu zu) {
		zpositionMapper.addZu1(zu);
		
	}
public void del(int id){
	zpositionMapper.del(id);
}

@Override
public void addPosition1(position position) {
	zpositionMapper.addPosition1( position);
	
}

@Override
public PageResponse getZPositionLike(int page, int limit, String searchName) {
	
	System.out.println(searchName);
	PageResponse pageResponse=new PageResponse();
	//设置分页信息
	PageHelper.startPage(page, limit);
	List<ZPosition1> list = 	zpositionMapper.getZPositionLike(searchName);
	pageResponse.setData(list);
	//取分页结果
	PageInfo<ZPosition1> pageInfo = new PageInfo<>(list);
	//取总记录数
	long total = pageInfo.getTotal();
	pageResponse.setCount(total);
	return pageResponse;
	
}

@Override
public List<ZPosition1> getPosition2() {
	List <ZPosition1> list = zpositionMapper.getZPosition();
	// TODO Auto-generated method stub
	return list;
}

@Override
public PageResponse getZu1(int page, int limit) {
	// TODO Auto-generated method stub
	
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<zu> list = zpositionMapper.getZu();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<zu> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	

}

@Override
public void del1(int id) {
	zpositionMapper.del1(id);
	
}

	
}
