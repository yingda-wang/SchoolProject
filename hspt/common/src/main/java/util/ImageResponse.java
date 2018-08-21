package util;

import java.util.List;
import java.util.Map;

public class ImageResponse {
	private int code;
	private String msg;
	private List<Map<String,String>> data;
	@Override
	public String toString() {
		return "ImageResponse [code=" + code + ", msg=" + msg + ", data=" + data + "]";
	}
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
	public List<Map<String, String>> getData() {
		return data;
	}
	public void setData(List<Map<String, String>> data) {
		this.data = data;
	}	
}
