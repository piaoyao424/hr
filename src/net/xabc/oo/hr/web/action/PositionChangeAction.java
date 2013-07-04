package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.xabc.oo.hr.biz.BranchBiz;
import net.xabc.oo.hr.biz.EmployeeBiz;
import net.xabc.oo.hr.biz.PositionBiz;
import net.xabc.oo.hr.biz.PositionChangeBiz;
import net.xabc.oo.hr.common.SelectOptions;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;
import net.xabc.oo.hr.entity.Users;
import net.xabc.oo.hr.web.form.PositionChangeForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class PositionChangeAction extends DispatchAction {

	private PositionChangeBiz positionChangeBiz;

	private SelectOptions selectOptions;

	private EmployeeBiz employeeBiz;

	private BranchBiz branchBiz;
	
	
	private PositionBiz postionBiz;

	public EmployeeBiz getEmployeeBiz() {
		return employeeBiz;
	}

	public void setEmployeeBiz(EmployeeBiz employeeBiz) {
		this.employeeBiz = employeeBiz;
	}

	public SelectOptions getSelectOptions() {
		return selectOptions;
	}

	public void setSelectOptions(SelectOptions selectOptions) {
		this.selectOptions = selectOptions;
	}

	public PositionChangeBiz getPositionChangeBiz() {
		return positionChangeBiz;
	}

	public void setPositionChangeBiz(PositionChangeBiz positionChangeBiz) {
		this.positionChangeBiz = positionChangeBiz;
	}

	/**
	 * 查找员工信息列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getEmployeeList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		HttpSession session = request.getSession();
		try {
			String page = request.getParameter("page");
			int curPage = 1;
			List staffList = null;
			if (session.getAttribute("USER") != null) {
				Users user = (Users) session.getAttribute("USER");
     			int branchId=postionBiz.getBranchIdByPositionId(user.getPostion().getPositionId());
//				int branchId = branchBiz.getBranchByUserId(user.getUserId());
				int totalPage = positionChangeBiz.getTotalPage(2,branchId);
				if (page != null) {
					curPage = Integer.parseInt(page);
					staffList = positionChangeBiz.selectEmployee(curPage, 2,
							branchId);
				} else {
					staffList = positionChangeBiz
							.selectEmployee(1, 2, branchId);
				}
				request.setAttribute("totalPage", totalPage);
			} else {
				if (page != null) {
					curPage = Integer.parseInt(page);
					staffList = positionChangeBiz.selectEmployee(curPage, 2, 1);
				} else {
					staffList = positionChangeBiz.selectEmployee(1, 2, 1);
				}
			}
			request.setAttribute("curPage", curPage);
			request.setAttribute("dossierPageList", staffList);
			String branchString = selectOptions.getBranchString().toString();
			if (branchString != null) {
				request.setAttribute("branchString", branchString);
			}
			forward = "staffList";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	/***
	 * 根据员工姓名查找员工信息
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward search(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		HttpSession session=request.getSession();
		try {
			PositionChangeForm positionChangeForm = (PositionChangeForm) form;
			if (session.getAttribute("USER") != null) {
				Users user = (Users) session.getAttribute("USER");
     			int branchId=postionBiz.getBranchIdByPositionId(user.getPostion().getPositionId());
     			List staffList = positionChangeBiz.search(positionChangeForm,branchId);
    			if (staffList != null || staffList.size() > 0) {
    				request.setAttribute("dossierPageList", staffList);
    			} else {
    				request.setAttribute("noList", "没有合适的员工信息");
    			}
			}
			forward = "staffList";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	/**
	 * 根据EmployeeID查找员工档案信息
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getEmployeeById(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		String employeeId = request.getParameter("employeeId");
		if (employeeId != null) {
			Employee employee = positionChangeBiz.selectEmployeeById(Integer
					.parseInt(employeeId));
			request.setAttribute("employee", employee);
			String branchString=selectOptions.getBranchString().toString();
			String nationString = selectOptions.getDataDetailsByDataTypeId(1)
					.toString();
			String degreeString = selectOptions.getDataDetailsByDataTypeId(2)
					.toString();
			String polityString = selectOptions.getDataDetailsByDataTypeId(3)
					.toString();
			request.setAttribute("branchString", branchString);
			request.setAttribute("nationString", nationString);
			request.setAttribute("degreeString", degreeString);
			request.setAttribute("polityString", polityString);
			forward = "bookIn";
		}
		return mapping.findForward(forward);
	}

	/**
	 * 调动
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward register(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			PositionChangeForm positionChangeForm = (PositionChangeForm) form;
			HttpSession session = request.getSession();
			if( session.getAttribute("USER")!=null){
				Users user = (Users) session.getAttribute("USER");
				positionChangeForm.setPositionChangeRegister(user.getUserName());
			}
			int count = positionChangeBiz.addPC(positionChangeForm);
			if (count > 0) {
				forward = "auditing";
			}

		} catch (Exception e) {
			request.setAttribute("msg", "添加失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}

	public BranchBiz getBranchBiz() {
		return branchBiz;
	}

	public void setBranchBiz(BranchBiz branchBiz) {
		this.branchBiz = branchBiz;
	}

	/****
	 * 查询调动员工未审核的信息列表
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getPositionChanageList(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		//PositionChange positionChange=new PositionChange();
		HttpSession session = request.getSession();
		try {
			String page = request.getParameter("page");
			int curPage = 1;
			List auditingList = null;
			if (session.getAttribute("USER") != null) {
				Users user = (Users) session.getAttribute("USER");
				int branchId=postionBiz.getBranchIdByPositionId(user.getPostion().getPositionId());
				if (page != null) {
					curPage = Integer.parseInt(page);
					auditingList = positionChangeBiz.selectAllPC(curPage, 2,branchId,0);
				} else {
					auditingList = positionChangeBiz.selectAllPC(1, 2, branchId,0);
				}
			} else {
				if (page != null) {
					curPage = Integer.parseInt(page);
					auditingList = positionChangeBiz.selectAllPC(curPage, 2, 1,0);
				} else {
					auditingList = positionChangeBiz.selectAllPC(1, 2, 1,0);
				}
			}

			int totalPage = positionChangeBiz.getTotalPage(2,1);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			request.setAttribute("auditingList", auditingList);
			String branchString = selectOptions.getBranchString().toString();
			if (branchString != null) {
				request.setAttribute("branchString", branchString);
			}
			forward = "auditingList";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	/**
	 * 根据EmployeeID查找员工档案信息
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getPositionChangeById(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		String Id = request.getParameter("positionChangeId");
		if (Id != null) {
			Positionchange positionChange = positionChangeBiz
					.getEmployeeById(Integer.parseInt(Id));
			request.setAttribute("positionChange", positionChange);
			String branchBeforeName=positionChangeBiz.getBranchBeforeNmaeByPoinsitionId(positionChange.getPositionBeforePositionId());
			String branchAfterName=positionChangeBiz.getBranchAfterNmaeByPoinsitionId(positionChange.getPositionAfterPostionId());
			String postionBeforeName=positionChangeBiz.getPositionBeforeNmaeByPoinsitionId(positionChange.getPositionBeforePositionId());
			String postionAfterName=positionChangeBiz.getPositionAfterNmaeByPoinsitionId(positionChange.getPositionAfterPostionId());

			String branchString = selectOptions.getBranchString().toString();

			String nationString = selectOptions.getDataDetailsByDataTypeId(1)
					.toString();
			String degreeString = selectOptions.getDataDetailsByDataTypeId(2)
					.toString();
			String polityString = selectOptions.getDataDetailsByDataTypeId(3)
					.toString();
			request.setAttribute("branchBeforeName", branchBeforeName);
			request.setAttribute("branchAfterName", branchAfterName);
			request.setAttribute("postionBeforeName", postionBeforeName);
			request.setAttribute("postionAfterName", postionAfterName);
			request.setAttribute("branchString", branchString);
			request.setAttribute("nationString", nationString);
			request.setAttribute("degreeString", degreeString);
			request.setAttribute("polityString", polityString);
			forward = "auditingDetail";
		}
		return mapping.findForward(forward);
	}
	
	
	/***
	 * 通过审核之后更新PositionChange表和员工信息表的PositionId
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward updatePositionChange(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			PositionChangeForm positionChangeForm = (PositionChangeForm) form;
			HttpSession session = request.getSession();
			if( session.getAttribute("USER")!=null){
				Users user = (Users) session.getAttribute("USER");
				positionChangeForm.setPositionChangeChecker(user.getUserName());
			}
			String positionChangeId = request.getParameter("positionChangeId");
			if(positionChangeId!=null){
				  int count = positionChangeBiz.updatePC(positionChangeForm);
				  if(count>0){
					  int num =positionChangeBiz.updateEmployeePositionId(positionChangeForm.getEmployeePositionId(),positionChangeForm.getEmployeeId());
					  if (num>0) {
					       forward = "auditing";
				       }
				  }else{
					  forward="error";
				  }
			}
		} catch (Exception e) {
			request.setAttribute("msg", "添加失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	/****
	 * 查询已经调动审核后的员工信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getPositionChanageLists(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		//PositionChange positionChange=new PositionChange();
		HttpSession session = request.getSession();
		try {
			String page = request.getParameter("page");
			int curPage = 1;
			List auditingList = null;
			if (session.getAttribute("USER") != null) {
				Users user = (Users) session.getAttribute("USER");
				int branchId = branchBiz.getBranchByUserId(user.getUserId());
				//int status=positionChangeBiz.select(positionChange.getPositionChangeCheckStatus());
				if (page != null) {
					curPage = Integer.parseInt(page);
					auditingList = positionChangeBiz.selectAllPC(curPage, 2,branchId,1);
				} else {
					auditingList = positionChangeBiz.selectAllPC(1, 2, branchId,1);
				}
			} else {
				if (page != null) {
					curPage = Integer.parseInt(page);
					auditingList = positionChangeBiz.selectAllPC(curPage, 2, 1,1);
				} else {
					auditingList = positionChangeBiz.selectAllPC(1, 2, 1,1);
				}
			}

			int totalPage = positionChangeBiz.getTotalPage(2,1);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			request.setAttribute("auditingList", auditingList);
			String branchString = selectOptions.getBranchString().toString();
			if (branchString != null) {
				request.setAttribute("branchString", branchString);
			}
			forward = "auditingList";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 查询调动日志
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward changeReport(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse resonse) {
		String forward = "";
		try {
			String page=request.getParameter("page");
			int curPage=1;
			List reportList=null;
			if(page!=null){
				curPage=Integer.parseInt(page);
				 reportList=positionChangeBiz.getPositionChangeReport(curPage,10);
			}else{
				 reportList=positionChangeBiz.getPositionChangeReport(1,10);
			}
			request.setAttribute("reportList", reportList);
			int totalPage=positionChangeBiz.getPositionChangeReport(10);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			forward="changeReport";
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	public PositionBiz getPostionBiz() {
		return postionBiz;
	}

	public void setPostionBiz(PositionBiz postionBiz) {
		this.postionBiz = postionBiz;
	}


}
