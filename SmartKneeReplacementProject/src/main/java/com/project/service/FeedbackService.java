package com.project.service;

import javax.transaction.Transactional;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.*;
import com.project.model.FeedbackVO;

@Service
public class FeedbackService {
	@Autowired FeedbackDAO feedbackDAO;
	
	@Transactional
	public void post(FeedbackVO feedbackVO){
		feedbackDAO.postFeedback(feedbackVO);
	}
	
	@Transactional
	public List view(FeedbackVO feedbackVO){
		return feedbackDAO.viewFeedback(feedbackVO);
	}
	
	@Transactional
	public List viewDoctor(FeedbackVO feedbackVO){
		return feedbackDAO.viewDoctorFeedback(feedbackVO);
	}

}
