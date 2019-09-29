package com.project.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.DoctorAppointmentDAO;
import com.project.model.DoctorAppointmentVO;

@Service
public class DoctorAppointmentService {

@Autowired DoctorAppointmentDAO doctorAppointmentDAO;
	
	@Transactional
	public List view(DoctorAppointmentVO doctorAppointmentVO)
	{
		return doctorAppointmentDAO.viewAppointment(doctorAppointmentVO);  //returning list
	}
}
