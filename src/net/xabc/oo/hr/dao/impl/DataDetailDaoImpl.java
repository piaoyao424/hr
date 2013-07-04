package net.xabc.oo.hr.dao.impl;

import java.util.List;

import net.xabc.oo.hr.dao.DataDetailDao;
import net.xabc.oo.hr.entity.Datadetail;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class DataDetailDaoImpl extends HibernateDaoSupport implements DataDetailDao {

	/**
	 * 根据数据字典Id查找字典详细
	 */
	public List getDataDetailByDataTypeId(int dataTypeId) {
		String hql="from DataDetail dataDetail where dataDetail.dataType.datatypeId=?";
		Query query=this.getSession().createQuery(hql);
		query.setInteger(0, dataTypeId);
		List DataDetailsList=query.list();
		if(DataDetailsList.size()>0 && DataDetailsList!=null){
			return DataDetailsList;
		}else{
			return null;
		}
	}

	/**
	 * 根据详细Id查找
	 */
	public Datadetail getDataDetailById(int dataDetailId) {
		Datadetail dataDetail=(Datadetail) this.getHibernateTemplate().get(Datadetail.class,dataDetailId);
		return dataDetail;
	}
/**
 * 添加一级分类试题
 */
	public int addExamFist(Datadetail dataDetail) {
	try {
		this.getHibernateTemplate().save(dataDetail);
		return 1;
	} catch (DataAccessException e) {
		e.printStackTrace();
	}
		return 0;
	}
	/**
	 *删除一级分类试题
	 */
public int deleteExamFist(Datadetail dataDetail) {
	try {
		this.getHibernateTemplate().delete(dataDetail);
		return 1;
	} catch (DataAccessException e) {
		e.printStackTrace();
	}
	return 0;
}


     /**
      * 根据主键的id删除
      */
	public int deleteDetaDetailByDataTypeId(int dataTypeId) {
		String hql="delete from DataDetail dataDetail where dataDetail.dataType.datatypeId=?";
		Query query=this.getSession().createSQLQuery(hql);
		query.setInteger(0,dataTypeId);
		return 0;
	}

	

}
