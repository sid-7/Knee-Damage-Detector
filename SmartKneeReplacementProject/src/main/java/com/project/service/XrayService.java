package com.project.service;

import javax.transaction.Transactional;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.*;
import com.project.model.XrayVO;

@Service
public class XrayService {
	@Autowired XrayDAO xrayDAO;
	
	@Transactional
	public List view(XrayVO xrayVO){
		return xrayDAO.viewXray(xrayVO);
	}
}
