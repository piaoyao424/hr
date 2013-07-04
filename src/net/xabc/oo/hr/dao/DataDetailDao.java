package net.xabc.oo.hr.dao;

import java.util.List;

import net.xabc.oo.hr.entity.Datadetail;



public interface DataDetailDao {

	public List getDataDetailByDataTypeId(int dataTypeId);
	public Datadetail getDataDetailById(int dataDetailId);
	public int addExamFist(Datadetail dataDetail);
	public int deleteExamFist(Datadetail dataDetail);
	public int deleteDetaDetailByDataTypeId(int dataTypeId);

}
