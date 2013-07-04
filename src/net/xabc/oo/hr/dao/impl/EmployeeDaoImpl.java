package net.xabc.oo.hr.dao.impl;
import java.util.List;
import net.xabc.oo.hr.dao.EmployeeDao;
import net.xabc.oo.hr.entity.Employee;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class EmployeeDaoImpl extends HibernateDaoSupport implements EmployeeDao {

	/***
	 * 取得所有的档案列表并分页
	 */
	 public List selectEmployee(int pageNum,int pageSize){
			String hql="from Employee employee where employee.employeeStatus in (0,1)";
			Query query = this.getSession().createQuery(hql);
			int firstResulyIndex=pageSize*(pageNum-1);
			query.setFirstResult(firstResulyIndex);
			query.setMaxResults(pageSize);
			return query.list();
		}
	 
	 /**
	  * 获取所有档案分页总页数
	  */
		public int getTotalPage(int pageSize) {
			String hql="select count(employee) from Employee employee where employee.employeeStatus in (0,1)";
			Query query=this.getSession().createQuery(hql);
			int count=Integer.parseInt(query.uniqueResult().toString());
			return count%pageSize==0?count/pageSize:count/pageSize+1;
		}
		
		/**
		 * 查询已经被删除的档案列表
		 * 状态为3
		 */
		public List selectEmployeeByStatus(int pageNum, int pageSize) {
			String hql="from Employee employee where employee.employeeStatus=3";
			Query query = this.getSession().createQuery(hql);
			int firstResulyIndex=pageSize*(pageNum-1);
			query.setFirstResult(firstResulyIndex);
			query.setMaxResults(pageSize);
			return query.list();
		}
		
		/**
		 * 查询已被删除的信息的总页数
		 */
		public int getTotalPageES(int pageSize) {
		   String hql="select count(employee) from Employee employee where employee.employeeStatus=3 ";
		   Query query=this.getSession().createQuery(hql);
		   int count=Integer.parseInt(query.uniqueResult().toString());
		   return count%pageSize==0?count/pageSize:count/pageSize+1;
		}

		
		
		/**
		 * 根据Id查找
		 */
		public Employee getEmployeeById(int employeeId) {
			Employee employee=(Employee) this.getHibernateTemplate().get(Employee.class, employeeId);
			return employee;
		}
	 
	 
	public int addEmployee(Employee emloyee) {
		try {
			this.getHibernateTemplate().save(emloyee);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	public int deleteEmployee(int employeeId) {
		try {
			this.getHibernateTemplate().delete(employeeId);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
		return 1;
	}

	public int updateEmployee(Employee emloyee) {
		try {
			this.getHibernateTemplate().update(emloyee);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	/**
	 * 查找
	 */
	public List search(Employee employee) {
		Criteria c=this.getSession().createCriteria(Employee.class);
		if(employee!=null){
			if(employee.getEmployeeName()!=null){
				c.add(Restrictions.like("employeeName", employee.getEmployeeName(),MatchMode.ANYWHERE));
			}
			if(employee.getEmployeeEntertime()!=null){
				c.add(Restrictions.eq("employeeEntertime", employee.getEmployeeEntertime()) );
			}
			employee.setEmployeeStatus(1);
			c.add(Restrictions.eq("employeeStatus", employee.getEmployeeStatus()));
		}
		return c.list();
	}

	/**
	 * 修改员工档案状态
	 */
	public int updateEmployeeStatus(int employeeId) {
		String hql="update Employee employee set employee.employeeStatus=3 where employee.employeeId="+employeeId;
		Query query=this.getSession().createQuery(hql);
		int count=query.executeUpdate();
		return count;
	}

	
	/**
	 * 修改员工档案状态(从回收站)
	 */
	public int updateEmployeeStatusRe(int employeeStatus,int employeeId) {
		String hql="update Employee employee set employee.employeeStatus=? where employee.employeeId=?";
		Query query=this.getSession().createQuery(hql);
		query.setInteger(0, employeeStatus);
		query.setInteger(1, employeeId);
		int count=query.executeUpdate();
		return count;
	}



	




	

}
