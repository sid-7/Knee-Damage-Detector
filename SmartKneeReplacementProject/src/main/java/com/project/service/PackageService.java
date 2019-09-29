package com.project.service;

import javax.transaction.Transactional;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.*;
import com.project.model.PackageVO; 

@Service
public class PackageService {
@Autowired PackageDAO packageDAO;
	
	@Transactional
	public void add(PackageVO packageVO)
	{
		packageDAO.addPackage(packageVO);
	}
	
	@Transactional
	public List view(PackageVO packageVO)
	{
		return packageDAO.viewPackage(packageVO);
	}
	
	@Transactional
	public List delete(PackageVO packageVO){
		return packageDAO.deletePackage(packageVO);
	}
	
	@Transactional
	public List edit(PackageVO packageVO)
	{
		return packageDAO.editPackage(packageVO);
	}
	
	@Transactional
	public void update(PackageVO packageVO)
	{
		this.packageDAO.updatePackage(packageVO);
	}
}
