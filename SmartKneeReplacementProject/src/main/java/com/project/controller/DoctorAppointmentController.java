package com.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.project.model.DoctorAppointmentVO;
import com.project.service.DoctorAppointmentService;

@Controller
public class DoctorAppointmentController {
	@Autowired DoctorAppointmentService doctorAppointmentService;
	
	@RequestMapping(value="/doctor/viewAppointment", method=RequestMethod.GET)
	public ModelAndView viewAppointment(@ModelAttribute DoctorAppointmentVO doctorAppointmentVO)
	{
		List ls = this.doctorAppointmentService.view(doctorAppointmentVO);
		return new ModelAndView ("doctor/viewAppointment","key",ls);
		
	}
}
