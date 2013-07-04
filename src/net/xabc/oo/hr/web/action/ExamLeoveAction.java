package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.DataDetaiBiz;
import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.web.form.ExamFistForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class ExamLeoveAction extends DispatchAction {
	private DataDetaiBiz dataDetaiBiz;

	/**
	 * 查询一级分类试题
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward getListFistExam(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String forward = "";

		try {
			List getListFistExam = dataDetaiBiz.getDataDetailByDataTypeId(4);
			request.setAttribute("ListFistExam", getListFistExam);
			forward = "FistExam";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);

	}

	/**
	 * 添加一级分类试题
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward addFistExam(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			ExamFistForm examFistForm = (ExamFistForm) form;
			int count = dataDetaiBiz.addExamFist(examFistForm);
			if (count > 0) {
				getListFistExam(mapping, form, request, response);
			}
			forward = "FistExam";
		} catch (RuntimeException e) {
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);

	}

	/**
	 * 删除一级分类试题
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward deleteFistExam(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			String dataDetailId = request.getParameter("dataDetailId");
			if (dataDetailId != null) {
				Datadetail dataDetail = new Datadetail();
				dataDetail.setDataDetailId(Integer.parseInt(dataDetailId));
				int count = dataDetaiBiz.deleteExamFist(dataDetail);
				if (count > 0) {
					getListFistExam(mapping, form, request, response);
					forward = "FistExam";
				}
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			forward = "error";
		}

		return mapping.findForward(forward);
	}

	public DataDetaiBiz getDataDetaiBiz() {
		return dataDetaiBiz;
	}

	public void setDataDetaiBiz(DataDetaiBiz dataDetaiBiz) {
		this.dataDetaiBiz = dataDetaiBiz;
	}
}
