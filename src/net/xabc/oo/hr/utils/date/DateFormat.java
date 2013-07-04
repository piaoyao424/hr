package net.xabc.oo.hr.utils.date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;



public class DateFormat {
	
	
	/**
	 * 获取当前时间
	 * @return
	 */
	public static String getDate(){
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		return format.format(new Date());	
	}
	

	/**
	 * 格式化日期
	 * 把String转化为Data
	 * @param str
	 * @return
	 */
   public static Date parseDate(String str){
	   SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	   Date data=null;
	  try {
		data=format.parse(str);
	  } catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	  }
	  return data;
   }
   
   /**
    * 格式化日期
    * 把Date转化成String
    * @param date
    * @return
    */
   public static String parseString(Date date){
	   SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
	   String str=null;
	   
		try {
			str=format.format(date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  return str;
   }
	
}
