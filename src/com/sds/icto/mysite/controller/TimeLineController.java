package com.sds.icto.mysite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.domain.TimeLineVo;
import com.sds.icto.mysite.service.TimeLineService;


@Controller
@RequestMapping("/timeline")
public class TimeLineController {
	@Autowired
	TimeLineService timelineservie;

	
	@RequestMapping( value={ "", "/" })
	public String list( Model model ) {
		
		List<TimeLineVo> list = timelineservie.getTimeLineList();
		
		model.addAttribute( "list", list );
		return "main/main";
	}
	
	
	@RequestMapping( value={ "", "/" } ,method=RequestMethod.POST)
	public String insert( @ModelAttribute TimeLineVo vo ) {
		
		timelineservie.insertTimeLineItem(vo);
	return "redirect:/timeline";
	}
	
	
	@RequestMapping("/profile")
	public String profile(){
		return "main/profile";
	}
	
		
	@RequestMapping( value={"/profile"} , method=RequestMethod.POST)
	public String updateprofile(@ModelAttribute MemberVo mvo, HttpSession session ){
		
		timelineservie.updateProfile(mvo);
		session.setAttribute("authMember", mvo);
			
		return "redirect:/timeline/profile";
	}

	
	

	

     

	

}
