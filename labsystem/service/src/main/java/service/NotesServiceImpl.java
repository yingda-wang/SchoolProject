package service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import mapper.NotesMapper;
import pojo.Authority;
import pojo.Notes;
import pojo.NotesExample;
import pojo.NotesExample.Criteria;
import pojo.Xsb1;
import util.PageResponse;


@Service
public class NotesServiceImpl implements NotesService{
	@Autowired
	private NotesMapper notesMapper;
	@Autowired
	private HttpSession session;
	@Override
	public List<Notes> notesSearch(String room, String kcm) {
		// TODO Auto-generated method stub
		String nf=session.getAttribute("nf").toString();

		Notes notes=new Notes();
		notes.setKcm(kcm);
		notes.setNf(nf);
		notes.setRoomcode(room);
		return notesMapper.selectNotes(notes);
	}
	@Override
	public PageResponse notesSearch(int page, int limit, String jobnumber, String kcbh) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		NotesExample example=new NotesExample();
		Criteria cri = example.createCriteria();
		cri.andKcbhEqualTo(kcbh);
		cri.andUsernameEqualTo(jobnumber);
		List<Notes> list = notesMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Notes> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}
	@Override
	public void notesDel(long id) {
		// TODO Auto-generated method stub
		notesMapper.deleteByPrimaryKey(id);
	}
	@Override
	public void notesDelAll(String room, String str,String id) {
		// TODO Auto-generated method stub
		String nf=session.getAttribute("nf").toString();
		NotesExample example=new NotesExample();
		Criteria cri = example.createCriteria();
		cri.andRoomcodeEqualTo(room);
		cri.andNfEqualTo(nf);
		cri.andStrEqualTo(str);
		cri.andIdEqualTo(id);
		notesMapper.deleteByExample(example);
	}
	@Override
	public List<Notes> notesSearch(String room) {
		Notes notes=new Notes();
		String nf=session.getAttribute("nf").toString();
		notes.setNf(nf);
		
		notes.setRoomcode(room);
		return notesMapper.selectNotes1(notes);
	}
	@Override
	public void notesAdd(List<Xsb1> list, String teacher, String str, String id,String room) {
		// TODO Auto-generated method stub
		String nf=session.getAttribute("nf").toString();
		Authority role=(Authority)session.getAttribute("user");
		String username=role.getJobnumber();
		for(Xsb1 stu:list){
			Notes notes=new Notes();
			notes.setId(id);
			notes.setName(teacher);
			notes.setKcbh(stu.getKcbh());
			notes.setKcm(stu.getKcm());
			notes.setNf(nf);
			notes.setStudent(stu.getStudent());
			notes.setRoomcode(room);
			notes.setUsername(username);
			notes.setStr(str);
			notes.setXuehao(stu.getXuehao());
			notesMapper.insertSelective(notes);
		}
	}
	@Override
	public PageResponse notesSearch3(int page, int limit, String room, String str, String id) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		NotesExample example=new NotesExample();
		Criteria cri = example.createCriteria();
		cri.andRoomcodeEqualTo(room);
		cri.andStrEqualTo(str);
		cri.andIdEqualTo(id);
		cri.andNfEqualTo(session.getAttribute("nf").toString());
		List<Notes> list = notesMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Notes> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		
		return pageResponse;
	}

}
