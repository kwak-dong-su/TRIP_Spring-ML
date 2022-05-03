package com.hi.trip.place;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PlaceDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public PlaceVO selectOne(PlaceVO vo)
	{
		return my.selectOne("place.selectOne", vo);
	}
}
