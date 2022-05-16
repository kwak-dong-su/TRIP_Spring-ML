package 인터페이스사용;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Mywindow {

	public static void main(String[] args) {

		JFrame f=new JFrame();
		f.setSize(500,500);
		
		JButton b1=new JButton();
		
		b1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				//static메소드로 만들어놓았음
				//자주 쓰는 메소드(함수)나 변수는 static으로 만들어놓음
				//클래스 이름으로 언제든 접근해서 쓸 수 있음
				JOptionPane.showMessageDialog(f, "나를 클릭했군요.");
			}
		});
		
		b1.setText("나를 눌러요");
		b1.setBackground(Color.CYAN); //배경색
		b1.setForeground(Color.DARK_GRAY); //글자색
		f.add(b1); //Component interface <--- JButton
		//클래스의 다형성(업캐스팅, 자동 형변환)
		
		Font font =new Font("궁서", Font.BOLD, 30);
//		f.setLayout(null);
		b1.setFont(font);
		
//		JButton btnNewButton=new JButton();
//		btnNewButton.setText("나를 눌러요");
//		btnNewButton.setBackground(Color.blue); //배경색
//		btnNewButton.setForeground(Color.lightGray); //글자색
		
		
		
		//맨 끝!!
		f.setVisible(true);
	}

}
