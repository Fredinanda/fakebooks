package com.sds.icto.mysite.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.domain.TimeLineVo;

@Repository
public class TimeLineDao {
	@Autowired
	SqlMapClientTemplate sqlmapclienttemplate;

	public void insert(TimeLineVo vo){
		sqlmapclienttemplate.insert("timeline.insert", vo);
	}
		
	@SuppressWarnings("unchecked")
	public List<TimeLineVo> fetchList()
	{ 		
		List<TimeLineVo> list = sqlmapclienttemplate.queryForList("timeline.list");
		return list;
	}
	
	public void update(MemberVo mvo){
		sqlmapclienttemplate.update("member.update", mvo);
	}
	
	public void delete(TimeLineVo vo) {

		sqlmapclienttemplate.delete("timeline.delete", vo);
		System.out.println(vo.getTimelineno());
	}

	
}
