package service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jl.deviceAndCat;
import mapper.WzInfoMapper;
import mapper.WznotesMapper;
import pojo.Deviceapply;
import pojo.Wznotes;
import pojo.WznotesExample;
import wz.WzInfo;
import wz.WzType;
import wz.WzIfYes;
import wz.WzApply;
import job.JobTrain;
import job.JobTrainInfoLike;
import user.UserInfo;
import user.UserQx;
import user.ZPosition;
import util.PageResponse;

@Service
public class WzInfoServiceImpl implements WzInfoService {
	@Autowired
	private WzInfoMapper wzInfoMapper;
	@Autowired
	private WznotesMapper wznotesMapper;
	
	@Override
	public List<WzType> getType() {
		// TODO Auto-generated method stub
		return wzInfoMapper.getType();
	}
	
	
	@Override
	public void setWzApply(WzInfo wzInfo) {
		wzInfo.setIfYes("否");
		wzInfoMapper.setWzApply(wzInfo);
	}
	
	@Override
	public PageResponse getWzApply(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzInfo> list = wzInfoMapper.getWzApplyInfo();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzInfo> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	
	@Override
	public List<WzInfo> getPosition(int dId) {
		String did =dId+"";
		if(("").equals(did))
		{
		 dId=0;
		 return wzInfoMapper.getPosition(dId);
		}else{
			return wzInfoMapper.getPosition(dId);

		}
	}
	
	@Override
	public void updateWzInfo(WzInfo wzInfo) {
		//System.out.println(wzInfo);
		// TODO Auto-generated method stub
		wzInfoMapper.updateWzApplyInfo(wzInfo);
		 // wzInfoMapper.updateWzApplyInfo(wzInfo);
	}
	
	@Override
	public void delWzInfo(int id) {
		wzInfoMapper.delWzApplyInfo(id);
	}
	
	@Override
	public void updateIfYes(String ifYes, int id) {
		WzIfYes wzIfYes = new WzIfYes();
		if("true".equals(ifYes)){
			ifYes = "开启";
		}else{
			ifYes="关闭";
		}
		wzIfYes.setIfYes(ifYes);
		wzIfYes.setId(id);
		List<WzIfYes>list = new ArrayList<>();
		list.add(wzIfYes);
		wzInfoMapper.updateIfYes(wzIfYes);;
	}
	
	@Override
	public void setIfYes(int id) {
		wzInfoMapper.setIfYes(id);
	}
	
	@Override
	public void wzApplyUpdateById(int id) {
		// TODO Auto-generated method stub
		WzApply record=new WzApply();
		record.setIfYes("是");
		record.setId(id);
		wzInfoMapper.updateByPrimaryKeySelective(record);
	}
	
	@Override
	public void wzNotesAdd(int id,String zName,int number,int dId){
		WzApply wzApply = new WzApply();
		wzApply.setId(id);
		wzApply.setName(zName);
		wzApply.setNumber(number);
		wzApply.setdId(dId);
		
		Date day=new Date();    

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		wzApply.setUpdateTime(df.format(day));
		System.out.println(df.format(day));
		System.out.println("wzApply");
		wzInfoMapper.setWzNotes(wzApply);
		
	}
	
	@Override
	public PageResponse getWzNotes(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzApply> list = 	wzInfoMapper.getWzNotesInfo();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzApply> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	
	@Override
	public PageResponse getWzApplyList(int page, int limit, int searchName) {
		// TODO Auto-generated method stub
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzApply> list = wzInfoMapper.getList(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzApply> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}
	
	@Override
	public PageResponse getWzInfoLike(int page, int limit, String searchName) {
		
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzApply> list = 	wzInfoMapper.getWzInfoLike(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzApply> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
		
	}


	@Override
	public List<Wznotes> getWzNotes() {
		// TODO Auto-generated method stub
		WznotesExample example=new WznotesExample();
		return wznotesMapper.selectByExample(example);
	}


	@Override
	public void addWz(WzType wztype) {
		 wzInfoMapper.addWz(wztype);
	}


	@Override
	public PageResponse getWzType(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzType> list = wzInfoMapper.getType();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzType> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}


	@Override
	public PageResponse getWzTypeLike(int page, int limit, String searchName) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<WzType> list = wzInfoMapper.getWzTypeLike(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<WzType> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}


	@Override
	public void upDateWzInfo(WzType Wztype) {
		wzInfoMapper.upDateWzInfo(Wztype);	
	}


	@Override
	public List<WzType> getWz(int tId) {
		// TODO Auto-generated method stub
		return wzInfoMapper.getWz(tId);
	}


	@Override
	public void addWzType(String type) {
		wzInfoMapper.addWzType(type);
	}


	@Override
	public List<WzType> getWzTypeType() {
		// TODO Auto-generated method stub
		return wzInfoMapper.getWzTypeType();
	}

	
}
