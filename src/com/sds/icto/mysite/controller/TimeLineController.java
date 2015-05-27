package com.sds.icto.mysite.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


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
	
	

	
/*	@RequestMapping(value ="", method = RequestMethod.POST)
    public String insert2(HttpServletRequest request){
              
		TimeLineVo vo = new TimeLineVo();
		vo.setMemberno(Long.parseLong(request.getParameter("memberno")));
		vo.setFirstname(request.getParameter("firstname"));
		vo.setLastname(request.getParameter("lastname"));
		vo.setMessage(request.getParameter("message"));
		
		timelineservie.insertTimeLineItem(vo);
	
		return	"timeline";
		
	}*/
	
	

     

	

}
