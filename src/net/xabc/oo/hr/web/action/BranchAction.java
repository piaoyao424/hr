package net.xabc.oo.hr.web.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.BranchBiz;
import net.xabc.oo.hr.biz.PositionBiz;
import net.xabc.oo.hr.entity.Branch;

import net.xabc.oo.hr.web.form.BranchForm;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class BranchAction extends DispatchAction {
	private BranchBiz branchBiz;

	private PositionBiz postionBiz;

	/**
	 * 添加部门
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward addBranch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forword = "";
		try {
			BranchForm branchForm = (BranchForm) form;
			int count = branchBiz.addBranch(branchForm);
			if (count > 0) {
				selectBranch(mapping, form, request, response);
				forword = "sectionType";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
			forword = "error";
		}
		return mapping.findForward(forword);
	}

	/**
	 * 删除部门
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward deleteBranch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forword = "";
		try {
			String branchId = request.getParameter("branchId");
			if (branchId != null) {
				Branch branch = new Branch();
				branch.setBranchId(Integer.parseInt(branchId));
				List list=postionBiz.getPositionByBranchId(Integer.parseInt(branchId));
				if(list!=null && list.size()>0){
					int count=postionBiz.deletePostitionByBranchId(Integer.parseInt(branchId));
				}
				int num = branchBiz.deleteBranch(branch);
				if(num>0){
					selectBranch(mapping, form, request, response);	
				}
			}
			forword = "sectionType";
		} catch (RuntimeException e) {
			e.printStackTrace();
			forword = "error";
		}
		return mapping.findForward(forword);
	}

	/**
	 * 查找所有部门
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward selectBranch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forword = "";
		try {
			List list = branchBiz.getAllBranch();
			request.setAttribute("list", list);
			List branchlist = new ArrayList();
			request.setAttribute("branchlist", branchlist);
			forword = "sectionType";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forword);
	}

	public BranchBiz getBranchBiz() {
		return branchBiz;
	}

	public void setBranchBiz(BranchBiz branchBiz) {
		this.branchBiz = branchBiz;
	}

	public PositionBiz getPostionBiz() {
		return postionBiz;
	}

	public void setPostionBiz(PositionBiz postionBiz) {
		this.postionBiz = postionBiz;
	}

}
