package com.hi.interfaceTest;

//extends라는 키워드(상속, 재사용)은
//기존의 틀(class)에 다른 기능과 속성을 더 붙여서 만들고 싶을 때
public abstract class AppleClass extends PhoneClass {
	//일반 메소드 3개를 이미 가지고 시작
	//call(), internet(), text()
	//추상 메소드=>불완전한 메소드
	//추상 메소드를 하나라도 가지고 있는 클래스면
	//이 클래스는 불완전하다 라고 판단
	//객체 생성 불가능
	//추상 메소드를 하나라도 포함한 클래스는 불완전한 클래스
	//=>추상 클래스!
	//인터페이스가 아닌 클래스 내에서 추상 메소드를 쓰는 경우에는
	//public abstract를 생략할 수 없음. 
	public abstract void pay();
}
