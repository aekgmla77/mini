package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini_project.project.common.Command;

public class LogOut implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'logout.do'
		HttpSession session = request.getSession();
		session.invalidate();

		return "main.do";
	}

}
