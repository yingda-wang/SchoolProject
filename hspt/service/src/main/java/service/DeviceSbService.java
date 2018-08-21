package service;

import jl.Cs;
import pojo.Device;
import pojo.Devicescrappedapplyregist;
import util.PageResponse;

public interface DeviceSbService {
	public void sbInsert(Devicescrappedapplyregist devicescrappedapplyregist);
	public PageResponse getSb(int page, int limit);
	public void SbDel(long id);
	public String cfjy(String bh);
}
