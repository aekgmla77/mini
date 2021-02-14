package co.mini_project.project.app.franchise;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FranchiseDAO;
import co.mini_project.project.vo.FranchiseVO;

public class FranchiseDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'franchiseDelete.do'
		FranchiseDAO dao = new FranchiseDAO();
		FranchiseVO vo = new FranchiseVO();
		vo.setfNumber(Integer.parseInt(request.getParameter("fNumber")));
		
		dao.delete(vo);
		
		return "franchiseList.do";
	}

}
