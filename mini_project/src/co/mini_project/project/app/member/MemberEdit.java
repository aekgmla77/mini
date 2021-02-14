package co.mini_project.project.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.MemberDAO;
import co.mini_project.project.vo.MemberVO;

public class MemberEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'memberEdit.do'
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		vo.setmName(request.getParameter("mNameE"));
		vo.setmBirth(request.getParameter("mBirthE"));
		vo.setmEmail(request.getParameter("mEmailE"));
		vo.setmTel(request.getParameter("mTelE"));
		vo.setmAddress(request.getParameter("mAddressE"));
		vo.setmId(request.getParameter("mIdE"));

		dao.memberUpdate(vo);

		return "memberList.do";
	}

}
