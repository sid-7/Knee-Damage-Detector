package com.project.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Table(name="complaintTable")
public class ComplaintVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="complaintId")
	private int complaintId;
	
	@Column(name="complaintTitle")
	private String complaintTitle;
	
	@Column(name="complaintDescription")
	private String complaintDescription;
	
	@Column(name="complaintReplyDescription")
	private String complaintReplyDescription;
	
	@Column(name="complaintStatus")
	private String complaintStatus;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Column(name="complaintDate")
	private String complaintDate;
	
	@Column(name="complaintTime")
	private String complaintTime;

	public int getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}

	public String getComplaintTitle() {
		return complaintTitle;
	}

	public void setComplaintTitle(String complaintTitle) {
		this.complaintTitle = complaintTitle;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public String getComplaintReplyDescription() {
		return complaintReplyDescription;
	}

	public void setComplaintReplyDescription(String complaintReplyDescription) {
		this.complaintReplyDescription = complaintReplyDescription;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public String getComplaintDate() {
		return complaintDate;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public String getComplaintTime() {
		return complaintTime;
	}

	public void setComplaintTime(String complaintTime) {
		this.complaintTime = complaintTime;
	}
	
	
	
	

}
