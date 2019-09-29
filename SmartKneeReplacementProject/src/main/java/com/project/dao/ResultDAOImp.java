package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ResultVO;

@Repository
public class ResultDAOImp implements ResultDAO{

	@Autowired SessionFactory sessionFactory;
	
	public List viewResult(ResultVO resultVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ResultVO");
		List ls = q.list();
		return ls;
	}

}
