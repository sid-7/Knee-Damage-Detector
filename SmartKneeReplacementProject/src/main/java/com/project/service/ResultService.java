package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ResultDAO;
import com.project.model.ResultVO;

@Service
public class ResultService {

@Autowired ResultDAO resultDAO;
	
	@Transactional
	public List view(ResultVO resultVO)
	{
		return resultDAO.viewResult(resultVO);  //returning list
	}
}
