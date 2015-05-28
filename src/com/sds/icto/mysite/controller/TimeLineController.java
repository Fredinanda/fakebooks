package com.sds.icto.mysite.controller;

import java.io.FileOutputStream;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



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
	public String updateprofile(@ModelAttribute MemberVo mvo, HttpSession session){
		
		timelineservie.updateProfile(mvo);
		session.setAttribute("authMember", mvo);
				
					
		return "redirect:/timeline/profile";
	}
	

	@RequestMapping("/picture")
	public String picture1(){
		return "main/picture";
	}

	@SuppressWarnings("unused")
	@RequestMapping( value={"/picture"} , method=RequestMethod.POST)
	public String picture2(@RequestParam Long no , @RequestParam("file")MultipartFile file ) {
        
		
        String fileOriginalName = file.getOriginalFilename();
        String extName = fileOriginalName.substring( fileOriginalName.lastIndexOf(".") + 1, fileOriginalName.length() );
        String fileName = file.getName();
        Long size = file.getSize();
        
        
        String saveFileName = "";
     
        
        saveFileName += "id";
        saveFileName += no;
        saveFileName += ( "." + extName );

        writeFile( file, "c:\\icto55\\workspacee\\fakebooks\\WebApp\\assets", saveFileName );
        
		return "redirect:/timeline";
	}
	
	private void writeFile( MultipartFile file, String path, String fileName ) {
		FileOutputStream fos = null;
		try {
			byte fileData[] = file.getBytes();
			fos = new FileOutputStream( path + "\\" + fileName );
			fos.write(fileData);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (Exception e) {
				}
			}
		}
	}	
	
	

}
