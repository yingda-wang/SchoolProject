package service;

import java.util.List;

import pojo.Xsb1;
import util.PageResponse;

public interface StuService {
	void stuAdd(String kcm,String kcbh,String filename,String jobNumber);
   String stuJy(String kcbh,String kcm,String jobNumber);
   PageResponse stuSearch(int page,int limit,String jobNumber);
   PageResponse stuSearch(String bh,int page,int limit,String jobNumber);
   PageResponse stuSearch1(String bh,int page,int limit,String jobNumber);
   
   PageResponse stuSearch(String xuehao,String bh,int page,int limit,String jobNumber);
   void stuDel(long id);
   void stuEditName(long id,String name);
   void updateState(List<Xsb1> list);
   void updateState(String xuehao,String kcbh,String jobnumber);
   void updateState1(String list);
   String stuAddJy(String room,String str,String id);
}
