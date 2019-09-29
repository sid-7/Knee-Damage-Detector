package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplaintVO;


@Repository
public class ComplaintDAOImp implements ComplaintDAO {
	
	@Autowired SessionFactory sessionFactory;


	public List viewComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplaintVO");
		List ls = q.list();
		return ls;
	}
	
	public List userViewComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplaintVO where phoneNumber='"+complaintVO.getPhoneNumber()+"'");
		List ls = q.list();
		return ls;
	}


	
	public List editComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplaintVO where id='"+complaintVO.getComplaintId()+"'");
		List ls=q.list();
		return ls;
	}


	public void updateComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(complaintVO);		
	}



	
	public void addComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(complaintVO);
	}


}
