package Pomodoro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Timer.do")
public class TimerController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String mode = (String)session.getAttribute("Mode");
		System.out.println(mode);
		
		if (mode.equals("start")) {
			req.setAttribute("time", 25*60);
			session.setAttribute("Mode", "working");
			req.getRequestDispatcher("./TimerPage.jsp").forward(req, resp);
			return;
		}
		if(mode.equals("working")){
			PomodoroDAO dao = new PomodoroDAO();
			dao.UpdatePomodoro((String)session.getAttribute("ID"));
			
			
			PomodoroDTO dto = new PomodoroDTO();
			dto = dao.getMember((String)session.getAttribute("ID"),(String)session.getAttribute("PW"));
			System.out.println(session.getAttribute("Pomodoro"));
			session.removeAttribute("Pomodoro");
			System.out.println(session.getAttribute("Pomodoro"));
			session.setAttribute("Pomodoro", dto.getPomodoro());
			System.out.println(dto.getPomodoro());
			
			dao.close();
			
			req.setAttribute("time", 5*60);
			session.setAttribute("Mode", "break");
			req.getRequestDispatcher("./TimerPage.jsp").forward(req, resp);
			return;
			}
		else if(mode.equals("break")){
			session.setAttribute("Mode", "working");
			req.setAttribute("time", 25*60);
			req.getRequestDispatcher("./TimerPage.jsp").forward(req, resp);			
			return;
			}
		}
	}

