package co.mini_project.project.app.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FoodDAO;
import co.mini_project.project.vo.FoodVO;

public class WebFood implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'food.do'
		FoodDAO dao = new FoodDAO();
		ArrayList<FoodVO> list = new ArrayList<FoodVO>();
		
		list = dao.selectList();
		request.setAttribute("list", list);
		
		return "web/02food";
	}

}
