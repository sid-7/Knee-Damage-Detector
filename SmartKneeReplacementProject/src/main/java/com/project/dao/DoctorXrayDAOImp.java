package com.project.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.project.model.ResultVO;

@Repository
public class DoctorXrayDAOImp implements DoctorXrayDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void uploadXray(ResultVO resultVO){
		Session session=this.sessionFactory.getCurrentSession();
		session.save(resultVO);
	}
	
	@Override
	public List viewResult(ResultVO resultVO) {
		List ls = new ArrayList();
		try
		{
			Session session=this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM ResultVO");
			ls = q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
}
