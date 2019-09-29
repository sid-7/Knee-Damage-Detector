package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="packageTable")
public class PackageVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="packageName")
	private String packageName;
	
	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	@Column(name="packageDescription")
	private String packageDescription;
	
	@Column(name="packageAmount")
	private int packageAmount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPackageDescription() {
		return packageDescription;
	}

	public void setPackageDescription(String packageDescription) {
		this.packageDescription = packageDescription;
	}

	public int getPackageAmount() {
		return packageAmount;
	}

	public void setPackageAmount(int packageAmount) {
		this.packageAmount = packageAmount;
	}
	
	@Column(name="packageStatus")
	private boolean packageStatus=true;

	public boolean isPackageStatus() {
		return packageStatus;
	}

	public void setPackageStatus(boolean packageStatus) {
		this.packageStatus = packageStatus;
	}
}
