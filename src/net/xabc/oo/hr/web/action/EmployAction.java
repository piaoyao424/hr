/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.xabc.oo.hr.biz.BranchBiz;
import net.xabc.oo.hr.biz.DataDetaiBiz;
import net.xabc.oo.hr.biz.ExamInterviewBiz;
import net.xabc.oo.hr.biz.PositionBiz;
import net.xabc.oo.hr.biz.ReumeBiz;
import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.entity.Examinterview;
import net.xabc.oo.hr.entity.Postion;
import net.xabc.oo.hr.entity.Resume;
import net.xabc.oo.hr.entity.Users;
import net.xabc.oo.hr.utils.date.DateFormat;
import net.xabc.oo.hr.web.form.EmployForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/** 
 * MyEclipse Struts
 * Creation date: 12-22-2009
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class EmployAction extends DispatchAction {
	private ExamInterviewBiz examInterviewBiz;
	private ReumeBiz reumeBiz;
	private DataDetaiBiz dataDetaiBiz;
	private BranchBiz branchBiz;
	private PositionBiz positionBiz;
	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward getList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		String page =request.getParameter("page");
		int curPage =1;
		List examInterviewList=null;
		try {
			if (page!=null) {
				curPage =Integer.parseInt(page);
				examInterviewList =examInterviewBiz.getAllExamInterview(curPage, 2, 1);
			} else {
				examInterviewList =examInterviewBiz.getAllExamInterview(1, 2, 1);
			}
			int count = examInterviewBiz.getTotalPage(1);
			int totalPage=count%2==0?count/2:count/2+1;
			if (examInterviewList!=null&&examInterviewList.size()>0) {
				request.setAttribute("examInterviewList",examInterviewList);
				request.setAttribute("curPage",curPage);
				request.setAttribute("totalPage",totalPage);
				request.setAttribute("count",count);
			} else {
				request.setAttribute("noList", "暂无数据！");
			}
			forward ="employ";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward getList2(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		String page =request.getParameter("page");
		int curPage =1;
		List examInterviewList=null;
		try {
			if (page!=null) {
				curPage =Integer.parseInt(page);
				examInterviewList =examInterviewBiz.getAllExamInterview(curPage, 2, 0);
			} else {
				examInterviewList =examInterviewBiz.getAllExamInterview(1, 2, 0);
			}
			int count = examInterviewBiz.getTotalPage(0);
			int totalPage=count%2==0?count/2:count/2+1;
			if (examInterviewList!=null&&examInterviewList.size()>0) {
				request.setAttribute("examInterviewList",examInterviewList);
				request.setAttribute("curPage",curPage);
				request.setAttribute("totalPage",totalPage);
				request.setAttribute("count",count);
			} else {
				request.setAttribute("noList", "暂无数据！");
			}
			forward ="addInterview";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward getListResume(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			String page=request.getParameter("page");
			int curPage =1;
			List resumeList=null;
			if (page!=null) {
				curPage = Integer.parseInt(page);
				resumeList =reumeBiz.selectAll(curPage, 2);
			} else {
				resumeList =reumeBiz.selectAll(1, 2);
			}
			int count=reumeBiz.getTotalPage();
			int totalPage=count%2==0?count/2:count/2+1;
			request.setAttribute("resumeList", resumeList);
			request.setAttribute("curPage", curPage);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("count", count);
			forward ="resume"; 
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward getResumeById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			Resume resume = reumeBiz.selectById(id);
			if (resume!=null) {
				Datadetail dataDetail=dataDetaiBiz.getDataDetailById(resume.getResumeDegree());
				String degree=dataDetail.getDataDetailName();
				Datadetail dataDetail1=dataDetaiBiz.getDataDetailById(resume.getResumeNation());
				String nation=dataDetail1.getDataDetailName();
				Datadetail dataDetail2=dataDetaiBiz.getDataDetailById(resume.getResumePolity());
				String polity=dataDetail2.getDataDetailName();
				Postion position =positionBiz.getByPositionId(resume.getResumePositionId());
				request.setAttribute("position", position);
				request.setAttribute("resume", resume);
				request.setAttribute("degree", degree);
				request.setAttribute("nation", nation);
				request.setAttribute("polity", polity);
				forward ="resumeDetails";
			} else {
				request.setAttribute("msg", "数据加载失败！");
				forward ="error";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward deleteResume(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			Resume resume = new Resume();
			resume.setResumeId(id);
			int count = reumeBiz.delete(resume);
			if (count>0) {
				getListResume(mapping, form, request, response);
				forward ="resume";
			} else {
				request.setAttribute("msg", "删除失败！");
				forward ="error";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward deleteExamInterview(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			int count = examInterviewBiz.deleteExamInterview(id);
			if (count>0) {
				getList(mapping, form, request, response);
				forward ="employ";
			} else {
				request.setAttribute("msg", "删除失败！");
				forward ="error";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	public ActionForward getById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			String type = null;
			type = request.getParameter("type");
			int id = Integer.parseInt(request.getParameter("id"));
			Examinterview examInterview =examInterviewBiz.getExamInterviewById(id);
			Datadetail dataDetail=dataDetaiBiz.getDataDetailById(examInterview.getResume().getResumeDegree());
				String degree=dataDetail.getDataDetailName();
				Datadetail dataDetail1=dataDetaiBiz.getDataDetailById(examInterview.getResume().getResumeNation());
				String nation=dataDetail1.getDataDetailName();
				Datadetail dataDetail2=dataDetaiBiz.getDataDetailById(examInterview.getResume().getResumePolity());
				String polity=dataDetail2.getDataDetailName();
				Postion position =positionBiz.getByPositionId(examInterview.getResume().getResumePositionId());
			if (examInterview!=null) {
				request.setAttribute("examInterview", examInterview);
				request.setAttribute("position", position);
				request.setAttribute("degree", degree);
				request.setAttribute("nation", nation);
				request.setAttribute("polity", polity);
				if( type==null){
					forward ="employInfo";
				}else {
					forward ="addScoreResult";
				} 
			} else {
				request.setAttribute("msg", "数据加载失败！");
				forward ="error";
			}
			
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward addExamInterview(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			HttpSession session =request.getSession();
			Users user=(Users) session.getAttribute("USERS");
			DateFormat dateFormat=new DateFormat();
			EmployForm emplloyForm = (EmployForm) form;
			Resume resume = reumeBiz.selectById(emplloyForm.getResumeId());
				resume.setResumeCheckStatus(1);
				resume.setResumeChecker("dth");
				resume.setResumeCheckTime(dateFormat.parseDate(dateFormat.getDate()));
				int count = reumeBiz.upPass(resume);
				if (count>0) {
						int count1 =examInterviewBiz.addExamInterview(emplloyForm);
						if (count1>0) {
							getListResume(mapping, form, request, response);
							forward ="resume";
						}
				}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward addEmployee(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
			EmployForm employForm =(EmployForm) form;
			employForm.setEiInterviewStatus(1);
			int count = examInterviewBiz.updateExamInterview(employForm);
			if (count>0) {
				getList(mapping, form, request, response);
				forward ="employ";
			} else {
				request.setAttribute("msg", "操作失败！");
				forward ="error";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	public ActionForward upDateExamInterview(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward ="";
		try {
//			HttpSession session =request.getSession();
//			DateFormat dateFormat=new DateFormat();
//			Users user=(Users) session.getAttribute("USERS");
			EmployForm employForm = (EmployForm) form;
			int count =examInterviewBiz.updateExamInterview(employForm);
			if (count>0) {
				getList(mapping, form, request, response);
				forward ="employ";
			} else {
				request.setAttribute("msg", "操作失败！");
				forward ="error";
			}
			
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ExamInterviewBiz getExamInterviewBiz() {
		return examInterviewBiz;
	}
	public void setExamInterviewBiz(ExamInterviewBiz examInterviewBiz) {
		this.examInterviewBiz = examInterviewBiz;
	}
	public ReumeBiz getReumeBiz() {
		return reumeBiz;
	}
	public void setReumeBiz(ReumeBiz reumeBiz) {
		this.reumeBiz = reumeBiz;
	}
	public BranchBiz getBranchBiz() {
		return branchBiz;
	}
	public void setBranchBiz(BranchBiz branchBiz) {
		this.branchBiz = branchBiz;
	}
	public DataDetaiBiz getDataDetaiBiz() {
		return dataDetaiBiz;
	}
	public void setDataDetaiBiz(DataDetaiBiz dataDetaiBiz) {
		this.dataDetaiBiz = dataDetaiBiz;
	}
	public PositionBiz getPositionBiz() {
		return positionBiz;
	}
	public void setPositionBiz(PositionBiz positionBiz) {
		this.positionBiz = positionBiz;
	}
}