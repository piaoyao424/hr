/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package net.xabc.oo.hr.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.xabc.oo.hr.biz.SalaryGrantBiz;
import net.xabc.oo.hr.web.form.SalaryGrantForm;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/** 
 * MyEclipse Struts
 * Creation date: 07-29-2009
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class SalaryGrantAction extends DispatchAction {
	/*
	 * Generated Methods
	 */
	private SalaryGrantBiz salaryGrantBiz;
	/**
	 * 当点击确认提交时将该页面的值传入数据库
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updateSalaryAcdtiongInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward = "";
		try {
			String sgId=request.getParameter("sgId");
			if(sgId !=null){
				SalaryGrantForm salaryGrantForm =(SalaryGrantForm)form;
				int count=salaryGrantBiz.updateSalaryAuctionInfo(salaryGrantForm);
				if(count>0){
					forward="success";
				}
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	
	public SalaryGrantBiz getSalaryGrantBiz() {
		return salaryGrantBiz;
	}
	public void setSalaryGrantBiz(SalaryGrantBiz salaryGrantBiz){
		this.salaryGrantBiz = salaryGrantBiz;
	}
}