package com.hi.interfaceTest;

public interface BbsDAOInterface {

	//구현할 기능을 명세하는 문서 역할인 인터페이스를 정의해보세요.
	//crud 메소드를 정의!
	//인터페이스를 implements해서
	//BbsDAOImpl 클래스를 구현해보세요.
	
	//abstract 단어는 생략가능!
	//인터페이스에서 사용하는 메소드는 모두 다 public
	//public abstract 생략 가능!!
	
	public int insert(BbsVO vo);
	public int selectOne(BbsVO vo);
	abstract int update(BbsVO vo);
	public int delete(BbsVO vo);
	
	
}
