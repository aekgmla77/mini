package co.mini_project.project.app.franchise;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FranchiseDAO;
import co.mini_project.project.vo.FranchiseVO;

public class FranchiseUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'franchiseUpdate.do'
		FranchiseDAO dao = new FranchiseDAO();
		FranchiseVO vo = new FranchiseVO();
		vo.setfName(request.getParameter("fName2"));
		vo.setfEmail(request.getParameter("fEmail2"));
		vo.setfAge(Integer.parseInt(request.getParameter("fAge2")));
		vo.setfTel(request.getParameter("fTel2"));
		vo.setfAddress(request.getParameter("fAddress2"));
		vo.setfContent(request.getParameter("fContent2"));
		vo.setfNumber(Integer.parseInt(request.getParameter("fNumber2")));
		
		dao.update(vo);
		
		return "franchiseList.do";
	}

}
