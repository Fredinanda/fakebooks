package com.sds.icto.mysite.repository;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.*;


@Repository
public class MemberDao {
	// S
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;

	public void insert(MemberVo vo) {

		sqlMapClientTemplate.insert("member.insert", vo);
	}

	public MemberVo login(MemberVo vo) {
		MemberVo member = null;

		member = (MemberVo) sqlMapClientTemplate.queryForObject("member.login", vo);

		return member;
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<MemberVo> getMember() {

		ArrayList<MemberVo> list = (ArrayList<MemberVo>) sqlMapClientTemplate.queryForList("member.list");
		return list;
	}
}
