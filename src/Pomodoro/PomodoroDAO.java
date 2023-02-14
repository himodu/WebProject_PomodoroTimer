package Pomodoro;

import java.util.List;
import java.util.Map;
import java.util.Vector;
import common.DBConnPool;

public class PomodoroDAO extends DBConnPool {
	public PomodoroDAO() {
		super();
	}
	
	public int register(PomodoroDTO dto) {
		try {
			int result = 0;
			String query = "INSERT INTO pomodoromember (id, pass, name, pomodoro) values (?,?,?,?)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setInt(4, dto.getPomodoro());
			
			rs = psmt.executeQuery();
			result = 1;
			return result;
			
		}catch (Exception e) {
			e.printStackTrace();
			return 0;	
		}
	}
	
	public PomodoroDTO getMember(String uid, String upass) {
		PomodoroDTO dto = new PomodoroDTO();
		String query = "SELECT * FROM POMODOROMEMBER WHERE id=? AND pass=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setPomodoro(rs.getInt("pomodoro"));
			}
			
			System.out.println("불러오기 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public void UpdatePomodoro(String uid ) {
		String query = "UPDATE POMODOROMEMBER SET pomodoro=pomodoro+1 WHERE id=? ";
		try {			
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.executeQuery();
			System.out.println("업데이트 성공");
			
		}catch (Exception e) {
			System.out.println("업데이트 중 예외 발생");
			e.printStackTrace();
		}
	}
	
}
