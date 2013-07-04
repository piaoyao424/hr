package net.xabc.oo.hr.dao.impl;
import net.xabc.oo.hr.dao.DataTypeDao;
import net.xabc.oo.hr.entity.Datatype;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
public class DataTypeDaoImpl extends HibernateDaoSupport implements DataTypeDao {

	/**
	 * 根据名称查找
	 */
	public Datatype selectDataTypeByName(String dataTypeName) {
		String hql="from DataType dataType where dataType.datatypeName=?";
		Query query=this.getSession().createQuery(hql);
		query.setString(0, dataTypeName);
		Datatype dataType=(Datatype) query.list().get(0);
		if(dataType.getDatatypeId()>0){
			return dataType;
		}else{
			return null;			
		}
	}

	public Datatype selectDataTypeById(int dataTypeId) {
		Datatype dataType=(Datatype)this.getHibernateTemplate().get(Datatype.class,dataTypeId);
		return dataType;
	}


}
