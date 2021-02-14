package co.mini_project.project.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.StoreDAO;
import co.mini_project.project.vo.StoreVO;

public class StoreDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'storeDelete.do'
		StoreDAO dao = new StoreDAO();
		StoreVO vo = new StoreVO();
		vo.setsNumber(Integer.parseInt(request.getParameter("sNumber")));
		
		dao.delete(vo); 
		
		request.setAttribute("vo", vo);
	
		return "storeList.do";
	}

}
