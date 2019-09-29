package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.project.model.PackageVO;
import com.project.service.PackageService;

@Controller
public class PackageController {
	@Autowired PackageService packageService;
	
	@RequestMapping(value="/admin/loadAddPackage",method=RequestMethod.GET)
	public ModelAndView loadAddPackage(){
		return new ModelAndView("admin/addPackage","packageadd",new PackageVO());
	}
	
	@RequestMapping(value="/admin/addPackage",method=RequestMethod.POST)
	public ModelAndView addPackage(@ModelAttribute PackageVO packageVO){
		packageVO.setPackageStatus(true);
		this.packageService.add(packageVO);
		
		return new ModelAndView("admin/addPackage","packageadd",new PackageVO());
	}
	
	@RequestMapping(value="/admin/viewPackage",method=RequestMethod.GET)
	public ModelAndView viewPackage(@ModelAttribute("packageview") PackageVO packageVO){
		List ls = this.packageService.view(packageVO);
		return new ModelAndView("/admin/viewPackage","key",ls);
	}
	
	@RequestMapping(value="/admin/deletePackage",method = RequestMethod.GET)
	public ModelAndView deletePackage(@RequestParam("id") int id, PackageVO packageVO)
	{
		packageVO.setId(id);
		List ls = this.packageService.delete(packageVO);
		this.packageService.delete(packageVO);
		packageVO = (PackageVO)ls.get(0);
		packageVO.setPackageStatus(false);
		this.packageService.update(packageVO);
		
		return new ModelAndView("redirect:/admin/viewPackage");
	}
	
	@RequestMapping(value="/admin/editPackage",method = RequestMethod.GET)
	public ModelAndView editPackage(@RequestParam("id") int id,@ModelAttribute PackageVO packageVO)
	{
		packageVO.setId(id);
		List ls = this.packageService.edit(packageVO);
		return new ModelAndView("admin/editPackage","packageedit",(PackageVO)ls.get(0));
	}
	
	@RequestMapping(value="/admin/updatepackage",method = RequestMethod.POST)
	public ModelAndView updatePackage(@ModelAttribute PackageVO packageVO)
	{
		
		this.packageService.update(packageVO);
		return new ModelAndView("redirect:/admin/viewPackage");
	}
}
