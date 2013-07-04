package net.xabc.oo.hr.biz;

import java.util.List;

import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.web.form.ExamFistForm;

public interface DataDetaiBiz {
	public List getDataDetailByDataTypeId(int dataTypeId);
	public Datadetail getDataDetailById(int dataDetailId);
	public int addExamFist(ExamFistForm examFistForm);
	public int deleteExamFist(Datadetail dataDetail);
}
