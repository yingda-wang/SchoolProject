package util;

import java.io.ByteArrayOutputStream;  
import java.io.File;  
import java.io.FileInputStream;  
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.OutputStream;  
import java.text.DecimalFormat;  
import java.text.SimpleDateFormat;  
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;  
import org.apache.poi.hssf.usermodel.HSSFRow;  
import org.apache.poi.hssf.usermodel.HSSFSheet;  
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCell;  
import org.apache.poi.xssf.usermodel.XSSFRow;  
import org.apache.poi.xssf.usermodel.XSSFSheet;  
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import pojo.Notes;  
  
public class ExcelUtil {  
    //Ĭ�ϵ�Ԫ������Ϊ����ʱ��ʽ  
    private static DecimalFormat df = new DecimalFormat("0");  
    // Ĭ�ϵ�Ԫ���ʽ�������ַ���   
    private static SimpleDateFormat sdf = new SimpleDateFormat(  "yyyy-MM-dd HH:mm:ss");   
    // ��ʽ������  
    private static DecimalFormat nf = new DecimalFormat("0");    
    public static ArrayList<ArrayList<Object>> readExcel(File file){  
        if(file == null){  
            return null;  
        }  
        if(file.getName().endsWith("xlsx")){  
            //����ecxel2007  
            return readExcel2007(file);  
        }else{  
            //����ecxel2003  
            return readExcel2003(file);  
        }  
    }  
    /*  
     * @return �����ؽ���洢��ArrayList�ڣ��洢�ṹ���λ��������  
     * lists.get(0).get(0)��ʾ��ȥExcel��0��0�е�Ԫ��  
     */  
    public static ArrayList<ArrayList<Object>> readExcel2003(File file){  
        try{  
            ArrayList<ArrayList<Object>> rowList = new ArrayList<ArrayList<Object>>();  
            ArrayList<Object> colList;  
            HSSFWorkbook wb = new HSSFWorkbook(new FileInputStream(file));  
            HSSFSheet sheet = wb.getSheetAt(0);  
            HSSFRow row;  
            HSSFCell cell;  
            Object value;  
            for(int i = sheet.getFirstRowNum() , rowCount = 0; rowCount < sheet.getPhysicalNumberOfRows() ; i++ ){  
                row = sheet.getRow(i);  
                colList = new ArrayList<Object>();  
                if(row == null){  
                    //����ȡ��Ϊ��ʱ  
                    if(i != sheet.getPhysicalNumberOfRows()){//�ж��Ƿ������һ��  
                        rowList.add(colList);  
                    }  
                    continue;  
                }else{  
                    rowCount++;  
                }  
                for( int j = row.getFirstCellNum() ; j <= row.getLastCellNum() ;j++){  
                    cell = row.getCell(j);  
                    if(cell == null || cell.getCellType() == HSSFCell.CELL_TYPE_BLANK){  
                        //���õ�Ԫ��Ϊ��  
                        if(j != row.getLastCellNum()){//�ж��Ƿ��Ǹ��������һ����Ԫ��  
                            colList.add("");  
                        }  
                        continue;  
                    }  
                    switch(cell.getCellType()){  
                     case XSSFCell.CELL_TYPE_STRING:    
                            System.out.println(i + "��" + j + " �� is String type");    
                            value = cell.getStringCellValue();    
                            break;    
                        case XSSFCell.CELL_TYPE_NUMERIC:    
                            if ("@".equals(cell.getCellStyle().getDataFormatString())) {    
                                value = df.format(cell.getNumericCellValue());    
                            } else if ("General".equals(cell.getCellStyle()    
                                    .getDataFormatString())) {    
                                value = nf.format(cell.getNumericCellValue());    
                            } else {    
                                value = sdf.format(HSSFDateUtil.getJavaDate(cell    
                                        .getNumericCellValue()));    
                            }    
                            System.out.println(i + "��" + j    
                                    + " �� is Number type ; DateFormt:"    
                                    + value.toString());   
                            break;    
                        case XSSFCell.CELL_TYPE_BOOLEAN:    
                            System.out.println(i + "��" + j + " �� is Boolean type");    
                            value = Boolean.valueOf(cell.getBooleanCellValue());  
                            break;    
                        case XSSFCell.CELL_TYPE_BLANK:    
                            System.out.println(i + "��" + j + " �� is Blank type");    
                            value = "";    
                            break;    
                        default:    
                            System.out.println(i + "��" + j + " �� is default type");    
                            value = cell.toString();    
                    }// end switch  
                    colList.add(value);  
                }//end for j  
                rowList.add(colList);  
            }//end for i  
              
            return rowList;  
        }catch(Exception e){  
            return null;  
        }  
    }  
      
