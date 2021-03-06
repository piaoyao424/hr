/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.PositionIssuanceBiz;
import net.xabc.oo.hr.common.SelectOptions;
import net.xabc.oo.hr.entity.Positionissuance;
import net.xabc.oo.hr.web.form.PositionIssuanceForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 * MyEclipse Struts Creation date: 12-15-2009
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 */
public class PositionIssuanceAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private PositionIssuanceBiz positionIssuanceBiz;
	private SelectOptions selectOptions;

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward getList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward = "";
		try {
			String page =request.getParameter("page");
			int curPage=1;
			List positionIssuancelist = null;
			if (page!=null) {
				curPage =Integer.parseInt(page);
				positionIssuancelist= positionIssuanceBiz.selectAll(curPage,2);
			} else {
				positionIssuancelist= positionIssuanceBiz.selectAll(1,2);
			}
			int count =positionIssuanceBiz.getTotalPage();
			int totalPage=count%2==0?count/2:count/2+1;
			request.setAttribute("positionIssuancelist", positionIssuancelist);
			request.setAttribute("count", count);	
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			forward = "position";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward getById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			String branchString=selectOptions.getBranchString().toString();
			if(branchString!=null){
				request.setAttribute("branchString", branchString);
			}
			int id = Integer.parseInt(request.getParameter("id"));
			Positionissuance positionIssuance = positionIssuanceBiz.getById(id);
			request.setAttribute("positionIssuance", positionIssuance);
			forward = "updatePosition";
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "加载失败");
			forward = "error";
		}
		return mapping.findForward(forward);
	}

	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			PositionIssuanceForm positionIssuanceForm =(PositionIssuanceForm)form;
			int count = positionIssuanceBiz.addUser(positionIssuanceForm);
			if(count>0){
				getList(mapping, form, request, response);
				forward ="position";
			}else {
				request.setAttribute("msg", "添加失败");
				forward = "error";
			}
			
		} catch (RuntimeException e) {
			request.setAttribute("msg", "添加失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	public ActionForward upDate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			PositionIssuanceForm positionIssuanceForm =(PositionIssuanceForm)form;
			int count = positionIssuanceBiz.upPass(positionIssuanceForm);
			if(count>0){
				getList(mapping, form, request, response);
				forward ="position";
			}else {
				request.setAttribute("msg", "修改失败");
				forward = "error";
			}
			
		} catch (RuntimeException e) {
			request.setAttribute("msg", "修改失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			int num = Integer.parseInt(request.getParameter("id"));
			Positionissuance positionIssuance = new Positionissuance();
			positionIssuance.setPositionIssuanceId(num);
			int count = positionIssuanceBiz.delete(positionIssuance);
			if(count>0){
				getList(mapping, form, request, response);
				forward="position";
			}else{
				request.setAttribute("msg", "删除失败");
				forward = "error";
			}
			
		} catch (RuntimeException e) {
			request.setAttribute("msg", "删除失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	public ActionForward getBranch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward="";
		try {
			String branchString=selectOptions.getBranchString().toString();
			if(branchString!=null){
				request.setAttribute("branchString", branchString);
			}
			forward="addPosition";
		} catch (RuntimeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public PositionIssuanceBiz getPositionIssuanceBiz() {
		return positionIssuanceBiz;
	}

	public void setPositionIssuanceBiz(PositionIssuanceBiz positionIssuanceBiz) {
		this.positionIssuanceBiz = positionIssuanceBiz;
	}
	public SelectOptions getSelectOptions() {
		return selectOptions;
	}
	public void setSelectOptions(SelectOptions selectOptions) {
		this.selectOptions = selectOptions;
	}
}