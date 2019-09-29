package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.LoginDAO;
import com.project.model.LoginVO;
import com.project.model.RegisterVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;

	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		loginDAO.register(registerVO);
	}

	@Transactional
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	@Transactional
	public List searchLoginID(String loginService) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginService);
		return ls;
	}
}