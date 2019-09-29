package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.DoctorDAO;
import com.project.model.DoctorVO;

@Service
public class DoctorService {
    @Autowired DoctorDAO dao;
	
	@Transactional
	public List view(DoctorVO doctorVO)
	{
		List ls = this.dao.viewDoctor(doctorVO);
		return ls;
		
	}
	
	@Transactional
	public List edit(DoctorVO doctorVO)
	{
		List ls = dao.editDoctor(doctorVO);
		return ls;
	}
	@Transactional
	public void update(DoctorVO doctorVO)
	{
		dao.updateDoctor(doctorVO);
	}
	
	@Transactional
	public List delete(DoctorVO doctorVO)
	{
		List ls = dao.deleteDoctor(doctorVO);
		return ls;
	}
}