    public static ArrayList<ArrayList<Object>> readExcel2007(File file){  
        try{  
            ArrayList<ArrayList<Object>> rowList = new ArrayList<ArrayList<Object>>();  
            ArrayList<Object> colList;  
            XSSFWorkbook wb = new XSSFWorkbook(new FileInputStream(file));  
            XSSFSheet sheet = wb.getSheetAt(0);  
            XSSFRow row;  
            XSSFCell cell;  
            Object value;  
            for(int i = sheet.getFirstRowNum() , rowCount = 0; rowCount < sheet.getPhysicalNumberOfRows() ; i++ ){  
                row = sheet.getRow(i);  
                colList = new ArrayList<Object>();  
                if(row == null){  
                    //����ȡ��Ϊ��ʱ  
                    if(i != sheet.getPhysicalNumberOfRows()){//�ж��Ƿ������һ��  
                        rowList.add(colList);  
                    }  
                    continue;  
                }else{  
                    rowCount++;  
                }  
                for( int j = row.getFirstCellNum() ; j <= row.getLastCellNum() ;j++){  
                    cell = row.getCell(j);  
                    if(cell == null || cell.getCellType() == HSSFCell.CELL_TYPE_BLANK){  
                        //���õ�Ԫ��Ϊ��  
                        if(j != row.getLastCellNum()){//�ж��Ƿ��Ǹ��������һ����Ԫ��  
                            colList.add("");  
                        }  
                        continue;  
                    }  
                    switch(cell.getCellType()){  
                     case XSSFCell.CELL_TYPE_STRING:    
                            System.out.println(i + "��" + j + " �� is String type");    
                            value = cell.getStringCellValue();    
                            break;    
                        case XSSFCell.CELL_TYPE_NUMERIC:    
                            if ("@".equals(cell.getCellStyle().getDataFormatString())) {    
                                value = df.format(cell.getNumericCellValue());    
                            } else if ("General".equals(cell.getCellStyle()    
                                    .getDataFormatString())) {    
                                value = nf.format(cell.getNumericCellValue());    
                            } else {    
                                value = sdf.format(HSSFDateUtil.getJavaDate(cell    
                                        .getNumericCellValue()));    
                            }    
                            System.out.println(i + "��" + j    
                                    + " �� is Number type ; DateFormt:"    
                                    + value.toString());   
                            break;    
                        case XSSFCell.CELL_TYPE_BOOLEAN:    
                            System.out.println(i + "��" + j + " �� is Boolean type");    
                            value = Boolean.valueOf(cell.getBooleanCellValue());  
                            break;    
                        case XSSFCell.CELL_TYPE_BLANK:    
                            System.out.println(i + "��" + j + " �� is Blank type");    
                            value = "";    
                            break;    
                        default:    
                            System.out.println(i + "��" + j + " �� is default type");    
                            value = cell.toString();    
                    }// end switch  
                    colList.add(value);  
                }//end for j  
                rowList.add(colList);  
            }//end for i  
              
            return rowList;  
        }catch(Exception e){  
            System.out.println("exception");  
            return null;  
        }  
    }  
      
