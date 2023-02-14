package Pomodoro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			HttpSession session = req.getSession();
			if(session.getAttribute("ID")!=null) {
				req.getRequestDispatcher("./TimerPage.jsp").forward(req, resp);
			}
			req.getRequestDispatcher("./Login.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			HttpSession session = req.getSession();
			PomodoroDTO dto = new PomodoroDTO();
			PomodoroDAO dao = new PomodoroDAO();
			dto = dao.getMember(req.getParameter("id"),req.getParameter("pw"));
			
			if(dto.getId()!= null) {
				session.setAttribute("ID", dto.getId());
				session.setAttribute("PW", dto.getPass());
				session.setAttribute("Name", dto.getName());
				session.setAttribute("Pomodoro", dto.getPomodoro());
				session.setAttribute("Mode", "start");
				req.getRequestDispatcher("./TimerPage.jsp").forward(req, resp);
				return;
			}
			else {
				resp.sendRedirect("./login.do");
				return;
			}
	}
		
}
