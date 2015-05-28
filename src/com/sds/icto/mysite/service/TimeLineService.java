package com.sds.icto.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.domain.TimeLineVo;


import com.sds.icto.mysite.repository.TimeLineDao;

@Service
public class TimeLineService {
	
	@Autowired 
	TimeLineDao TimeLineDao;

	
	
	public List<TimeLineVo> getTimeLineList(){
		return TimeLineDao.fetchList();
	}
	

	public void insertTimeLineItem( TimeLineVo vo  ) {
		TimeLineDao.insert(vo);
	}
	
	public void updateProfile(MemberVo mvo){
		TimeLineDao.update(mvo);
	}
	
	public void updatepciture(MemberVo mvo){
		TimeLineDao.updatepicture(mvo);
	}
	
	public void timeLineDelete(Long no){
		TimeLineVo vo = new TimeLineVo();
		vo.setTimelineno( no );
		
		TimeLineDao.delete(vo);
	}
	
	public void timeLineDelete(TimeLineVo vo){
		TimeLineDao.delete(vo);
	}
	
	
}