    public static void writeExcel(ArrayList<ArrayList<Object>> result,String path,List<Notes> notes){  
        if(result == null){  
            return;  
        }  
        
        HSSFWorkbook wb = new HSSFWorkbook();  
        HSSFSheet sheet = wb.createSheet("sheet1");  
        HSSFCellStyle cellStyle = wb.createCellStyle();    
        
        ArrayList<Object> list = new ArrayList<Object>();
        for(int i=0;i<45;i++){
        	list.add(i,"");
        	if(i==2){
        		list.add(2,"����һ");
        	} if(i==9){
        		 list.add(9,"���ڶ�");
        	} if(i==16){
        		 list.add(16,"������");
        	} if(i==23){
        		list.add(23,"������");
        	} if(i==30){
        		list.add(30,"������");
        	} if(i==37){
        		  list.add(37,"������");
        	} if(i==44){
        		 list.add(44,"������");
        	}
        }
        result.set(1,list);
        ArrayList<Object> list1 = new  ArrayList<Object>();
        for(int i=0;i<50;i++){
        	list1.add(i,"");
        	if(i==3 || i==10 || i==17  || i==24 || i==31 || i==38 || i==45){
        		list1.add(i,"����");
        	}
        	if(i==5 || i==12 || i==19  || i==26 || i==33 || i==40 || i==47){
        		list1.add(i,"����");
        	}
        	if(i==7 || i==14 || i==21  || i==28 || i==35 || i==42 || i==49){
        		 list1.add(i,"����");
        	}
        }
        result.add(2,list1);
        
        ArrayList<Object> list3 = new  ArrayList<Object>();
        for(int k=0;k<45;k++){      	
	        list3.add(k,"");
	        if(k==0){
	        	list3.add(k,result.get(3).get(0)) ;      
	        }
	        if(k==1){
	        	list3.add(k,result.get(3).get(1)) ;      
	        }
	        if(k==2){
	        	list3.add(k,result.get(3).get(2)) ;      
	        }
	        if(k==9){
	        list3.add(k,result.get(3).get(4)) ;         
	        }
	        if(k==16){
	            list3.add(k,result.get(3).get(6)) ;       
	            }
	        if(k==23){
	            list3.add(k,result.get(3).get(8)) ;       
	            }      
	        if(k==30){
	            list3.add(k,result.get(3).get(10)) ;       
	            }    
	        if(k==37){
	            list3.add(k,result.get(3).get(12)) ;       
	            }
	        if(k==44){
	            list3.add(k,result.get(3).get(14)) ;
	            }
	        }
        	result.set(3, list3);
       
        for(int m=4;m<30;m++){
        	 ArrayList<Object> list2 = new  ArrayList<Object>();
            for(int k=0;k<45;k++){      	
		        list2.add(k,"");
		        if(m==30){
		        	 list2.add(k,"");
		        }
		        if(k==0){
		        	list2.add(k,result.get(m).get(0)) ;      
		        }
		        if(k==1){
		        	list2.add(k,result.get(m).get(1)) ;      
		        }
		        if(k==2){
		        	list2.add(k,result.get(m).get(2)) ;      
		        }
		        if(k==9){
		        list2.add(k,result.get(m).get(4)) ;         
		        }
		        if(k==16){
		            list2.add(k,result.get(m).get(6)) ;       
		            }
		        if(k==23){
		            list2.add(k,result.get(m).get(8)) ;       
		            }      
		        if(k==30){
		            list2.add(k,result.get(m).get(10)) ;       
		            }    
		        if(k==37){
		            list2.add(k,result.get(m).get(12)) ;       
		            }
		        if(k==44){
		            list2.add(k,result.get(m).get(14)) ;
		            }
		        }
            	result.set(m, list2);
        	}
        for(int i=0;i<notes.size();i++){
        	ArrayList<Object> notes1 = new ArrayList<Object>();
        	int id = Integer.parseInt(notes.get(i).getId());
        	String str = notes.get(i).getStr();
        	String kcm = notes.get(i).getKcm();
        	String teacher = notes.get(i).getName();
        	for(int k=0;k<50;k++){
        		notes1.add(k,result.get(3+id).get(k)) ;
        	}        	
        	
        	if(str.equals("xq1s1")){
        		notes1.set(3, kcm+teacher);
        	}else if(str.equals("xq1s2")){
        		notes1.set(4, kcm+teacher);
        	}else if(str.equals("xq1x1")){
        		notes1.set(5, kcm+teacher);
        	}else if(str.equals("xq1x2")){
        		notes1.set(6, kcm+teacher);
        	}else if(str.equals("xq1w")){   
        		notes1.set(7, kcm+teacher);
        	}
        	
        	//���ڶ�
        	 if(str.equals("xq2s1")){
        		 notes1.set(10, kcm+teacher);
        	}else if(str.equals("xq2s2")){
        		notes1.set(11, kcm+teacher);
        	}else if(str.equals("xq2x1")){
        		notes1.set(12, kcm+teacher);
        	}else if(str.equals("xq2x2")){
        		notes1.set(13, kcm+teacher);
        	}else if(str.equals("xq2w")){
        		notes1.set(14, kcm+teacher);
        	}
        	//������
        	 if(str.equals("xq3s1")){
        		 notes1.set(17, kcm+teacher);
        	}else if(str.equals("xq3s2")){
        		notes1.set(18, kcm+teacher);
        	}else if(str.equals("xq3x1")){
        		notes1.set(19, kcm+teacher);
        	}else if(str.equals("xq3x2")){
        		notes1.set(20, kcm+teacher);
        	}else if(str.equals("xq3w")){
        		notes1.set(21, kcm+teacher);
        	}
        	//������
        	 if(str.equals("xq4s1")){
        		 notes1.set(24, kcm+teacher);
        	}else if(str.equals("xq4s2")){
        		notes1.set(25, kcm+teacher);
        	}else if(str.equals("xq4x1")){
        		notes1.set(26, kcm+teacher);
        	}else if(str.equals("xq4x2")){
        		notes1.set(27, kcm+teacher);
        	}else if(str.equals("xq4w")){
        		notes1.set(28, kcm+teacher);
        	}
        	//������
        	 if(str.equals("xq5s1")){
        		 notes1.set(31, kcm+teacher);
        	}else if(str.equals("xq5s2")){
        		notes1.set(32, kcm+teacher);
        	}else if(str.equals("xq5x1")){
        		notes1.set(33, kcm+teacher);
        	}else if(str.equals("xq5x2")){
        		notes1.set(34, kcm+teacher);
        	}else if(str.equals("xq5w")){
        		notes1.set(35, kcm+teacher);
        	}
        	//������
        	 if(str.equals("xq6s1")){
        		 notes1.set(38, kcm+teacher);
        	}else if(str.equals("xq6s2")){
        		notes1.set(39, kcm+teacher);
        	}else if(str.equals("xq6x1")){
        		notes1.set(40, kcm+teacher);
        	}else if(str.equals("xq6x2")){
        		notes1.set(41, kcm+teacher);
        	}else if(str.equals("xq6w")){
        		notes1.set(42, kcm+teacher);
        	}
        	//������
        	 if(str.equals("xq7s1")){
        		 notes1.set(45, kcm+teacher);
        	}else if(str.equals("xq7s2")){
        		notes1.set(46, kcm+teacher);
        	}else if(str.equals("xq7x1")){
        		notes1.set(47, kcm+teacher);
        	}else if(str.equals("xq7x2")){
        		notes1.set(48, kcm+teacher);
        	}else if(str.equals("xq7w")){
        		notes1.set(49, kcm+teacher);
        	}
        	 result.set(id+3, notes1);
        }
        for(int i = 0 ;i < result.size() ; i++){  
        	sheet.addMergedRegion(new CellRangeAddress(0,0,0,49));  
        	sheet.addMergedRegion(new CellRangeAddress(2,2,3,4)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,5,6));
            sheet.addMergedRegion(new CellRangeAddress(2,2,10,11)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,12,13));
            sheet.addMergedRegion(new CellRangeAddress(2,2,17,18)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,19,20));
            sheet.addMergedRegion(new CellRangeAddress(2,2,24,25)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,26,27));
            sheet.addMergedRegion(new CellRangeAddress(2,2,31,32)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,33,34));
            sheet.addMergedRegion(new CellRangeAddress(2,2,38,39)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,40,41));
            sheet.addMergedRegion(new CellRangeAddress(2,2,45,46)); 
            sheet.addMergedRegion(new CellRangeAddress(2,2,47,48));
            sheet.addMergedRegion(new CellRangeAddress(1,1,2,8));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,9,15));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,16,22));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,23,29));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,30,36));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,37,43));  
            sheet.addMergedRegion(new CellRangeAddress(1,1,44,50));   
             HSSFRow row = sheet.createRow(i);  
             row.setHeight((short) (25 * 30));             
            if(result.get(i) != null){  
                for(int j = 0; j < result.get(i).size() ; j ++){  
                    HSSFCell cell = row.createCell(j);  
                    cell.setCellValue(result.get(i).get(j).toString());  
                    cellStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//��ֱ
                    cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);//ˮƽ
                    cellStyle.setWrapText(true);
                }  
            }  
        }  
        
        ByteArrayOutputStream os = new ByteArrayOutputStream();  
        try  
        {  
            wb.write(os);  
        } catch (IOException e){  
            e.printStackTrace();  
        }  
        byte[] content = os.toByteArray();  
        File file = new File(path);//Excel�ļ����ɺ�洢��λ�á�  
        OutputStream fos  = null;  
        try  
        {  
            fos = new FileOutputStream(file);  
            fos.write(content);  
            os.close();  
            fos.close();  
        }catch (Exception e){  
            e.printStackTrace();  
        }             
    }  
    public static void writeExcel(String path,String nf){  
    	ArrayList<ArrayList<Object>> result = new ArrayList<ArrayList<Object>>();
        HSSFWorkbook wb = new HSSFWorkbook();         
        HSSFSheet sheet = wb.createSheet("sheet1");
        HSSFCellStyle cellStyle = wb.createCellStyle();    
        ArrayList<Object> list1 = new  ArrayList<Object>();
        ArrayList<Object> list2 = new  ArrayList<Object>();
        ArrayList<Object> list3 = new  ArrayList<Object>();
        ArrayList<Object> list4 = new  ArrayList<Object>();
        ArrayList<Object> list5 = new  ArrayList<Object>();
        ArrayList<Object> list6 = new  ArrayList<Object>();
        list1.add(0,"ͨ�Ź���ѧԺʵ���ѧ�γ̱�"+nf);
        //�ڶ���
        list2.add(0,"�γ�����");
        list2.add(1,"");
        list2.add(2,"�γ̱��");
        list2.add(3,"");
        list2.add(4,"���ۿ��ν���ʦ");
        list2.add(5,"");
        list2.add(6,"ʵ����ο���ʦ");
        list2.add(7,"");
        list2.add(8,"�Ƿ�Ϊ����ʵ���");
        list2.add(9,"");
        list2.add(10,"ʵ�������(ѡ��/����)");
        //������
        list3.add(0,"ʵ�������(����/����)");
        list3.add(1,"");
        list3.add(2,"ʵ�����ѧʱ");
        list3.add(3,"");
        list3.add(4,"ѧԺ(��ѧԺ/��ѧԺ)");
        list3.add(5,"");
        list3.add(6,"�꼶");
        list3.add(7,"");
        list3.add(8,"רҵ");
        list3.add(9,"");
        list3.add(10,"");
        //������
        list4.add(0,"�༶");
        list4.add(1,"");
        list4.add(2,"ѡ��������");
        list4.add(3,"");
        list4.add(4,"ʵ���Ұ���");
        list4.add(5,"");
        list4.add(6,"ʵ��������");
        list4.add(7,"");
        list4.add(8,"ʵ���Ҹ�����");
        list4.add(9,"");
        list4.add(10,"��������");
        //������
        list5.add(0,"");
        //������
        list6.add(0,"ʵ��");
        list6.add(1,"������Ŀ����");
        list6.add(2,"ѧʱ");
        list6.add(3,"��");
        list6.add(4,"����");
        list6.add(5,"�༶");
        list6.add(6,"ʵ������");
        list6.add(7,"ʵ��ʱ��");
        list6.add(8,"ʵ���豸");
        list6.add(9,"ʵ�����");
        list6.add(10,"ָ����ʦ");
        result.add(0,list1);
        result.add(1,list2);
        result.add(2,list3);
        result.add(3,list4);
        result.add(4,list5);
        result.add(5,list6);

        for(int i = 0 ;i < result.size() ; i++){  
        	sheet.addMergedRegion(new CellRangeAddress(0,0,0,10)); 
            sheet.addMergedRegion(new CellRangeAddress(4,4,0,10));
             HSSFRow row = sheet.createRow(i);  
            if(result.get(i) != null){  
                for(int j = 0; j < result.get(i).size() ; j ++){  
                    HSSFCell cell = row.createCell(j);  
                    cell.setCellValue(result.get(i).get(j).toString());  
                    cellStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//��ֱ
                    cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);//ˮƽ
                    cellStyle.setWrapText(true);
                }  
            }  
        }  
        ByteArrayOutputStream os = new ByteArrayOutputStream();  
        try  
        {  
            wb.write(os);  
        } catch (IOException e){  
            e.printStackTrace();  
        }  
        byte[] content = os.toByteArray();  
        File file = new File(path);//Excel�ļ����ɺ�洢��λ�á�  
        OutputStream fos  = null;  
        try  
        {  
            fos = new FileOutputStream(file);  
            fos.write(content);  
            os.close();  
            fos.close();  
        }catch (Exception e){  
            e.printStackTrace();  
        }   
    }
    public static DecimalFormat getDf() {  
        return df;  
    }  
    public static void setDf(DecimalFormat df) {  
        ExcelUtil.df = df;  
    }  
    public static SimpleDateFormat getSdf() {  
        return sdf;  
    }  
    public static void setSdf(SimpleDateFormat sdf) {  
        ExcelUtil.sdf = sdf;  
    }  
    public static DecimalFormat getNf() {  
        return nf;  
    }  
    public static void setNf(DecimalFormat nf) {  
        ExcelUtil.nf = nf;  
    }  
      
      
      
}  