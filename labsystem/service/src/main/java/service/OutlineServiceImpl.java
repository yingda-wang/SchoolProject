package service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.KcmMapper;
import mapper.Outline1Mapper;
import pojo.Kcm;
import pojo.KcmExample;
import pojo.Outline1;
import pojo.Outline1Example;
import pojo.Outline1Example.Criteria;
import util.ExcelUtil;
import util.PageResponse;

@Service
public class OutlineServiceImpl implements OutlineService{
	@Autowired
	private Outline1Mapper outMapper;
	@Autowired
	private KcmMapper kcMapper;
	@Autowired
	HttpServletRequest request;
	@Override
	public List<Outline1> outlineJy(String version) {
		Outline1Example example=new Outline1Example();		
		Criteria cri = example.createCriteria();
		cri.andVersionEqualTo(version);
		return outMapper.selectByExample(example);
	}

	@Override
	public void outlineAdd(Outline1 out) {
		// TODO Auto-generated method stub
		outMapper.insertSelective(out);
	}

	@Override
	public PageResponse getOutlineList(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		Outline1Example example=new Outline1Example();
		List<Outline1> list = outMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Outline1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}

	@Override
	public void outlineDel(int id) {
		// TODO Auto-generated method stub
		outMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void kcAdd(Outline1 out) {
		// TODO Auto-generated method stub
		String filename=out.getFilename();
		String version=out.getVersion();
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String path=realPath+filename;
		 File file = new File(path);  
		
	        ArrayList<ArrayList<Object>> result = ExcelUtil.readExcel(file);  
	        for(int i = 1 ;i < result.size() ;i++){  
	        	 Kcm record=new Kcm();
	        	 record.setVersion(version);
	        	 record.setKcbh(result.get(i).get(0).toString());
	        	 record.setKcm(result.get(i).get(1).toString());
	        	 kcMapper.insertSelective(record);
	        }  
	  
	}

	@Override
	public List<Outline1> getPyfan() {
		// TODO Auto-generated method stub
		Outline1Example example=new Outline1Example();
	return	outMapper.selectByExample(example);				
	}

	@Override
	public List<Kcm> getKcm(String version) {
		// TODO Auto-generated method stub
		KcmExample example=new KcmExample();
		pojo.KcmExample.Criteria cri= example.createCriteria();
		cri.andVersionEqualTo(version);
	return 	kcMapper.selectByExample(example);
		
	}

	@Override
	public void kcmDel(String version) {
		// TODO Auto-generated method stub
		KcmExample example=new KcmExample();
		pojo.KcmExample.Criteria cri = example.createCriteria();
		cri.andVersionEqualTo(version);
		kcMapper.deleteByExample(example);
	}

}
