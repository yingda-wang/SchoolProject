package service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.NotesMapper;
import mapper.Xsb1Mapper;
import pojo.Authority;
import pojo.Notes;
import pojo.NotesExample;
import pojo.Rl;
import pojo.RlExample;
import pojo.Xsb1;
import pojo.Xsb1Example;
import pojo.Xsb1Example.Criteria;
import util.ExcelUtil;
import util.JsonUtils;
import util.PageResponse;

@Service
public class StuServiceImpl implements StuService{
	@Autowired
	HttpServletRequest request;
	@Autowired
	private Xsb1Mapper xsbMapper;
	@Autowired
	private NotesMapper notesMapper;
	@Override
	public void stuAdd(String kcm, String kcbh, String filename,String jobNumber) {
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String path=realPath+filename;
		 File file = new File(path);  
		
	        ArrayList<ArrayList<Object>> result = ExcelUtil.readExcel(file);  
	        
	        for(int i = 1 ;i < result.size() ;i++){  
	        	 Xsb1 record=new Xsb1();	        	 
	        	record.setJobnumber(jobNumber);
	        	record.setKcbh(kcbh);
	        	record.setKcm(kcm);
	        	record.setXuehao(result.get(i).get(0).toString());
	        	record.setStudent(result.get(i).get(1).toString());
	        	record.setState("未应用");
	        	xsbMapper.insertSelective(record);
	        }  
	  

	}
	@Override
	public String stuJy(String kcbh, String kcm,String jobNumber) {
		// TODO Auto-generated method stub
		System.out.println("imp"+"--"+kcbh+"--"+kcm);
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		cri.andKcbhEqualTo(kcbh);
		cri.andKcmEqualTo(kcm);
		cri.andJobnumberEqualTo(jobNumber);
		if (xsbMapper.selectByExample(example).size()>0){
			return "1";
		}else{
			return "0";
		}
	}
	@Override
	public PageResponse stuSearch(int page, int limit,String jobNumber) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		cri.andJobnumberEqualTo(jobNumber);
		List<Xsb1> list = xsbMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Xsb1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}
	@Override
	public PageResponse stuSearch(String bh, int page, int limit,String jobNumber) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		
		cri.andKcbhLike("%"+bh+"%");
		cri.andJobnumberEqualTo(jobNumber);
		List<Xsb1> list = xsbMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Xsb1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}
	@Override
	public PageResponse stuSearch1(String bh, int page, int limit,String jobNumber) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		cri.andStateEqualTo("未应用");
		cri.andKcbhEqualTo(bh);
		cri.andJobnumberEqualTo(jobNumber);
		List<Xsb1> list = xsbMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Xsb1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}
	@Override
	public void stuDel(long id) {
		// TODO Auto-generated method stub
		xsbMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void stuEditName(long id, String name) {
		// TODO Auto-generated method stub
		Xsb1 xsb=new Xsb1();
		xsb.setId(id);
		xsb.setStudent(name);
		xsbMapper.updateByPrimaryKeySelective(xsb);
	}
	@Override
	public PageResponse stuSearch(String xuehao, String bh, int page, int limit, String jobNumber) {
			
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		cri.andXuehaoLike("%"+xuehao+"%");
		cri.andKcbhEqualTo(bh);
		cri.andStateEqualTo("未应用");
		cri.andJobnumberEqualTo(jobNumber);
		List<Xsb1> list = xsbMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Xsb1> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}
	@Override
	public void updateState(List<Xsb1> list) {
		// TODO Auto-generated method stub
		for(Xsb1 xs:list){
			Xsb1 example=new Xsb1();
			example.setId(xs.getId());
			example.setState("已应用");
			xsbMapper.updateByPrimaryKeySelective(example);
		}
		
	}
	@Override
	public void updateState(String xuehao, String kcbh,String jobnumber) {
		// TODO Auto-generated method stub
		Xsb1Example example=new Xsb1Example();
		Criteria cri = example.createCriteria();
		cri.andXuehaoEqualTo(xuehao);
		cri.andKcbhEqualTo(kcbh);
		cri.andJobnumberEqualTo(jobnumber);
		Xsb1 xsb=new Xsb1();
		xsb.setState("未应用");
		xsbMapper.updateByExampleSelective(xsb, example);
	}
	@Override
	public void updateState1(String list) {
		List<Notes> temp=JsonUtils.jsonToList(list,Notes.class);
		for(Notes notes:temp){
			String xuehao=notes.getXuehao();
			String jobnumber=notes.getUsername();
			String kcbh=notes.getKcbh();
			updateState(xuehao,kcbh,jobnumber);
		}
		
	}
	@Override
	public String stuAddJy(String room, String str, String id) {
		// TODO Auto-generated method stub
		Authority role=(Authority)request.getSession().getAttribute("user");
		String jobnumber=role.getJobnumber();
		String nf=request.getSession().getAttribute("nf").toString();
		NotesExample example=new NotesExample();
		pojo.NotesExample.Criteria cri = example.createCriteria();
		cri.andUsernameNotEqualTo(jobnumber);
		cri.andNfEqualTo(nf);
		cri.andStrEqualTo(str);
		cri.andIdEqualTo(id);
		cri.andRoomcodeEqualTo(room);
		List<Notes> list = notesMapper.selectByExample(example);
		if(list.size()>0)
			return "1";
		else
			return "0";
		
	}

	
	
}
