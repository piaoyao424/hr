package net.xabc.oo.hr.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Datatype generated by MyEclipse Persistence Tools
 */

public class Datatype implements java.io.Serializable {

	// Fields

	private Integer datatypeId;

	private String datatypeName;

	private Set datadetails = new HashSet(0);

	// Constructors

	/** default constructor */
	public Datatype() {
	}

	/** minimal constructor */
	public Datatype(String datatypeName) {
		this.datatypeName = datatypeName;
	}

	/** full constructor */
	public Datatype(String datatypeName, Set datadetails) {
		this.datatypeName = datatypeName;
		this.datadetails = datadetails;
	}

	// Property accessors

	public Integer getDatatypeId() {
		return this.datatypeId;
	}

	public void setDatatypeId(Integer datatypeId) {
		this.datatypeId = datatypeId;
	}

	public String getDatatypeName() {
		return this.datatypeName;
	}

	public void setDatatypeName(String datatypeName) {
		this.datatypeName = datatypeName;
	}

	public Set getDatadetails() {
		return this.datadetails;
	}

	public void setDatadetails(Set datadetails) {
		this.datadetails = datadetails;
	}

}