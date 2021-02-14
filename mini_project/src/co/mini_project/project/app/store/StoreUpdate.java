package co.mini_project.project.app.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.StoreDAO;
import co.mini_project.project.vo.StoreVO;

public class StoreUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'storeUpdate.do'
		StoreDAO dao = new StoreDAO();
		StoreVO vo = new StoreVO();
		vo.setsName(request.getParameter("sName"));
		vo.setsTel(request.getParameter("sTel"));
		vo.setsAddress(request.getParameter("sAddress"));
		vo.setsContent(request.getParameter("sContent"));
		vo.setsImage(request.getParameter("sImage"));
		vo.setsNumber(Integer.parseInt(request.getParameter("sNumber")));

		dao.update(vo); 
		
		request.setAttribute("vo", vo);
	
		return "storeList.do";
	}
	
}
