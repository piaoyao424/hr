package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.ExamSecondLeveBiz;
import net.xabc.oo.hr.entity.Examsecondlevel;
import net.xabc.oo.hr.web.form.ExamSecondLevelForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class ExamSecondLevelAction extends DispatchAction {
	private ExamSecondLeveBiz examSecondLeveBiz;

	public ExamSecondLeveBiz getExamSecondLeveBiz() {
		return examSecondLeveBiz;
	}

	public void setExamSecondLeveBiz(ExamSecondLeveBiz examSecondLeveBiz) {
		this.examSecondLeveBiz = examSecondLeveBiz;
	}
	/**
	 * 查找二级分类试题
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */

	public ActionForward selectExamSecond(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String forward = "";
		try {
			String dataDetailId=request.getParameter("dataDetailId");
			if(dataDetailId!=null){
				List examSecondAll = examSecondLeveBiz.getExamSecondLevelByEslDataDetailId(Integer.parseInt(dataDetailId));
				request.setAttribute("examSecondAll", examSecondAll);
				request.setAttribute("dataDetailId", dataDetailId);
			}
			forward ="selectexamSecond";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/***
	 * 添加二级分类试题
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward addExamSecond(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String forward = "";
		try {
			ExamSecondLevelForm examSecondLevelForm =(ExamSecondLevelForm)form;
			int count = examSecondLeveBiz.addExamSecondLevel(examSecondLevelForm);
			if(count>0){
				this.selectExamSecond(mapping, form, request, response);
			}
			forward = "selectexamSecond";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	/***
	 * 删除二级分类试题
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward deleteExamSecond(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String forward = "";
		String eslId = request.getParameter("eslId");
		try {
			if(eslId!=null){
				Examsecondlevel examSecondLevel = new Examsecondlevel();
				examSecondLevel.setEslId(Integer.parseInt(eslId));
				int count = examSecondLeveBiz.deleteExamSecondLevel(examSecondLevel);
				if(count>0){
					this.selectExamSecond(mapping, form, request, response);
				}
			}
			forward = "selectexamSecond";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);}
}
