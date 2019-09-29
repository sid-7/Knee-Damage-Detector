package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.UserXrayVO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Random;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;


@Controller
public class OTPController {
	//@Autowired MainService service;
	
	@RequestMapping(value="/user/userOTP", method = RequestMethod.POST)
	public ModelAndView SendMail(@RequestParam("email") String email, HttpSession session)
	{
		int otp = 0;
		for (int i = 0; i < 3; i++) {

            int x = new Random().nextInt(9);

            if (x == 0 && i == 0)
                i--;
            else
                otp = (otp * 10) + x;
        }
		String OTP = Integer.toString(otp);
		java.util.Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent(OTP, "text/html");
			message.setSubject("GHUTKNEE OTP");

			InternetAddress sender = new InternetAddress("transense.28@gmail.com", "Study Portal");
			InternetAddress receiver = new InternetAddress(email);
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			javax.mail.Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, "transense.28@gmail.com" , "Vaibhavi@288");
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("otp", OTP);
		return new ModelAndView("user/checkOTP");
	}
	
	@RequestMapping(value="/user/checkOTP")
	public ModelAndView checkOTP(@RequestParam("otp") String otp2, HttpSession session)
	{
		String otp1= (String)session.getAttribute("otp");
		if(otp1.equals(otp2))
		{
			return new ModelAndView("user/upload","xrayupload",new UserXrayVO());
		}
		else
			
			return new ModelAndView("user/error");
	}
}
