package net.xabc.oo.hr.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Role generated by MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private Integer roleId;

	private String roleName;

	private String roleRemark;

	private Set userses = new HashSet(0);

	private Set rolerightses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** full constructor */
	public Role(String roleName, String roleRemark, Set userses,
			Set rolerightses) {
		this.roleName = roleName;
		this.roleRemark = roleRemark;
		this.userses = userses;
		this.rolerightses = rolerightses;
	}

	// Property accessors

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleRemark() {
		return this.roleRemark;
	}

	public void setRoleRemark(String roleRemark) {
		this.roleRemark = roleRemark;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getRolerightses() {
		return this.rolerightses;
	}

	public void setRolerightses(Set rolerightses) {
		this.rolerightses = rolerightses;
	}

}