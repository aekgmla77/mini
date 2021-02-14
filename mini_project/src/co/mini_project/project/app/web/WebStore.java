package co.mini_project.project.app.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.StoreDAO;
import co.mini_project.project.vo.StoreVO;

public class WebStore implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'store.do'
		StoreDAO dao = new StoreDAO();
		ArrayList<StoreVO> list = new ArrayList<StoreVO>();
		
		list = dao.selectList();
		request.setAttribute("list", list);
		
		return "web/04store";
	}

}
