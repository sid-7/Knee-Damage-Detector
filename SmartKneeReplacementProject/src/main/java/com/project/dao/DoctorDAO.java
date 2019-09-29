package com.project.dao;

import java.util.List;

import com.project.model.DoctorVO;
import com.project.model.PackageVO;

public interface DoctorDAO {
	
	public List viewDoctor(DoctorVO doctorVO);
	public List editDoctor(DoctorVO doctorVO);
	public void updateDoctor(DoctorVO doctorVO);
	public List deleteDoctor(DoctorVO doctorVO);
	
}
