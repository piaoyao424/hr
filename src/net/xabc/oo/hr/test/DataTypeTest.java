package net.xabc.oo.hr.test;
import net.xabc.oo.hr.dao.DataTypeDao;
import net.xabc.oo.hr.entity.Datatype;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DataTypeTest {
	public static void main(String [] args){
		dataType();
	}

	public static void dataType(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("classpath:net/xabc/oo/config/beans.xml");
		DataTypeDao dataTypeDao = (DataTypeDao) ac.getBean("DataTypeDao");
		Datatype dataType=dataTypeDao.selectDataTypeById(1);
		System.out.println(dataType.getDatatypeName()+dataType.getDatatypeId());
		}
	}
 
