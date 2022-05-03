package 인터페이스사용;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JOptionPane;

public class ClickEvent3 implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {

		//인터페이스에 정의되어 있었던 추상 메소드 구현해주면 됨.
		JOptionPane.showMessageDialog(null, "이벤트처리");
		
	}

}
