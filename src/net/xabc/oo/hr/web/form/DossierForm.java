package net.xabc.oo.hr.web.form;
import javax.servlet.http.HttpServletRequest;

import net.xabc.oo.hr.entity.Datatype;
import net.xabc.oo.hr.entity.Resume;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class DossierForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private Integer employeeId;

	private Resume resume;

	private String employeeName;

	private Integer employeeAge;

	private String employeeSex="男";

	private String employeeBirthday;

	private Integer employeeNation;


	private Integer empolyeeDegree;


	private String employeeSpeciality;

	private int employeePolity;

	private String employeeFamilyAddress;

	private String employeeFamilyphone;

	private String employeeEntertime;

	private String employeePhoto;


	private String employeeEmail;

	private String employeeBirthPlace;

	private String employeeMobile;

	private String employeeAddress;

	private String employeeQq;
	
	private String branch;
	
	private String position;
	
	private Integer employeeBranchId;
	
	private String employeeBranch;

	private Integer employeePositionId;
	
	private String employeePosition;

	private String employeePostcode;

	private String employeeHobby;

	private String employeeSkills;

	private String employeeRemark;

	private Integer employeeChangeNum;

	private Integer employeeStatus;
	
	
	private String register;
	private String changer;
	
	private FormFile myFile;
	
	
	private String checkComment;
	
	
	private Datatype dataType;

	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;

	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {
         
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getEmployeeAddress() {
		return employeeAddress;
	}

	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}

	public Integer getEmployeeAge() {
		return employeeAge;
	}

	public void setEmployeeAge(Integer employeeAge) {
		this.employeeAge = employeeAge;
	}

	 

	public String getEmployeeBirthPlace() {
		return employeeBirthPlace;
	}

	public void setEmployeeBirthPlace(String employeeBirthPlace) {
		this.employeeBirthPlace = employeeBirthPlace;
	}

	public Integer getEmployeeChangeNum() {
		return employeeChangeNum;
	}

	public void setEmployeeChangeNum(Integer employeeChangeNum) {
		this.employeeChangeNum = employeeChangeNum;
	}

	public String getEmployeeEmail() {
		return employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	public String getEmployeeEntertime() {
		return employeeEntertime;
	}

	public void setEmployeeEntertime(String employeeEntertime) {
		this.employeeEntertime = employeeEntertime;
	}

	public String getEmployeeFamilyAddress() {
		return employeeFamilyAddress;
	}

	public void setEmployeeFamilyAddress(String employeeFamilyAddress) {
		this.employeeFamilyAddress = employeeFamilyAddress;
	}

	public String getEmployeeFamilyphone() {
		return employeeFamilyphone;
	}

	public void setEmployeeFamilyphone(String employeeFamilyphone) {
		this.employeeFamilyphone = employeeFamilyphone;
	}

	public String getEmployeeHobby() {
		return employeeHobby;
	}

	public void setEmployeeHobby(String employeeHobby) {
		this.employeeHobby = employeeHobby;
	}

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}


	public String getEmployeeMobile() {
		return employeeMobile;
	}

	public void setEmployeeMobile(String employeeMobile) {
		this.employeeMobile = employeeMobile;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getEmployeePhoto() {
		return employeePhoto;
	}

	public void setEmployeePhoto(String employeePhoto) {
		this.employeePhoto = employeePhoto;
	}

	public int getEmployeePolity() {
		return employeePolity;
	}

	public void setEmployeePolity(int employeePolity) {
		this.employeePolity = employeePolity;
	}

	public Integer getEmployeePositionId() {
		return employeePositionId;
	}

	public void setEmployeePositionId(Integer employeePositionId) {
		this.employeePositionId = employeePositionId;
	}

	public String getEmployeePostcode() {
		return employeePostcode;
	}

	public void setEmployeePostcode(String employeePostcode) {
		this.employeePostcode = employeePostcode;
	}

	public String getEmployeeQq() {
		return employeeQq;
	}

	public void setEmployeeQq(String employeeQq) {
		this.employeeQq = employeeQq;
	}

	public String getEmployeeRemark() {
		return employeeRemark;
	}

	public void setEmployeeRemark(String employeeRemark) {
		this.employeeRemark = employeeRemark;
	}

	public String getEmployeeSex() {
		return employeeSex;
	}

	public void setEmployeeSex(String employeeSex) {
		this.employeeSex = employeeSex;
	}

	public String getEmployeeSkills() {
		return employeeSkills;
	}

	public void setEmployeeSkills(String employeeSkills) {
		this.employeeSkills = employeeSkills;
	}

	public String getEmployeeSpeciality() {
		return employeeSpeciality;
	}

	public void setEmployeeSpeciality(String employeeSpeciality) {
		this.employeeSpeciality = employeeSpeciality;
	}

	public Integer getEmployeeStatus() {
		return employeeStatus;
	}

	public void setEmployeeStatus(Integer employeeStatus) {
		this.employeeStatus = employeeStatus;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	 

	public Integer getEmployeeBranchId() {
		return employeeBranchId;
	}

	public void setEmployeeBranchId(Integer employeeBranchId) {
		this.employeeBranchId = employeeBranchId;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getEmployeeBirthday() {
		return employeeBirthday;
	}

	public void setEmployeeBirthday(String employeeBirthday) {
		this.employeeBirthday = employeeBirthday;
	}

	public FormFile getMyFile() {
		return myFile;
	}

	public void setMyFile(FormFile myFile) {
		this.myFile = myFile;
	}

	public Datatype getDataType() {
		return dataType;
	}

	public void setDataType(Datatype dataType) {
		this.dataType = dataType;
	}

	public String getEmployeeBranch() {
		return employeeBranch;
	}

	public void setEmployeeBranch(String employeeBranch) {
		this.employeeBranch = employeeBranch;
	}

	public String getEmployeePosition() {
		return employeePosition;
	}

	public void setEmployeePosition(String employeePosition) {
		this.employeePosition = employeePosition;
	}

	public Integer getEmployeeNation() {
		return employeeNation;
	}

	public void setEmployeeNation(Integer employeeNation) {
		this.employeeNation = employeeNation;
	}

	public Integer getEmpolyeeDegree() {
		return empolyeeDegree;
	}

	public void setEmpolyeeDegree(Integer empolyeeDegree) {
		this.empolyeeDegree = empolyeeDegree;
	}

	public String getCheckComment() {
		return checkComment;
	}

	public void setCheckComment(String checkComment) {
		this.checkComment = checkComment;
	}

	public String getRegister() {
		return register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	public String getChanger() {
		return changer;
	}

	public void setChanger(String changer) {
		this.changer = changer;
	}

 
}
