package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO memberDelete.do'
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();		
		vo.setmId(request.getParameter("mId"));

		dao.memberDelete(vo);

		return "memberList.do";
	}

}
