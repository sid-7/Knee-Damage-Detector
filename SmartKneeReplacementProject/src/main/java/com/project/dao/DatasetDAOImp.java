package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.DatasetVO;

@Repository
public class DatasetDAOImp implements DatasetDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List  searchDataset(DatasetVO datasetVO){
		
		List ls = new ArrayList();
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DatasetVO");
		ls =q.list();
		return ls;
	}
	
	@Override
	public void deleteDataset(DatasetVO datasetVO){
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(datasetVO);
		
	}
}
