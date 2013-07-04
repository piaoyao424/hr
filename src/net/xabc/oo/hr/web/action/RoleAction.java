package net.xabc.oo.hr.web.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.RightsBiz;
import net.xabc.oo.hr.biz.RoleBiz;
import net.xabc.oo.hr.biz.RoleRightsBiz;
import net.xabc.oo.hr.entity.Rights;
import net.xabc.oo.hr.entity.Role;
import net.xabc.oo.hr.entity.Rolerights;
import net.xabc.oo.hr.web.form.RoleForm;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class RoleAction extends DispatchAction {
	private RoleBiz roleBiz;
	private RoleRightsBiz roleRightsBiz;
	private RightsBiz rightsBiz;
	public RightsBiz getRightsBiz() {
		return rightsBiz;
	}
	public void setRightsBiz(RightsBiz rightsBiz) {
		this.rightsBiz = rightsBiz;
	}
	public RoleBiz getRoleBiz() {
		return roleBiz;
	}
	public void setRoleBiz(RoleBiz roleBiz) {
		this.roleBiz = roleBiz;
	}
	public RoleRightsBiz getRoleRightsBiz() {
		return roleRightsBiz;
	}
	public void setRoleRightsBiz(RoleRightsBiz roleRightsBiz) {
		this.roleRightsBiz = roleRightsBiz;
	}
	/**
	 * 查询所有角色列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getRoleList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward="";
		try {
			String page=request.getParameter("pageNum");
			List list=null;
			int curPage=1;
			if(page!=null){
				curPage=Integer.parseInt(page);
				list=roleBiz.selectAllPage(curPage,10);
			}else{
				list=roleBiz.selectAllPage(1,10);
			}
         	 int totalPage=roleBiz.getSelectAllPage(10);
         	 request.setAttribute("curPage", curPage);
         	 request.setAttribute("totalPage", totalPage);
			 request.setAttribute("roleList", list);
			forward="roleLists";
		} catch (RuntimeException e) {
			forward="error";
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/**
	 * 增加角色
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 * @throws IOException 
	 */
	public ActionForward addRole(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward="";
		String[] rightsCollection=request.getParameterValues("rightsCode");
		Rolerights roleRights=new Rolerights();
		Rights rights=new Rights();
		try {
			RoleForm roleForm=(RoleForm)form;
			Role role=new Role();
			BeanUtils.copyProperties(role, roleForm);
			int num=roleBiz.addRole(role);
			int roleId=roleBiz.selectRoleId(roleForm.getRoleName());
			role.setRoleId(roleId);
			for(int i=0;i<rightsCollection.length;i++){
				String rightsCode=rightsCollection[i];
				rights.setRightsCode(rightsCode);
				roleRights.setRights(rights);
				roleRights.setRole(role);
				roleRightsBiz.addUser(roleRights);
			}
			if(num>0){
				getRoleList(mapping, form, request, response);
			}
			forward="roleLists";
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/**
	 * 删除角色
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward deleteRole(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward="";
		try {
			int roleId=Integer.parseInt(request.getParameter("roleId"));
			Role role=new Role();
			role.setRoleId(roleId);
			int count=roleBiz.delete(role);
			if(count>0){
				this.getRoleList(mapping, form, request, response);
				forward="roleLists";
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/**
	 * 根据Id查询角色信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getRoleById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String forward="";
		String roleIdStr=request.getParameter("roleId");
		Role role=null;
		try {
			if(roleIdStr!=null && roleIdStr.length()>0){
				int roleId=Integer.parseInt(roleIdStr);
				role=roleBiz.getRoleById(roleId);
				List roleRightsList=rightsBiz.getRightsNodeByCode(roleId);
				List rightsList=rightsBiz.selectAllNodes();;
				List rightsChildNodes=rightsBiz.selectAllChildNodes();
				request.setAttribute("rightsNode", rightsList);
				request.setAttribute("rightsChildNodes", rightsChildNodes);
				request.setAttribute("roleRightsList",roleRightsList);
				request.setAttribute("role", role);
			}
			forward="update";
		} catch (RuntimeException e) {
			forward="error";
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/**
	 * 更新角色信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	public ActionForward updateRole(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IOException{
		String forward="";
		String roleId=request.getParameter("roleId");
		String[] rightsCollection=request.getParameterValues("rightsCode");
		RoleForm roleForm=(RoleForm)form;
		Role role=new Role();
		Rights rights=new Rights();
		role.setRoleId(Integer.parseInt(roleId));
		Rolerights roleRights=new Rolerights();
		roleRights.setRole(role);
		try {
			BeanUtils.copyProperties(role, roleForm);
			if(role!=null){
				int count=roleBiz.updateRole(role);
				int num=roleRightsBiz.deleteRoleRights(Integer.parseInt(roleId));
				if(num>0){
					if(rightsCollection!=null){
						for(int i=0;i<rightsCollection.length;i++){
							String rightsCode=rightsCollection[i];
							rights.setRightsCode(rightsCode);
							roleRights.setRights(rights);
							roleRights.setRole(role);
							roleRightsBiz.addUser(roleRights);
						}
					}
					if(count>0 && num>0){
						this.getRoleList(mapping, form, request, response);
						forward="roleLists";
					}
				}
			}
			else{
				forward="error";
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
}
