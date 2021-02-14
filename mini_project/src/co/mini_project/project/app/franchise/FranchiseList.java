package co.mini_project.project.app.franchise;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FranchiseDAO;
import co.mini_project.project.vo.FranchiseVO;

public class FranchiseList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'franchiseList.do'
		FranchiseDAO dao = new FranchiseDAO();
		ArrayList<FranchiseVO> list = new ArrayList<FranchiseVO>();
		
		list = dao.selectList();
		request.setAttribute("list", list);
		
		return "admin/franchiseList";
	}

}
