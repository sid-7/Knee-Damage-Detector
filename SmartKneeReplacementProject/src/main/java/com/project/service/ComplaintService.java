package com.project.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplaintDAO;
import com.project.model.ComplaintVO;


@Service
public class ComplaintService {
	
@Autowired ComplaintDAO complaintDAO;
	
	@Transactional
	public void add(ComplaintVO complaintVO)
	{
		complaintDAO.addComplaint(complaintVO);  
	}
	
	@Transactional
	public List view(ComplaintVO complaintVO)
	{
		return complaintDAO.viewComplaint(complaintVO);  //returning list
	}
	
	@Transactional
	public List userView(ComplaintVO complaintVO)
	{
		return complaintDAO.userViewComplaint(complaintVO);  //returning list
	}
	
	@Transactional
	public List edit(ComplaintVO complaintVO)
	{
		List ls = complaintDAO.editComplaint(complaintVO);
		return ls;
	}
	
	@Transactional
	public void update(ComplaintVO complaintVO)
	{
		complaintDAO.updateComplaint(complaintVO);
	}

}
