package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.DoctorVO;

@Repository
public class DoctorDAOImp implements DoctorDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List viewDoctor(DoctorVO doctorVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DoctorVO where doctorStatus = true ");
		List ls = q.list();
		return ls;
		
	}
	
	public List editDoctor(DoctorVO doctorVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DoctorVO where id='"+doctorVO.getId()+"'");
		List ls=q.list();
		return ls;
	}
	
	public void updateDoctor(DoctorVO doctorVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(doctorVO);
	}
	
	public List deleteDoctor(DoctorVO doctorVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DoctorVO where id='"+doctorVO.getId()+"'");
		List ls=q.list();
		session.delete(doctorVO);
		return ls;
	}
	
}


