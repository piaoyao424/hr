package net.xabc.oo.hr.web.action;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.xabc.oo.hr.biz.DataDetaiBiz;
import net.xabc.oo.hr.biz.EmployeeBiz;
import net.xabc.oo.hr.biz.EmployeeLogBiz;
import net.xabc.oo.hr.biz.SalaryStandardBiz;
import net.xabc.oo.hr.common.SelectOptions;
import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Employeelog;
import net.xabc.oo.hr.entity.Users;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.DossierForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

public class DossierAction extends DispatchAction {
	private EmployeeBiz employeeBiz;
	private EmployeeLogBiz employeeLogBiz;
	private DataDetaiBiz dateDetailBiz;
	private SelectOptions selectOptions;
	private SalaryStandardBiz salaryStandardBiz;
	
	 
	/**
	 *  登记
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
			DossierForm dossierForm =(DossierForm) form;
			FormFile file=dossierForm.getMyFile();
			if(file!=null){
				String dir=request.getSession(true).getServletContext().getRealPath("/upload");   //获取文件的绝对路径
				OutputStream fos=null;
				fos=new FileOutputStream(dir+"/"+file.getFileName());
				fos.write(file.getFileData(),0,file.getFileSize());
				fos.flush();
				request.setAttribute("picturePath",dir+"/"+file.getFileName());
				dossierForm.setEmployeePhoto(file.getFileName());
			}
			HttpSession session=request.getSession();
			if(session.getAttribute("USER")!=null){
				Users user=(Users) session.getAttribute("USER");
				dossierForm.setRegister(user.getUserName());
			}
			int count = employeeLogBiz.addEmployeeLog(dossierForm);
			if(count>0){
				  forward = "auditing";
			}
			  
		} catch (Exception e) {
			request.setAttribute("msg", "添加失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}

	/**
	 * 查找人事档案列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getDossierList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String page=request.getParameter("page");
			int curPage=1;
			List dossierList=null;
			if(page!=null){
			    curPage=Integer.parseInt(page);
			    dossierList=employeeBiz.selectEmployee(curPage, 10);			
			}else{
			    dossierList=employeeBiz.selectEmployee(1, 10);
			}
			int totalPage=employeeBiz.getTotalPage(10);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			request.setAttribute("dossierPageList", dossierList);
			forward="dossierList";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 查找未审核的档案列表
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward dossierAuditingList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
        try {
        	String page=request.getParameter("page");
        	List auditingList=null;
        	int curPage=1;
        	if(page!=null){
        		curPage=Integer.parseInt(page);
        		auditingList=employeeLogBiz.getAllEmployeeLog(curPage, 2);	
        	}else{
        		auditingList=employeeLogBiz.getAllEmployeeLog(1, 2);
        	}
        	auditingList=employeeLogBiz.getAllEmployeeLog(curPage, 2);
        	int totalPage=employeeLogBiz.getTotalPage(2);
        	request.setAttribute("curPage", curPage);
        	request.setAttribute("totalPage", totalPage);
			request.setAttribute("auditingList",auditingList);
			forward="auditingDossier";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	
	
	/**
	 * 查找
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward search(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			DossierForm dossierForm=(DossierForm)form;
			List dossierSearchList=employeeBiz.search(dossierForm);
			if(dossierSearchList!=null && dossierSearchList.size()>0){
				request.setAttribute("dossierPageList", dossierSearchList);
			}else{
				request.setAttribute("noList", "没有合适的员工信息");
			}
			forward="dossierList";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 档案审核中按条件查找
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward searchLog(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			DossierForm dossierForm=(DossierForm)form;
			List auditingList=employeeLogBiz.search(dossierForm);
			if(auditingList!=null && auditingList.size()>0){
				request.setAttribute("auditingList", auditingList);
			}else{
				request.setAttribute("noList", "没有合适的员工信息");
			}
			forward="auditingDossier";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 根据EmployeeID查找员工档案信息
	 * 显示到修改页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getEmployeeInfoById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		getNation(request);
		String employeeId=request.getParameter("employeeId");
		if(employeeId!=null){
			Employee employee=employeeBiz.getEmployeeById(Integer.parseInt(employeeId));
			request.setAttribute("employee",employee);
			String branchString=selectOptions.getBranchString().toString();
			String nationString=selectOptions.getDataDetailsByDataTypeId(1).toString();
			String degreeString=selectOptions.getDataDetailsByDataTypeId(2).toString();
			String polityString=selectOptions.getDataDetailsByDataTypeId(3).toString();
			request.setAttribute("branchString", branchString);
			request.setAttribute("nationString", nationString);
			request.setAttribute("degreeString",degreeString);
			request.setAttribute("polityString",polityString);
			forward="update";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 根据EmployeeID查找员工档案信息
	 * 显示到详细信息页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getDossierDetail(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		String employeeId=request.getParameter("employeeId");
		if(employeeId!=null){
			Employee employee=employeeBiz.getEmployeeById(Integer.parseInt(employeeId));
			request.setAttribute("employee",employee);
			Datadetail dataDetail=dateDetailBiz.getDataDetailById(employee.getEmployeeDegree());
			String degree=dataDetail.getDataDetailName();
			Datadetail dataDetail1=dateDetailBiz.getDataDetailById(employee.getEmployeeNation());
			String nation=dataDetail1.getDataDetailName();
			Datadetail dataDetail2=dateDetailBiz.getDataDetailById(employee.getEmployeePolity());
			String polity=dataDetail2.getDataDetailName();
			request.setAttribute("degree", degree);
			request.setAttribute("nation", nation);
			request.setAttribute("polity", polity);
			forward="dossierDetail";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 查询档案操作记录详细
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward getEmployeeLogById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String elId=request.getParameter("elId");
			if(elId!=null){
				Employeelog log=employeeLogBiz.getEmployeeLogById(Integer.parseInt(elId));
				Datadetail dataDetail=dateDetailBiz.getDataDetailById(log.getElDegree());
				String degree=dataDetail.getDataDetailName();
				Datadetail dataDetail1=dateDetailBiz.getDataDetailById(log.getElNation());
				String nation=dataDetail1.getDataDetailName();
				Datadetail dataDetail2=dateDetailBiz.getDataDetailById(log.getElPolity());
				String polity=dataDetail2.getDataDetailName();
				request.setAttribute("degree", degree);
				request.setAttribute("nation", nation);
				request.setAttribute("polity", polity);
				request.setAttribute("log",log);
				forward="auditingDetails";
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	
	private void getNation(HttpServletRequest request){
	   List nationList=dateDetailBiz.getDataDetailByDataTypeId(1);
	   if(nationList!=null){
		   request.setAttribute("nationList",nationList);
	   }
	}
	
	
    /**
     * 查找回收站的档案信息
     * @param mapping
     * @param form
     * @param request
     * @param resonse
     * @return
     */
	public ActionForward dossierRecycle(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String page=request.getParameter("page");
			int curPage=1;
			List recycleList=null;
			if(page!=null){
			    curPage=Integer.parseInt(page);
			    recycleList=employeeBiz.selectEmployeeByStatus(1, 2);		
			}else{
				recycleList=employeeBiz.selectEmployeeByStatus(1, 2);
			}
			int totalPage=employeeBiz.getTotalPageES(2);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			request.setAttribute("recycleList", recycleList);
			forward="recycled";
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	// 添加
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			DossierForm dossierForm= (DossierForm) form;
			int count = employeeBiz.addEmployee(dossierForm);
			if(count>0){
				request.setAttribute("loginSuccess", "添加成功");	
			}
			forward = "login";
		} catch (Exception e) {
			request.setAttribute("msg", "添加失败");
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 修改
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			DossierForm dossierForm= (DossierForm) form;
			String employeeId=request.getParameter("employeeId");
			if(employeeId!=null){
				FormFile file=dossierForm.getMyFile();
				if(file!=null){
					String dir=request.getSession(true).getServletContext().getRealPath("/upload");   //获取文件的绝对路径
					OutputStream fos=null;
					fos=new FileOutputStream(dir+"/"+file.getFileName());
					fos.write(file.getFileData(),0,file.getFileSize());
					fos.flush();
					request.setAttribute("picturePath",dir+"/"+file.getFileName());
					dossierForm.setEmployeePhoto(file.getFileName());
					
				}
				dossierForm.setEmployeeId(Integer.parseInt(employeeId));
			}
			HttpSession session=request.getSession();
			if(session.getAttribute("USER")!=null){
				Users user=(Users) session.getAttribute("USER");
				dossierForm.setRegister(user.getUserName());
			}
			int count = employeeLogBiz.updateEmployeeLog(dossierForm);
			if(count>0){
				forward = "auditing";	
			}
		} catch (Exception e) {
			e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 档案审核通过
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward post(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		HttpSession session=request.getSession();
		try {
			String elId=request.getParameter("elId");
			String employeeId=request.getParameter("employeeId");
			if(elId!=null && employeeId!=null){
				int count=0;
				Employeelog log=employeeLogBiz.getEmployeeLogById(Integer.parseInt(elId));
				if(Integer.parseInt(employeeId)==0){
//					int ssId=salaryStandardBiz.getSsIdByPositionId(log.getPosition().getPositionId());
					count=employeeBiz.copyEmployeeLogToEmployee(log);
				}else{
					 count=employeeBiz.updateEmployeeLogToEmployee(log);
				}
					Employeelog log1=new Employeelog();
					log1.setElCheckStatus(1);
					log1.setElCheckTime(DateFormat.parseDate(DateFormat.getDate()));
					if(session.getAttribute("USER")!=null){
						Users user=(Users) session.getAttribute("USER");
						log1.setElChecker(user.getUserName());
					}
				     log1.setElId(Integer.parseInt(elId));
				     int num=employeeLogBiz.updateCheck(log1);
				     if(num>0){
				    	 forward="success";  	 
				     }
				}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	
	/**
	 * 删除档案，修改用户状态为3，普通删除
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward deleteDossier(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String employeeId=request.getParameter("employeeId");
			if(employeeId!=null){
				int count = employeeBiz.updateEmployeeStatus(Integer.parseInt(employeeId));	
				if(count>0){
					getDossierList(mapping, form, request, resonse);
				}
			}
			forward="dossierList";
		} catch (Exception e) {
			                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  e.printStackTrace();
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 回收站中还原档案状态
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward dossierBack(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String employeeId=request.getParameter("employeeId");
			if(employeeId!=null){
				int count = employeeBiz.updateEmployeeStatusRe(1, Integer.parseInt(employeeId));
				if(count>0){
					dossierRecycle(mapping, form, request, resonse);
				}
			}
			forward="recycled";
		} catch (Exception e) {
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	
	/**
	 * 永久删除
	 * 修改状态为4
	 * @param mapping
	 * @param form
	 * @param request
	 * @param resonse
	 * @return
	 */
	public ActionForward dossierDelete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse resonse) {
		String forward = "";
		try {
			String employeeId=request.getParameter("employeeId");
			if(employeeId!=null){
				int count = employeeBiz.updateEmployeeStatusRe(4, Integer.parseInt(employeeId));
				if(count>0){
					dossierRecycle(mapping, form, request, resonse);
				}
			}
			forward="recycled";
		} catch (Exception e) {
			forward = "error";
		}
		return mapping.findForward(forward);
	}
	

	public EmployeeBiz getEmployeeBiz() {
		return employeeBiz;
	}

	public void setEmployeeBiz(EmployeeBiz employeeBiz) {
		this.employeeBiz = employeeBiz;
	}

	public EmployeeLogBiz getEmployeeLogBiz() {
		return employeeLogBiz;
	}

	public void setEmployeeLogBiz(EmployeeLogBiz employeeLogBiz) {
		this.employeeLogBiz = employeeLogBiz;
	}

	public DataDetaiBiz getDateDetailBiz() {
		return dateDetailBiz;
	}

	public void setDateDetailBiz(DataDetaiBiz dateDetailBiz) {
		this.dateDetailBiz = dateDetailBiz;
	}

	public SelectOptions getSelectOptions() {
		return selectOptions;
	}

	public void setSelectOptions(SelectOptions selectOptions) {
		this.selectOptions = selectOptions;
	}

	public SalaryStandardBiz getSalaryStandardBiz() {
		return salaryStandardBiz;
	}

	public void setSalaryStandardBiz(SalaryStandardBiz salaryStandardBiz) {
		this.salaryStandardBiz = salaryStandardBiz;
	}
	
	
	
	
	 
}
