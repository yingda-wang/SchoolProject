package util;

import java.util.List;

public class PageResponse {
	@Override
	public String toString() {
		return "PageResponse [code=" + code + ", msg=" + msg + ", count=" + count + ", data=" + data + "]";
	}
	private int code;
	private String msg;
	private long count;
	private List<?> data;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public long getCount() {
		return count;
	}
	public void setCount(long count) {
		this.count = count;
	}
	public List<?> getData() {
		return data;
	}
	public void setData(List<?> data) {
		this.data = data;
	}
}
