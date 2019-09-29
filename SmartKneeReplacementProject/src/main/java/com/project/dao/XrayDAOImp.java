package com.project.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;

import com.project.model.XrayVO;

@Repository
public class XrayDAOImp implements XrayDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List viewXray(XrayVO xrayVO) {
		List ls = new ArrayList();
		try
		{
			Session session=this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM XrayVO");
			ls = q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
}
