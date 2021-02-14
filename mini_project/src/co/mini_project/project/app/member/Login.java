package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'login.do'
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setmId(request.getParameter("mId"));
		vo.setmPassword(request.getParameter("mPassword"));

		vo = dao.login(vo);

		String viewPage = null;

		if (vo.getAdmin() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", vo.getmId());
			session.setAttribute("admin", vo.getAdmin());
			request.setAttribute("vo", vo);

			viewPage = "web/01main";
		} 

		return viewPage;
	}
	
}
