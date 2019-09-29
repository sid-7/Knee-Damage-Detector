package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctorTable")
public class DoctorVO {

	//firstname, lastname, email, contactno, gender, Qualification, Practice-no., Clinic name, Clinic address
	
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		@Column(name="id")
		private int id;
		
		@Column(name="firstName")
		private String firstName;
		
		@Column(name="lastName")
		private String lastName;
		
		@Column(name="eMail")
		private String eMail;
		
		@Column(name="contactNo")
		private int contactNo;
		
		@Column(name="gender")
		private String gender;
		
		@Column(name="qualification")
		private String qualification;
		
		@Column(name="practiceNo")
		private int practiceNo;
		
		@Column(name="clinicName")
		private String clinicName;
		
		@Column(name="clinicAddress")
		private String clinicAddress;
		
		@Column(name="doctorStatus")
		private boolean doctorStatus;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String geteMail() {
			return eMail;
		}

		public void seteMail(String eMail) {
			this.eMail = eMail;
		}

		public int getContactNo() {
			return contactNo;
		}

		public void setContactNo(int contactNo) {
			this.contactNo = contactNo;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getQualification() {
			return qualification;
		}

		public void setQualification(String qualification) {
			this.qualification = qualification;
		}

		public int getPracticeNo() {
			return practiceNo;
		}

		public void setPracticeNo(int practiceNo) {
			this.practiceNo = practiceNo;
		}

		public String getClinicName() {
			return clinicName;
		}

		public void setClinicName(String clinicName) {
			this.clinicName = clinicName;
		}

		public String getClinicAddress() {
			return clinicAddress;
		}

		public void setClinicAddress(String clinicAddress) {
			this.clinicAddress = clinicAddress;
		}

		public boolean isDoctorStatus() {
			return doctorStatus;
		}

		public void setDoctorStatus(boolean doctorStatus) {
			this.doctorStatus = doctorStatus;
		}

}