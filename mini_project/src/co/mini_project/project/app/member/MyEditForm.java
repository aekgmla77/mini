package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class MyEditForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'myEditForm.do'
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setmId(request.getParameter("mIda"));

		vo = dao.myEditList(vo);
		request.setAttribute("vo", vo);

		return "member/myEditForm";
	}

}
