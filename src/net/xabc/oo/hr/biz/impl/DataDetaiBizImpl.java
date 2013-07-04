package net.xabc.oo.hr.biz.impl;

import java.util.List;

import net.xabc.oo.hr.biz.DataDetaiBiz;
import net.xabc.oo.hr.dao.DataDetailDao;
import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.entity.Datatype;
import net.xabc.oo.hr.web.form.ExamFistForm;
public class DataDetaiBizImpl implements DataDetaiBiz{
	private DataDetailDao dataDetaiDao;

	public DataDetailDao getDataDetaiDao() {
		return dataDetaiDao;
	}

	public void setDataDetaiDao(DataDetailDao dataDetaiDao) {
		this.dataDetaiDao = dataDetaiDao;
	}

	public List getDataDetailByDataTypeId(int dataTypeId) {
		return dataDetaiDao.getDataDetailByDataTypeId(dataTypeId);
	}

	public Datadetail getDataDetailById(int dataDetailId) {
		return dataDetaiDao.getDataDetailById(dataDetailId);
	}
/**
 * 添加一级分类试题
 */
	public int addExamFist(ExamFistForm examFistForm) {
		Datadetail dataDetail = new Datadetail();
			dataDetail.setDataDetailName(examFistForm.getDataDetailName());
			Datatype dataType=new Datatype();
			dataType.setDatatypeId(4);
			dataDetail.setDatatype(dataType);
			dataDetail.setDatatype(dataType);
		    return dataDetaiDao.addExamFist(dataDetail);
	}
	/**
	 * 删除一级分类试题
	 */
public int deleteExamFist(Datadetail dataDetail) {
	try {
		dataDetaiDao.deleteExamFist(dataDetail);
		return 1;
	} catch (RuntimeException e) {
		e.printStackTrace();
	}
	return 0;
}

}
