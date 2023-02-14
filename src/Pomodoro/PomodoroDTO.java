package Pomodoro;

public class PomodoroDTO {
	private String id;
	private String pass;
	private String name;
	private int pomodoro;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPomodoro() {
		return pomodoro;
	}
	public void setPomodoro(int pomodoro) {
		this.pomodoro = pomodoro;
	}
}
