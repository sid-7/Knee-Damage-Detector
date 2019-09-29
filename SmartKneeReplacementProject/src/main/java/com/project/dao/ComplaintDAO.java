package com.project.dao;

import java.util.List;

import com.project.model.ComplaintVO;

public interface ComplaintDAO {

	public List viewComplaint(ComplaintVO complaintVO);
	public List userViewComplaint(ComplaintVO complaintVO);
	public void addComplaint(ComplaintVO complaintVO);
	public List editComplaint(ComplaintVO complaintVO);
	public void updateComplaint(ComplaintVO complaintVO);
}
