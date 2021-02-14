package co.mini_project.project.app.franchise;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FranchiseDAO;
import co.mini_project.project.vo.FranchiseVO;

public class FranchiseInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'franchiseInsert.do'
		FranchiseDAO dao = new FranchiseDAO();
		FranchiseVO vo = new FranchiseVO();
		vo.setfName(request.getParameter("fName"));
		vo.setfEmail(request.getParameter("fEmail"));
		vo.setfAge(Integer.parseInt(request.getParameter("fAge")));
		vo.setfTel(request.getParameter("fTel"));
		vo.setfAddress(request.getParameter("fAddress"));
		vo.setfContent(request.getParameter("fContent"));
		
		dao.insert(vo);
		
		return "web/03franchise";
	}

}
