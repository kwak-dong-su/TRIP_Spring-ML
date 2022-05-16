package 인터페이스사용;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Mywindow3 {

	public static void main(String[] args) {

		JFrame f=new JFrame();
		f.setSize(800,800);
		
		JButton b1=new JButton();
		
		b1.addActionListener(new ActionListener() {
			//ActionListener 인터페이스를 구현한 익명클래스의 객체를 생성하자!
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(b1, "b1을 클릭했음");
				
			}
		});
		
		b1.setText("나를 눌러요");
		b1.setBackground(Color.CYAN); //배경색
		b1.setForeground(Color.DARK_GRAY); //글자색
		f.add(b1); //Component interface <--- JButton
		//클래스의 다형성(업캐스팅, 자동 형변환)
		b1.setBounds(100, 100, 200, 200); //x, y, 가로, 세로
		
		Font font =new Font("궁서", Font.BOLD, 25);
 		f.setLayout(null);
		b1.setFont(font);
		
		JButton b2=new JButton();
		
		b2.addActionListener(new ActionListener() {
			//ActionListener 인터페이스를 구현한 익명크래스의 객체를 생성하자!
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(b2, "b2을 클릭했음");
				
			}
		});
		
		b2.setText("나도 눌러요.");
		b2.setFont(font);
		f.add(b2);
		b2.setBounds(450, 100, 200, 200); //x, y, 가로, 세로
		b2.setBackground(Color.BLUE); //배경색
		b2.setForeground(Color.MAGENTA); //글자색
		
		
		
		//맨 끝!!
		f.setVisible(true);
	}

}
