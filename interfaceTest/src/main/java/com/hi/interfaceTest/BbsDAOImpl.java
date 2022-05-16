package com.hi.interfaceTest;

public class BbsDAOImpl implements BbsDAOInterface {
	
	//인터페이스에 따라 구현하는 클래스는
	//반드시 인터페이스에 정의된 모든 클래스를 구현해야함.
	//구현을 하나라도 안 한 경우엔 이 클래스는 사용할 수 없는 불안정한 클래스
	

	//접근제어자, 반환값, 메소드이름, 입력값,{구체적인 구현}
	//일반 메소드
	@Override
	public int insert(BbsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectOne(BbsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(BbsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(BbsVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
