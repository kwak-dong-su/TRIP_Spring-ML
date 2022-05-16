package com.hi.interfaceTest;

public class PhoneClass implements PhoneInterface {

	//불완전한 요소를 가지고 있지 않은 완벽한 클래스
	//완벽한 클래스는 객체 생성해서 쓸 수 있다.
	//멤버변수
	
	String color;
	int size;
	
	@Override
	public void call() {
		System.out.println("전화하다.");
	}

	@Override
	public void internet() {
		System.out.println("인터넷하다.");

	}

	@Override
	public void text() {
		System.out.println("문자하다.");

	}

}
