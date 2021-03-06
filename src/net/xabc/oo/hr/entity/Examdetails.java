package net.xabc.oo.hr.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Examdetails generated by MyEclipse Persistence Tools
 */

public class Examdetails implements java.io.Serializable {

	// Fields

	private Integer edId;

	private Examsecondlevel examsecondlevel;

	private Integer edAmount;

	private Integer edSelectCount;

	private Integer edDialogCotun;

	private Integer edScore;

	private Set engageexams = new HashSet(0);

	// Constructors

	/** default constructor */
	public Examdetails() {
	}

	/** minimal constructor */
	public Examdetails(Examsecondlevel examsecondlevel) {
		this.examsecondlevel = examsecondlevel;
	}

	/** full constructor */
	public Examdetails(Examsecondlevel examsecondlevel, Integer edAmount,
			Integer edSelectCount, Integer edDialogCotun, Integer edScore,
			Set engageexams) {
		this.examsecondlevel = examsecondlevel;
		this.edAmount = edAmount;
		this.edSelectCount = edSelectCount;
		this.edDialogCotun = edDialogCotun;
		this.edScore = edScore;
		this.engageexams = engageexams;
	}

	// Property accessors

	public Integer getEdId() {
		return this.edId;
	}

	public void setEdId(Integer edId) {
		this.edId = edId;
	}

	public Examsecondlevel getExamsecondlevel() {
		return this.examsecondlevel;
	}

	public void setExamsecondlevel(Examsecondlevel examsecondlevel) {
		this.examsecondlevel = examsecondlevel;
	}

	public Integer getEdAmount() {
		return this.edAmount;
	}

	public void setEdAmount(Integer edAmount) {
		this.edAmount = edAmount;
	}

	public Integer getEdSelectCount() {
		return this.edSelectCount;
	}

	public void setEdSelectCount(Integer edSelectCount) {
		this.edSelectCount = edSelectCount;
	}

	public Integer getEdDialogCotun() {
		return this.edDialogCotun;
	}

	public void setEdDialogCotun(Integer edDialogCotun) {
		this.edDialogCotun = edDialogCotun;
	}

	public Integer getEdScore() {
		return this.edScore;
	}

	public void setEdScore(Integer edScore) {
		this.edScore = edScore;
	}

	public Set getEngageexams() {
		return this.engageexams;
	}

	public void setEngageexams(Set engageexams) {
		this.engageexams = engageexams;
	}

}