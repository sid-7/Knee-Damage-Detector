package com.project.dao;
import java.util.*;
import com.project.model.PackageVO;

public interface PackageDAO {
	public void addPackage(PackageVO packageVO);
	public List viewPackage(PackageVO packageVO);
	public List deletePackage(PackageVO packageVO);
	public List editPackage(PackageVO packageVO);
	public void updatePackage(PackageVO packageVO);
}
