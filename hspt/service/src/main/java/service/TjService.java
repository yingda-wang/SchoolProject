package service;

import java.util.List;

import jl.LbTj;

public interface TjService {
	public List<LbTj> getLbTj();
	public List<LbTj> getWxTj();
	public List<LbTj> getWbTj();
	public List<LbTj> getWxTjByZid(String zid);
	public List<LbTj> getWbTjByZid(String zid);
	public List<LbTj> getWxTjBySj(String sj);
	public List<LbTj> getWbTjBySj(String sj);
	public List<LbTj> getWxTjByDc(String cs);
	public List<LbTj> getWbTjByDc(String cs);
	public List<LbTj> getLbTjByZid(String zid);
}
