package com.project.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.DoctorAppointmentVO;

@Repository
public class DoctorAppointmentDAOImp implements DoctorAppointmentDAO{
	@Autowired SessionFactory sessionFactory;

	public List viewAppointment(DoctorAppointmentVO doctorAppointmentVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DoctorAppointmentVO");
		List ls = q.list();
		return ls;
	}
}
