package service;

import pojo.Deviceaccessoriesnotes;
import util.PageResponse;

public interface DevicePjNotesService {
	public void devicePjNotesAdd(Deviceaccessoriesnotes deviceaccessoriesnotes);
	public PageResponse getDevicepjNotesList(int page, int limit);
	public PageResponse getDeviceListByBh(int page, int limit,long sbid);
	public void devicepjnotesDel(long id);
	public String ifly(long id);
}
