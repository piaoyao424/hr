package net.xabc.oo.hr.biz.impl;
import net.xabc.oo.hr.biz.DataTypeBiz;
import net.xabc.oo.hr.dao.DataTypeDao;
import net.xabc.oo.hr.entity.Datatype;

public class DataTypeBizImpl implements DataTypeBiz {
	private DataTypeDao dataTypeDao ;

	public DataTypeDao getDataTypeDao() {
		return dataTypeDao;
	}

	public void setDataTypeDao(DataTypeDao dataTypeDao) {
		this.dataTypeDao = dataTypeDao;
	}

	public Datatype selectDataTypeById(int dateTypeId) {
             return dataTypeDao.selectDataTypeById(dateTypeId);		
	}

	

}
