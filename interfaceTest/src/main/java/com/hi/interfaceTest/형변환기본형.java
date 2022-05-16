package com.hi.interfaceTest;

public class 형변환기본형 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//형변환==캐스팅(casting)
		//기본형 데이터:
		//1. 기본형 데이터: 정수, 실수, 문자, 논리
		//	  자바의 기본 문법으로 데이터를 처리
		//   기본형을 저장할 때는 변수에 "값"을 저장
		//2. 참조형 데이터: 나머지 다
		//	 String, 배열, list
		//   참조형을 저장할 때는 변수에 "주소"를 저장
		
		//프로그램을 하다보면, 다양한 데이터를 다양한 저장소에
		//저장하게 됨.
		//자바는 저장소에 들어갈 데이터 타입을 반드시 명시!
		//다른 저장소로 넣기 위해서는 데이터의 타입을 변환할 필요가 있다.
		//=> 타입을 변환한다.(형변환, 캐스팅)
		
		//기본형 정수, byte(1, 128) ->short(2, 2만) -> int(4,128)
		byte a=100;
		int b=a; //큰 <---작(자동 형변환)
		
		int c=100;
		byte d=(byte)c;
	}

}
