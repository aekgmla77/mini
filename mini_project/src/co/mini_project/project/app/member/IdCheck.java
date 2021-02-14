package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;

public class IdCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'idCheck.do'
		MemberDAO dao = new MemberDAO();
		String id = request.getParameter("mId");
		
		boolean bool = dao.isIdCheck(id);
		String message = null;
		
		if(bool) {
			message = id + "는 사용할 수 있습니다.";
		}else {
			message = id + "는 사용할 수 없습니다.";
		}
		
		request.setAttribute("msg", message);
		request.setAttribute("check", bool);
		
		return "member/idCheck";
	}

}
