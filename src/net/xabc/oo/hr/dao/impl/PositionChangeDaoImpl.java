package net.xabc.oo.hr.dao.impl;

import java.util.List;

import net.xabc.oo.hr.dao.PositionChangeDao;
import net.xabc.oo.hr.entity.Employee;
import net.xabc.oo.hr.entity.Positionchange;

import org.hibernate.Query;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class PositionChangeDaoImpl extends HibernateDaoSupport implements
		PositionChangeDao {

	public int addPC(Positionchange positionChange) {
		try {
			this.getHibernateTemplate().save(positionChange);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int delete(int positionChangeId) {
		String hql = " from PositionChange positionChange where positionChange.positionChangeId"
				+ positionChangeId;
		Query query = this.getSession().createQuery(hql);
		Object count = query.list().get(0);
		return Integer.parseInt(count.toString());
	}

	public List selectAllPC(int pageNum, int pageSize, int branchId,int status) {
		String sql = "from PositionChange pc where  pc.positionChangeAfterPositionId "
				+ "in(select position.positionId from Position position where position.branch.branchId=?) and pc.positionChangeCheckStatus=? ";
		Query query = this.getSession().createQuery(sql);
		query.setInteger(0, branchId);
		query.setInteger(1, status);
		int firstResulyIndex = pageSize * (pageNum - 1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		return query.list();

	}

	public int updatePC(Positionchange positionChange) {
		 String sql="update positionChange set positionChange_checker=? ,positionChange_checkTime=?,positionChange_checkStatus=? where positionChange_Id=?";
	      Query query = this.getSession().createSQLQuery(sql);
	      query.setString(0, positionChange.getPositionChangeChecker());
	      query.setDate(1, positionChange.getPositionChangeCheckTime());
	      query.setInteger(2, positionChange.getPositionChangeCheckStatus());
	      query.setInteger(3, positionChange.getPositionChangeId());
	      int count=query.executeUpdate();
	      return count;
	}
	/***
	 * 通过审核之后修改员工信息的职位Id
	 * @param employeeId
	 * @return
	 */
	public int updateEmployeePositionId(int positionId,int employeeId) {
		String hql="update Employee employee set employee.position.positionId=? where employee.employeeId=?";
		Query query=this.getSession().createQuery(hql);
		query.setInteger(0, positionId);
		query.setInteger(1, employeeId);
		int count=query.executeUpdate();
		return count;
	}

	/***************************************************************************
	 * 根据员工姓名查找员工信息
	 * 
	 * @param employee
	 * @return
	 */
	public List search(Employee employee,int branchId) {
//		Criteria c = this.getSession().createCriteria(Employee.class);
		String hql="from Employee employee";;
//		c.add(Restrictions.eq("position.branch.branchId",branchId));
		if (employee != null) {
			if (employee.getEmployeeName() != null) {
//				c.add(Restrictions.like("employeeName", employee
//						.getEmployeeName(), MatchMode.ANYWHERE));
				hql+=" where employee.employeeName like '%"+employee.getEmployeeName()+"%'";
			}
			hql+=" and employee.position.branch.branchId="+branchId+"";
		}
		Query query=this.getSession().createQuery(hql);
		return query.list();
	}

	/**
	 * 获取调动员工信息分页总页数
	 */
	public int getTotalPage(int pageSize,int branchId) {
		String hql = "select count(employee) from Employee employee where employee.position.branch.branchId=? ";
		Query query = this.getSession().createQuery(hql);
		query.setInteger(0, branchId);
		int count = Integer.parseInt(query.uniqueResult().toString());
		return count % pageSize == 0 ? count / pageSize : count / pageSize + 1;
	}

	/***************************************************************************
	 * 取得所有调动员工信息列表并分页
	 */
	public List selectEmployee(int pageNum, int pageSize, int branchId) {
		String hql = "from Employee employee where employee.position.branch.branchId=?";
		Query query = this.getSession().createQuery(hql);
		query.setInteger(0, branchId);
		int firstResulyIndex = pageSize * (pageNum - 1);
		query.setFirstResult(firstResulyIndex);
		query.setMaxResults(pageSize);
		return query.list();
	}

	/**
	 * 根据Id查找
	 */
	public Positionchange getEmployeeById(int positionChangId) {
		Positionchange position = (Positionchange) this.getHibernateTemplate()
				.get(Positionchange.class, positionChangId);
		return position;
	}

	/**
	 * 根据Id查找
	 */
	public Employee selectEmployeeById(int employeeId) {
		Employee employee = (Employee) this.getHibernateTemplate().get(
				Employee.class, employeeId);
		return employee;
	}

	public String getBranchAfterNmaeByPoinsitionId(int positionChangeAfterPositionId) {
		String hql = "select branchs.branchName from Branch branchs,Position position where position_Id=? and branchs.branchId = position.branch.branchId";
		Query query = this.getSession().createQuery(hql);
		query.setInteger(0, positionChangeAfterPositionId);
		String branchName = (String) query.list().get(0);
		return branchName;
	}

	public String getBranchBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId) {
		String hql="select branchs.branchName from Branch branchs,Position position where position_Id=? and branchs.branchId = position.branch.branchId";
		//String hql = "select branch.branchName from Branch branch where branch.branchId =(select position.branchId from Position position where position.positionId=?)";
		Query query = this.getSession().createQuery(hql);
		query.setInteger(0, positionChangeBeforePositionId);
		String branchName = (String) query.list().get(0);
		return branchName;
	}

	public String getPositionAfterNmaeByPoinsitionId(
			int positionChangeAfterPositionId) {
		String hql = "select position.positionName from Position position where position.positionId ="
				+ positionChangeAfterPositionId;
		Query query = this.getSession().createQuery(hql);
		String positionName = (String) query.list().get(0);
		return positionName;

	}

	public String getPositionBeforeNmaeByPoinsitionId(
			int positionChangeBeforePositionId) {
		String hql = "select position.positionName from Position position where position.positionId ="
				+ positionChangeBeforePositionId;
		Query query = this.getSession().createQuery(hql);
		String positionName = (String) query.list().get(0);
		return positionName;
	}

	public int select(int id) {
		
		return 0;
	}

	public List getPositionChangeReport(int page,int pageSize) {
	     String hql="from PositionChange pc where pc.positionChangeCheckStatus=1";
	     Query query=this.getSession().createQuery(hql);
	     int firstResult=pageSize*(page-1);
	     query.setFirstResult(firstResult);
	     query.setMaxResults(pageSize);
		return query.list();
	}

	public int getPositionChangeReport(int pageSize) {
		String hql="select count(pc) from PositionChange pc where pc.positionChangeCheckStatus=1 ";
		Query query=this.getSession().createQuery(hql);
		int count=Integer.parseInt(query.uniqueResult().toString());
		return count%pageSize==0?count/pageSize:count/pageSize+1;
	}
	
	


}
