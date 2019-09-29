package com.project.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;

import com.project.model.FeedbackVO;

@Repository
public class FeedbackDAOImp implements FeedbackDAO{
	@Autowired 
	private SessionFactory sessionFactory;
	
	public void postFeedback(FeedbackVO feedbackVO){
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
	}
	
	public List viewFeedback(FeedbackVO feedbackVO){
		List ls = new ArrayList();
		try{
			Session session = this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM FeedbackVO");
			ls = q.list();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return ls;
	}
	
	public List viewDoctorFeedback(FeedbackVO feedbackVO){
		List ls = new ArrayList();
		try{
			Session session = this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM FeedbackVO where loginVO.loginId = '"+feedbackVO.getLoginVO().getLoginId()+"'");
			ls = q.list();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return ls;
	}
	
}
