package com.sds.icto.mysite.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;

	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join( @RequestParam String firstname,
			@RequestParam String lastname,
			@RequestParam String email,
			@RequestParam String password,
			@RequestParam String year,
			@RequestParam String month,
			@RequestParam String day,
			@RequestParam String gender
			){
		
		MemberVo vo = new MemberVo();
		
		vo.setFirstname(firstname);
		vo.setLastname(lastname);
		vo.setEmail(email);
		vo.setPassword(password);
		vo.setGender(gender);
		
		String birth = year + "-" + month + "-" + day;
		vo.setBirth(birth);
		memberService.joinUser( vo );
		
		
		return "redirect:/index";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login( @ModelAttribute MemberVo vo, HttpSession session ) {
		MemberVo memberVo = memberService.authUser( vo );
		//로그인 실패
		if( memberVo == null ) {			
			return "main/loginresult";
		}
		
		//로그인 성공
		session.setAttribute("authMember", memberVo);
		return "redirect:/timeline";
	}
	
	@RequestMapping("/checkEmail")
	@ResponseBody
	public Object checkEmail(String email) {

		Map<String, Object> map = new HashMap<String, Object>();

		ArrayList<MemberVo> list = memberService.getMemberList();
		
		
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getEmail().equals(email) == true) {
				count++;
			}
		}
		
		  if(count == 0){
			map.put("result", false);
			map.put("data", "사용할 수 있습니다.");
		} else {
			map.put("result", true);
			map.put("data", "사용할 수 없습니다.");
		}

		return map;
	}
	
	
	@RequestMapping("/logout")
	public String logout( HttpSession session ) {
		session.removeAttribute( "authMember" );
		session.invalidate();
		return "redirect:/index";
	}
	
	@RequestMapping("/modify")
	public String modifyMember() {
		return "member/uinfoform";
	}
}
