package net.xabc.oo.hr.web.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.xabc.oo.hr.biz.RoleBiz;
import net.xabc.oo.hr.biz.UserBiz;
import net.xabc.oo.hr.common.SelectOptions;
import net.xabc.oo.hr.entity.Role;
import net.xabc.oo.hr.entity.Users;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.utils.filters.Util;
import net.xabc.oo.hr.web.form.UserForm;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;


public class UserAction extends DispatchAction {
	private UserBiz userBiz;
	private RoleBiz roleBiz;
	private SelectOptions selectOptions;
	
/***
 * 用户退出
 * @param mapping
 * @param form
 * @param request
 * @param response
 * @return
 */
	public ActionForward userOut(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward="";
		HttpSession session = request.getSession();
		 try {
			Users user = (Users) session.getAttribute("USER");
			if(user!=null){
				session.invalidate();
				forward="login";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
			forward = "error";
		}
	 return mapping.findForward(forward);
	}
	/***
	 * 用户登陆
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		HttpSession session = request.getSession();
		try {
			UserForm userForm = (UserForm) form;
			Users user = userBiz.login(Util.encode(userForm.getUserName()), Util.encode(userForm
					.getUserPassword()));
			if (user.getUserId() > 0 && user.getUserState()==1) {
				session.setAttribute("USER", user);
				String curDate=DateFormat.getDate();
				request.setAttribute("curDate", curDate);
				forward="index";	
			}else{
				request.setAttribute("fail", "fail");
				forward = "loginFailed";
			}
		} catch (Exception e) {
			request.setAttribute("fail", "fail" );
			e.printStackTrace();
			forward = "loginFailed";
		}
		return mapping.findForward(forward);

	}
	/**
	 * 根据用Id查询用户信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward getUserById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward="";
		String userIdStr=request.getParameter("userId");
		Users user=null;
		try {
			if(userIdStr!=null){
				user=userBiz.getUserById(Integer.parseInt(userIdStr));
				String roleString=selectOptions.getRoleString().toString();
				if(user!=null){
					String branchString=selectOptions.getBranchString().toString();
					request.setAttribute("branchString", branchString);
					request.setAttribute("roleString", roleString);
					request.setAttribute("user", user);
				}
				forward="userInfo";
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			forward="error";
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	/**
	 * 更新用户信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 * @throws IOException 
	 */
	public ActionForward updeateInfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String forward="";
		PrintWriter out=response.getWriter();
		int userId=Integer.parseInt(request.getParameter("userId"));
		try {
			UserForm userForm=(UserForm)form;
			Users user=new Users();
			user.setUserState(1);
			user.setUserId(userId);
			Role role=new Role();
			role.setRoleId(userForm.getRoleId());
			user.setRole(role);
			BeanUtils.copyProperties(user, userForm);
			int count=userBiz.upPass(user);
			if(count>0){
				out.print("<script type='text/javascript'>alert('修改成功');history.go(-1);</script>");
				this.selectall(mapping, form, request, response);
				forward="userList";			
			}
		}catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	/***
	 * 用户修改密码
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updeate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";

		try {
			UserForm userForm = (UserForm)form;
			Users user=new Users();
			user.setUserName(userForm.getUserName());
			user.setUserPassword(userForm.getNewPassword());
			int count = userBiz.upPass(user);
			if (count > 0) {
				request.setAttribute("Success", "修改成功");
				forward = "OK";
			}
		} catch (RuntimeException e) {
			request.setAttribute("msg", "修改失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);

	}
	/**
	 * 删除用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return List
	 * @throws UnsupportedEncodingException 
	 */
	public ActionForward deleteUser(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String forward="";
		String userId=request.getParameter("userId");
		if(userId!=null){
			Users user=new Users();
			user.setUserId(Integer.parseInt(userId));
			int count=userBiz.delete(user);
			if(count>0){
				this.selectall(mapping, form, request, response);
			}
		}
		forward="userList";
		return mapping.findForward(forward);
	}

	/***
	 * 添加新用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		UserForm userForm=(UserForm)form;
		try {
			int count=userBiz.addUser(userForm);
			if(count>0){
				this.selectall(mapping, form, request, response);
				forward="userList";
			}else{
				forward = "error";
			}
		} catch (RuntimeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	/***
	 * 查询所有用户信息并分页
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	public ActionForward selectall(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		int pageNum=1;
		String page=request.getParameter("pageNum");
		String forward="";
		try {
			if(page!=null && Integer.parseInt(page)>0){
				pageNum=Integer.parseInt(page);
			}
			List userList=userBiz.selectAll(pageNum, 5);
			int totalPage=userBiz.getTotalPage(5);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("userList", userList);
			forward="userList";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return mapping.findForward(forward);
	}
	
	/**
	 * 修改密码
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward updatePassword(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
	 
		String forward="";
		try {
			 UserForm userForm=(UserForm)form;
			 int count=userBiz.updatePassword(userForm.getNewPassword(), userForm.getUserId());
			 if(count>0){
				 forward="success";
			 }
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		return mapping.findForward(forward);
	}
	
	/**
	 * 修改用户状态
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward updateUserStatus(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
	 
		String forward="";
		response.setContentType("text/html; charset=UTF-8");
		try {
			String userId=request.getParameter("userId");
			String status=request.getParameter("userStatus");
			if(userId!=null){
				int count=userBiz.updateUserStatus(Integer.parseInt(userId), Integer.parseInt(status));
				if(count>0){
//					PrintWriter out=response.getWriter();
//					out.println("<script type='text/javascript'>alert('已成功启用!');</script>");
					this.selectall(mapping, form, request, response);
					forward="userList";	
				}else{
					forward="error";
				}
			}
			 
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mapping.findForward(forward);
	}
	
	
	
	
	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	public SelectOptions getSelectOptions() {
		return selectOptions;
	}

	public void setSelectOptions(SelectOptions selectOptions) {
		this.selectOptions = selectOptions;
	}

	public RoleBiz getRoleBiz() {
		return roleBiz;
	}

	public void setRoleBiz(RoleBiz roleBiz) {
		this.roleBiz = roleBiz;
	}

}
