package net.xabc.oo.hr.web.action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.xabc.oo.hr.biz.RightsBiz;
import net.xabc.oo.hr.entity.Rights;
import net.xabc.oo.hr.entity.Users;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class RoleMenueAction extends DispatchAction {
	private RightsBiz rightsBiz;
	public RightsBiz getRightsBiz() {
		return rightsBiz;
	}
	public void setRightsBiz(RightsBiz rightsBiz) {
		this.rightsBiz = rightsBiz;
	}
	public ActionForward initMenue(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			HttpSession session=request.getSession();
			Users user=(Users)session.getAttribute("USER");
			List meneList=rightsBiz.getRightsByRightsCode(user.getRole().getRoleId());
			List nodeList=rightsBiz.getRightsNodeByCode(user.getRole().getRoleId());
			if(meneList!=null && meneList.size()>0 && nodeList!=null && nodeList.size()>0){
				session.setAttribute("menuList", meneList);
				for(int i=0;i<meneList.size();i++){
					Rights rights=(Rights) meneList.get(i);
					request.setAttribute("rightCode", rights.getRightsCode());
					}
				session.setAttribute("nodeList", nodeList);
				forward="initSuccess";
			}
			else{
				forward="error";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

}
