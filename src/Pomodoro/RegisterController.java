package Pomodoro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/register.do")
public class RegisterController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			req.getRequestDispatcher("./Register.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
		throws ServletException, IOException {
		PomodoroDTO dto = new PomodoroDTO();
		
		System.out.println(req.getParameter("name"));
		dto.setId(req.getParameter("id"));
		dto.setPass(req.getParameter("pw"));
		dto.setName(req.getParameter("name"));
		dto.setPomodoro(0);
		
		PomodoroDAO dao = new PomodoroDAO();
		int result = dao.register(dto);
		dao.close();
		
		
		
		if(result==1) {
			resp.sendRedirect("./login.do");
			return;
			}
		else {
			resp.sendRedirect("./register.do");
			return;
		}
			
		}
}
