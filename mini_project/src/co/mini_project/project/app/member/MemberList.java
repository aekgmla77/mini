package co.mini_project.project.app.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class MemberList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'memberList.do'
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();

		list = dao.memberSelectList();
		request.setAttribute("list", list);

		return "admin/memberList";
	}

}
