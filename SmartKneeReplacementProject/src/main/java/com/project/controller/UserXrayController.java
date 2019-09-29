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
import com.project.service.UserXrayService;
import com.project.model.UserXrayVO;

import java.text.SimpleDateFormat;

@Controller
public class UserXrayController {
	@Autowired UserXrayService userXrayService;
	SimpleDateFormat formatterDate = new SimpleDateFormat("dd/mm/yyyy");
	
	@RequestMapping(value="/user/loadUploadXray",method=RequestMethod.GET)
	public ModelAndView loadUploadXray(){
		return new ModelAndView("user/enterEmail");
	}
	
	@RequestMapping(value="/user/uploadUserXray",method=RequestMethod.POST)
	public ModelAndView uploadXray(@ModelAttribute UserXrayVO userXrayVO,@RequestParam MultipartFile file,HttpSession session){
		userXrayVO.setDate(formatterDate.format(new Date()));
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
		
		//userXrayVO.setImagename(fileName);
		userXrayVO.setImagelink(finalPath);
		
		this.userXrayService.upload(userXrayVO);
		return new ModelAndView("redirect:/user/loadUploadXray");
		/*this.doctorXrayService.upload(resultVO);		
		return new ModelAndView("doctor/uploadXray","xrayupload",new ResultVO());*/
	}
	
	@RequestMapping(value="/admin/viewUserResult",method=RequestMethod.GET)
	public ModelAndView viewResult(@ModelAttribute("resultview") UserXrayVO userXrayVO){
		List ls = this.userXrayService.view(userXrayVO);
		return new ModelAndView("admin/viewResult","key",ls);
	}

}
