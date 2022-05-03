package com.hi.trip.surveyResult;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SurveyResultDAO {

	
	@Autowired
	SqlSessionTemplate my;
	
	public List<SurveyResultVO> selectAllFromMember(SurveyResultVO vo)
	{
		return my.selectList("surveyResult.allFromMember", vo);
	}
}
