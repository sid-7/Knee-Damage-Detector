package com.project.service;

import javax.transaction.Transactional;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.*;
import com.project.model.ResultVO;

@Service
public class DoctorXrayService {
	@Autowired DoctorXrayDAO doctorXrayDAO;
	
	@Transactional
	public void upload(ResultVO resultVO){
		doctorXrayDAO.uploadXray(resultVO);
	}
	
	@Transactional
	public List view(ResultVO resultVO){
		return doctorXrayDAO.viewResult(resultVO);
	}
}
