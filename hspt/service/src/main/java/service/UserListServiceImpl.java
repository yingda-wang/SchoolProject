package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.InformationMapper;
import mapper.UserListMapper;
import pojo.Information;
import user.Nation;
import user.Party;
import user.Technical;
import user.UserInfo;
import user.UserInfoLike;
import user.UserQx;
import user.ZPosition;
import util.PageResponse;


@Service
public class UserListServiceImpl implements UserListService{
	@Autowired
	private UserListMapper userListMapper;

	@Override
	public List<Party> getParty() {
		
		return userListMapper.getParty();
	}

	@Override
	public List<Nation> getNation() {
		// TODO Auto-generated method stub
		return userListMapper.getNation();
	}

	@Override
	public List<Technical> getTechnical() {
		// TODO Auto-generated method stub
		return userListMapper.getTechnical();
	}

	@Override
	public void setUserInfo(UserInfo userInfo) {
		userListMapper.setUserInfo(userInfo);
	}

	@Override
	public PageResponse getUserInfo(int page, int limit) {
	
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<UserInfo> list = userListMapper.getUserInfo();
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<UserInfo> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public List<ZPosition> getZu() {
		// TODO Auto-generated method stub
		return userListMapper.getZu();
	}

	@Override
	public List<ZPosition> getPosition(int zId) {
		String zid =zId+"";
		if(("").equals(zid))
		{
		 zId=0;
		 return userListMapper.getPosition(zId);
		}else{
			return userListMapper.getPosition(zId);

		}
	}

	@Override
	public void delUserInfo(int id) {
		userListMapper.delUserInfo(id);
	}

	@Override
	public void updateQx(String qx, int id) {
		UserQx userQx = new UserQx();
		if("true".equals(qx)){
			qx = "����";
		}else{
			qx="�ر�";
		}
		userQx.setQx(qx);
		userQx.setId(id);
		List<UserQx>list = new ArrayList<>();
		list.add(userQx);
		userListMapper.updateQx(userQx);;
	}

	@Override
	public PageResponse getUserInfoLike(int page, int limit,String searchName) {
		System.out.println(searchName);
		PageResponse pageResponse=new PageResponse();
		//���÷�ҳ��Ϣ
		PageHelper.startPage(page, limit);
		List<UserInfoLike> list = userListMapper.getUserInfoLike(searchName);
		pageResponse.setData(list);
		//ȡ��ҳ���
		PageInfo<UserInfoLike> pageInfo = new PageInfo<>(list);
		//ȡ�ܼ�¼��
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

	@Override
	public void updateUserInfo(UserInfo userInfo) {
		userListMapper.updateUserInfo(userInfo);
	}

	@Override
	public UserInfo getPersonInfo(int id) {
		
		return userListMapper.getPersonInfo(id);
	}

	@Override
	public void updatePersonInfo(UserInfo userInfo) {
		userListMapper.updatePersonInfo(userInfo);
		
	}


}
