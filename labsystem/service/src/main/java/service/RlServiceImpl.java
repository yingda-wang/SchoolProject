package service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.KcbMapper;
import mapper.RlMapper;
import pojo.Kcb;
import pojo.KcbExample;
import pojo.Rl;
import pojo.RlExample;
import pojo.RlExample.Criteria;
import util.ExcelUtil;
import util.PageResponse;

@Service
public class RlServiceImpl implements RlService{
	@Autowired
	private RlMapper rlMapper;
	@Autowired
	private KcbMapper kcbMapper;
	@Autowired
	HttpServletRequest request;
	@Override
	public void rlAdd(Rl rl) {
		// TODO Auto-generated method stub
		rlMapper.insertSelective(rl);
	}
	@Override
	public List<Rl> rlJy(String xn,String xq) {
		// TODO Auto-generated method stub
		RlExample example=new RlExample();		
		Criteria cri = example.createCriteria();
		cri.andXnEqualTo(xn);
		cri.andXqEqualTo(xq);
		return rlMapper.selectByExample(example);
	}
	@Override
	public PageResponse getRlList(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		RlExample example=new RlExample();
		List<Rl> list = rlMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Rl> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;	}
	@Override
	public void rlDel(int id) {
		// TODO Auto-generated method stub
		rlMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void rlyyUp(int id) {
		// TODO Auto-generated method stub
		Rl rl=new Rl();
		rl.setId(id);
		Rl rl1=new Rl();
		rl1.setState("未应用");
		RlExample example=new RlExample();
		Criteria cri = example.createCriteria();
		cri.andStateEqualTo("已应用");
		rlMapper.updateByExampleSelective(rl1, example);
		rl.setState("已应用");
		rlMapper.updateByPrimaryKeySelective(rl);
	}
	@Override
	public void rlgx(String filename) {
		// TODO Auto-generated method stub
		String realPath=request.getSession().getServletContext().getRealPath("/");
		String path=realPath+filename;
		KcbExample example=new KcbExample();
		kcbMapper.deleteByExample(example);
		
		 File file = new File(path);  
	        ArrayList<ArrayList<Object>> result = ExcelUtil.readExcel(file);  
	        for(int i = 2 ;i < result.size()-1 ;i++){ 
	        	Kcb record=new Kcb();                  
	        	record.setYue(result.get(i).get(0).toString());
	        	record.setZhou(result.get(i).get(1).toString());
	        	record.setXingqi1(result.get(i).get(2).toString());
	        	record.setJieri1(result.get(i).get(3).toString());
	        	record.setXingqi2(result.get(i).get(4).toString());
	        	record.setJieri2(result.get(i).get(5).toString());
	        	record.setXingqi3(result.get(i).get(6).toString());
	        	record.setJieri3(result.get(i).get(7).toString());
	        	record.setXingqi4(result.get(i).get(8).toString());
	        	record.setJieri4(result.get(i).get(9).toString());
	        	record.setXingqi5(result.get(i).get(10).toString());
	        	record.setJieri5(result.get(i).get(11).toString());
	        	record.setXingqi6(result.get(i).get(12).toString());
	        	record.setJieri6(result.get(i).get(13).toString());
	        	record.setXingqi7(result.get(i).get(14).toString());
	        	record.setJieri7(result.get(i).get(15).toString());
	        	kcbMapper.insertSelective(record);
	        }  
	}
	@Override
	public List<Rl> selectRl(String state) {
		return rlMapper.selectRl(state);
	}

}
