package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jl.LbTj;
import mapper.LbTjMapper;

@Service
public class TjServiceImpl implements TjService{
	
	@Autowired
	private LbTjMapper lbtjMapper;
	
	@Override
	public List<LbTj> getLbTj() {
		// TODO Auto-generated method stub
		return lbtjMapper.getLbTj();
	}

	@Override
	public List<LbTj> getLbTjByZid(String zid) {
		// TODO Auto-generated method stub
		return lbtjMapper.getLbTjByZid(zid);
	}

	@Override
	public List<LbTj> getWxTj() {
		// TODO Auto-generated method stub
		return lbtjMapper.getWxTj();
	}

	@Override
	public List<LbTj> getWxTjByZid(String zid) {
		// TODO Auto-generated method stub
		return lbtjMapper.getWxTjByZid(zid);
	}

	@Override
	public List<LbTj> getWxTjBySj(String sj) {
		// TODO Auto-generated method stub
		String []time=sj.split("~");
		return lbtjMapper.getWxTjBySj(time[0],time[1]);
	}

	@Override
	public List<LbTj> getWxTjByDc(String cs) {
		// TODO Auto-generated method stub
		String []dc=cs.split("!");
		String []time=dc[0].split("~");
		String zid=dc[1];
		return lbtjMapper.getWxTjByDc(time[0],time[1],zid);
	}

	@Override
	public List<LbTj> getWbTj() {
		// TODO Auto-generated method stub
		return lbtjMapper.getWbTj();
	}

	@Override
	public List<LbTj> getWbTjByZid(String zid) {
		// TODO Auto-generated method stub
		return lbtjMapper.getWbTjByZid(zid);
	}

	@Override
	public List<LbTj> getWbTjBySj(String sj) {
		// TODO Auto-generated method stub
				String []time=sj.split("~");
				return lbtjMapper.getWbTjBySj(time[0],time[1]);
	}

	@Override
	public List<LbTj> getWbTjByDc(String cs) {
		// TODO Auto-generated method stub
		String []dc=cs.split("!");
		String []time=dc[0].split("~");
		String zid=dc[1];
		return lbtjMapper.getWbTjByDc(time[0],time[1],zid);
	}
	
}
