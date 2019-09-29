package com.project.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.project.model.ResultVO;
import com.project.model.UserXrayVO;

@Repository
public class UserXrayDAOImp implements UserXrayDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void uploadXray(UserXrayVO userXrayVO){
		Session session=this.sessionFactory.getCurrentSession();
		session.save(userXrayVO);
	}
	
	@Override
	public List viewResult(UserXrayVO userXrayVO) {
		List ls = new ArrayList();
		try
		{
			Session session=this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM UserXrayVO");
			ls = q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}

}
