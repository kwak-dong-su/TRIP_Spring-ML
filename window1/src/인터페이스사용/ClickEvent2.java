package 인터페이스사용;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JOptionPane;

public class ClickEvent2 implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		
		JOptionPane.showMessageDialog(null, "두번째 이벤트입니다.");

	}

}
