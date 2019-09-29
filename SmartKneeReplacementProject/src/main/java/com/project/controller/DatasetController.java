package com.project.controller;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DatasetVO;
import com.project.service.DatasetService;

@Controller
public class DatasetController {
	@Autowired DatasetService datasetService;
	
	@RequestMapping(value="/admin/viewDataset", method=RequestMethod.GET)
	public ModelAndView search(@ModelAttribute DatasetVO datasetVO){
		
		List datasetList=datasetService.searchDataset(datasetVO);
		return new ModelAndView("admin/viewDataset","datasetList",datasetList);
	}
	
	@RequestMapping(value="/admin/deleteDataset", method=RequestMethod.GET)
	public ModelAndView deleteDataset(@ModelAttribute DatasetVO datasetVO,@RequestParam String id){

		datasetVO.setDatasetId(Integer.parseInt(id));
		this.datasetService.deleteDataset(datasetVO);
		return new ModelAndView("redirect:/admin/viewDataset");
	}

}
