package com.project.service;

import javax.transaction.Transactional;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.*;
import com.project.model.ResultVO;
import com.project.model.UserXrayVO;

@Service
public class UserXrayService {
	@Autowired UserXrayDAO userXrayDAO;
	
	@Transactional
	public void upload(UserXrayVO userXrayVO){
		userXrayDAO.uploadXray(userXrayVO);
	}
	
	@Transactional
	public List view(UserXrayVO userXrayVO){
		return userXrayDAO.viewResult(userXrayVO);
	}
}
