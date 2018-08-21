package service;

import java.util.List;

import pojo.Notes;
import pojo.Xsb1;
import util.PageResponse;

public interface NotesService {
	List<Notes> notesSearch(String room,String kcm);
	List<Notes> notesSearch(String room);

	PageResponse notesSearch(int page,int limit,String jobnumber,String kcbh);
	PageResponse notesSearch3(int page,int limit,String room,String str,String id);
	void notesDel(long id);
	void notesDelAll(String room,String str,String id);
	void notesAdd(List<Xsb1> list,String teacher,String str,String id,String room);
}
