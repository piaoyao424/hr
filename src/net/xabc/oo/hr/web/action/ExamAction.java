package net.xabc.oo.hr.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.xabc.oo.hr.biz.ExamSubjectBiz;
import net.xabc.oo.hr.common.SelectOptions;
import net.xabc.oo.hr.entity.Examsubject;
import net.xabc.oo.hr.web.form.ExamForm;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

public class ExamAction extends DispatchAction {
	private ExamSubjectBiz examSubjectBiz;
	private SelectOptions selectOptions;

	public ActionForward getList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
				String page =request.getParameter("page");
				int curPage =1;
				List examSubjectList =null;
				if (page!=null) {
					curPage = Integer.parseInt(page);
					examSubjectList=examSubjectBiz.getExamSubject(curPage, 2,1);
				} else {
					examSubjectList=examSubjectBiz.getExamSubject(1, 2,1);
				}
				int count =examSubjectBiz.getTotalPage(1);
				int totalPage=count%2==0?count/2:count/2+1;
				request.setAttribute("examSubjectList", examSubjectList);
				request.setAttribute("totalPage", totalPage);
				request.setAttribute("curPage", curPage);
				request.setAttribute("count", count);
				forward = "getList";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	public ActionForward getStoreRecycled(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			String page =request.getParameter("page");
			int curPage =1;
			List examSubjectList =null;
			if (page!=null) {
				curPage = Integer.parseInt(page);
				examSubjectList=examSubjectBiz.getExamSubject(curPage, 2,0);
			} else {
				examSubjectList=examSubjectBiz.getExamSubject(1, 2,0);
			}
			int count =examSubjectBiz.getTotalPage(0);
			int totalPage=count%2==0?count/2:count/2+1;
			request.setAttribute("examSubjectList", examSubjectList);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("curPage", curPage);
			request.setAttribute("count", count);
			forward = "storeRecycled";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}
	
	public ActionForward getById(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			Examsubject examSubject = examSubjectBiz.getExamSubjectById(id);
			String branchString=selectOptions.getBranchString().toString();
			String typeString=selectOptions.getSecondLeve().toString();
				request.setAttribute("branchString", branchString);
				request.setAttribute("typeString", typeString);
			if (examSubject!= null) {
				request.setAttribute("examSubject", examSubject);
				forward = "upDate";
			} else {
				request.setAttribute("msg", "数据加载失败！");
				forward = "msg";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "数据加载失败！");
			forward = "msg";
		}

		return mapping.findForward(forward);

	}
	
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			ExamForm examForm = (ExamForm) form;
			int count =examSubjectBiz.addExamSubject(examForm);
			if (count>0) {
				getList(mapping, form, request, response);
				forward = "getList";
			} else {
				request.setAttribute("msg", "添加失败！");
				forward = "msg";
			}
			
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "添加失败！");
			forward = "msg";
		}

		return mapping.findForward(forward);

	}
	public ActionForward upDate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
				ExamForm exam = (ExamForm) form;
				int count =examSubjectBiz.updateExamSubject(exam);
				if (count>0) {
					getList(mapping, form, request, response);
					forward = "getList";
				} else {
					request.setAttribute("msg", "修改失败！");
					forward = "msg";
				}
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "添加失败！");
			forward = "msg";
		}

		return mapping.findForward(forward);

	}

	public ActionForward upDateState(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			String type=request.getParameter("type");
			int id=Integer.parseInt(request.getParameter("id"));
			Examsubject examSubject =examSubjectBiz.getExamSubjectById(id);
			if (type!=null) {
				examSubject.setSubState(1);
				int count=examSubjectBiz.updateExamSubject(examSubject);
					if (count>0) {
						getStoreRecycled(mapping, form, request, response);
						forward = "storeRecycled";
					} 
			} else {
				examSubject.setSubState(0);

				int count=examSubjectBiz.updateExamSubject(examSubject);
					if (count>0) {
						getList(mapping, form, request, response);
						forward = "getList";
					}
			}
			
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "添加失败！");
			forward = "msg";
		}

		return mapping.findForward(forward);

	}
	public ActionForward delete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward = "";
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			Examsubject examSubject = new Examsubject();
			examSubject.setSubId(id);
			int count =examSubjectBiz.deleteExamSubject(examSubject);
			if (count>0) {
				getStoreRecycled(mapping, form, request, response);
				forward = "storeRecycled";
			} else {
				request.setAttribute("msg", "修改失败！");
				forward = "msg";
			}
		} catch (RuntimeException e) {
			e.printStackTrace();
			request.setAttribute("msg", "删除失败！");
			forward = "msg";
		}
		return mapping.findForward(forward);
	}
	
	public ActionForward getBranch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String forward="";
		try {
			String branchString=selectOptions.getBranchString().toString();
			String typeString=selectOptions.getSecondLeve().toString();
			if(branchString!=null){
				request.setAttribute("branchString", branchString);
				request.setAttribute("typeString", typeString);
			}
			forward="addStore";
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return mapping.findForward(forward);
	}

	public ExamSubjectBiz getExamSubjectBiz() {
		return examSubjectBiz;
	}

	public void setExamSubjectBiz(ExamSubjectBiz examSubjectBiz) {
		this.examSubjectBiz = examSubjectBiz;
	}

	public SelectOptions getSelectOptions() {
		return selectOptions;
	}

	public void setSelectOptions(SelectOptions selectOptions) {
		this.selectOptions = selectOptions;
	}
}
