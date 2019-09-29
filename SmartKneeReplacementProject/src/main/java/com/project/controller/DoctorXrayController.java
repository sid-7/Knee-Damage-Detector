package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.*;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.project.model.ResultVO;
import com.project.service.DoctorXrayService;

import java.util.Date;
import java.text.SimpleDateFormat;

@Controller
public class DoctorXrayController {
	@Autowired DoctorXrayService doctorXrayService;
	SimpleDateFormat formatterDate = new SimpleDateFormat("dd/mm/yyyy");
	
	@RequestMapping(value="/doctor/loadUploadXray",method=RequestMethod.GET)
	public ModelAndView loadUploadXray(){
		return new ModelAndView("doctor/upload","xrayupload",new ResultVO());
	}
	
	@RequestMapping(value="/doctor/uploadDoctorXray",method=RequestMethod.POST)
	public ModelAndView uploadXray(@ModelAttribute ResultVO resultVO,@RequestParam MultipartFile file,HttpSession session){
		resultVO.setDate(formatterDate.format(new Date()));
		String path = session.getServletContext().getRealPath("/");
		String finalPath = path+"document/demo/";

		String fileName = file.getOriginalFilename();
		
		try {
			byte[] b = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(finalPath+fileName));
			
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		resultVO.setImagename(fileName);
		resultVO.setImagelink(finalPath);
		
		this.doctorXrayService.upload(resultVO);
		return new ModelAndView("redirect:/doctor/loadUploadXray");
		/*this.doctorXrayService.upload(resultVO);		
		return new ModelAndView("doctor/uploadXray","xrayupload",new ResultVO());*/
	}
	
	@RequestMapping(value="/doctor/viewDoctorResult",method=RequestMethod.GET)
	public ModelAndView viewResult(@ModelAttribute("resultview") ResultVO resultVO){
		List ls = this.doctorXrayService.view(resultVO);
		return new ModelAndView("doctor/viewResult","key",ls);
	}
}
