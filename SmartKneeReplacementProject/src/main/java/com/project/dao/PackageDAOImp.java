package com.project.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;


import com.project.model.PackageVO;

@Repository
public class PackageDAOImp implements PackageDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addPackage(PackageVO packageVO){
		Session session = this.sessionFactory.getCurrentSession();
		session.save(packageVO);
	}
	
	public List viewPackage(PackageVO packageVO) {
		List ls = new ArrayList();
		try
		{
			Session session=this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM PackageVO where packageStatus=true");
			ls = q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
	
	public List deletePackage(PackageVO packageVO)
	{
		List ls = new ArrayList();
		try
		{
			 Session session=this.sessionFactory.getCurrentSession();
			 Query q = session.createQuery("FROM PackageVO where id = '"+packageVO.getId()+"'");
		     ls = q.list();
			 session.delete(packageVO);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
	
	public List editPackage(PackageVO packageVO)
	{
		List ls = new ArrayList();
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query q = session.createQuery("FROM PackageVO where id = '"+packageVO.getId()+"'");
			ls = q.list();
		}
		catch(Exception x)
		{
			x.printStackTrace();
		}
		return ls;
	}
	
	public void updatePackage(PackageVO packageVO)
	{
		Session session=sessionFactory.getCurrentSession();
		session.update(packageVO);
	}
	
}

