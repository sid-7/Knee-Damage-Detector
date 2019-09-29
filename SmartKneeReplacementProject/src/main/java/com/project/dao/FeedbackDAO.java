package com.project.dao;

import java.util.*;
import com.project.model.FeedbackVO;

public interface FeedbackDAO {
	public void postFeedback(FeedbackVO feedbackVO);
	public List viewFeedback(FeedbackVO feedbackVO);
	public List viewDoctorFeedback(FeedbackVO feedbackVO);
}
