package net.xabc.oo.hr.common;

import java.util.List;

import net.xabc.oo.hr.biz.BranchBiz;
import net.xabc.oo.hr.biz.DataDetaiBiz;
import net.xabc.oo.hr.biz.DataTypeBiz;
import net.xabc.oo.hr.biz.ExamSecondLeveBiz;
import net.xabc.oo.hr.biz.RoleBiz;
import net.xabc.oo.hr.entity.Branch;
import net.xabc.oo.hr.entity.Datadetail;
import net.xabc.oo.hr.entity.Datatype;
import net.xabc.oo.hr.entity.Examsecondlevel;
import net.xabc.oo.hr.entity.Role;

public class SelectOptions {

	private StringBuffer branchString;
	private StringBuffer roleString;
	private StringBuffer dataDetailString;
	private StringBuffer secondLeveString;
	
	
	private BranchBiz branchBiz;
	private DataTypeBiz dataTypeBiz;
	private DataDetaiBiz dataDetailBiz;
	private RoleBiz roleBiz;
	private ExamSecondLeveBiz secondLeveBiz;
	
	
	
	/**
	 * 获取所有的部门
	 */
	public StringBuffer getBranchString(){
//		 if(branchString==null){
			 branchString=new StringBuffer();
			 List<Branch> branchList=branchBiz.getAllBranch();
			 for(int i=0;i<branchList.size();i++){
				 Branch branch=branchList.get(i);
				 branchString.append("<option value='"+branch.getBranchId()+"'>"+branch.getBranchName()+"</option>");
			 }
//		 }
	 
		return branchString;
	}
	/**
	 * 获取所有用户角色
	 * @return
	 */
	public StringBuffer getRoleString(){
			roleString=new StringBuffer();
			List roleList=roleBiz.selectAll();
			for(int i=0;i<roleList.size();i++){
				Role role=(Role) roleList.get(i);
				roleString.append("<option value='"+role.getRoleId()+"'>"+role.getRoleName()+"</option>");
			}
		return roleString;
	}
	
	/**
	 * 数据字典
	 * @return
	 */
	public StringBuffer getDataDetailsByDataTypeId(int dateTypeId){
		Datatype dataType=dataTypeBiz.selectDataTypeById(dateTypeId);
		if(dataType.getDatatypeId()>0){
			List dataDetailsList=dataDetailBiz.getDataDetailByDataTypeId(dataType.getDatatypeId());
			if(dataDetailsList.size()>0 && dataDetailsList!=null){
				dataDetailString=new StringBuffer();
				for(int i=0;i<dataDetailsList.size();i++){
					Datadetail dataDetail=(Datadetail) dataDetailsList.get(i);
					dataDetailString.append("<option value='"+dataDetail.getDataDetailId()+"'>"+dataDetail.getDataDetailName()+"</option>");	
				}
			} 
		}
		return dataDetailString;
	}
	public StringBuffer getSecondLeve(){
		List list=secondLeveBiz.getAllExamSecondLevel();
		if (list.size()>0&&list!=null) {
			secondLeveString=new StringBuffer();
			for (int i = 0; i < list.size(); i++) {
				Examsecondlevel secondLevel=(Examsecondlevel) list.get(i);
				secondLeveString.append("<option value='"+secondLevel.getEslId()+"'>"+secondLevel.getEslSecondName()+"</option>");
			}
		}
		return secondLeveString;
	}
	
	public String [] getAllSelect(){
		String selectArray[]=new String[1];
		//得到职位名称的option，并以字符串形式，存放于数组中
		selectArray[0]=this.getBranchString().toString();
		selectArray[1]=this.getRoleString().toString();
		return selectArray;
	}
	
	public BranchBiz getBranchBiz() {
		return branchBiz;
	}


	public void setBranchBiz(BranchBiz branchBiz) {
		this.branchBiz = branchBiz;
	}


	public DataTypeBiz getDataTypeBiz() {
		return dataTypeBiz;
	}


	public void setDataTypeBiz(DataTypeBiz dataTypeBiz) {
		this.dataTypeBiz = dataTypeBiz;
	}


	public DataDetaiBiz getDataDetailBiz() {
		return dataDetailBiz;
	}
	public void setDataDetailBiz(DataDetaiBiz dataDetailBiz) {
		this.dataDetailBiz = dataDetailBiz;
	}
	public RoleBiz getRoleBiz() {
		return roleBiz;
	}
	public void setRoleBiz(RoleBiz roleBiz) {
		this.roleBiz = roleBiz;
	}
	public ExamSecondLeveBiz getSecondLeveBiz() {
		return secondLeveBiz;
	}
	public void setSecondLeveBiz(ExamSecondLeveBiz secondLeveBiz) {
		this.secondLeveBiz = secondLeveBiz;
	}
}
