package com.hi.interfaceTest;

public class CarMain {

	public static void main(String[] args) {


		CarInterface car1=new HyundaiKorea();
		CarInterface car2=new HyundaiJapan();
		
		car1.stop();
		car2.move();
		HyundaiKorea k=(HyundaiKorea)car1;
		k.driverSeat();
		k.color="gray";
		k.type="중형";
		

	}

}
