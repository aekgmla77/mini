package co.mini_project.project.app.food;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FoodDAO;
import co.mini_project.project.vo.FoodVO;

public class FoodDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'foodDelete.do'
		FoodDAO dao = new FoodDAO();
		FoodVO vo = new FoodVO();
		vo.setmNumber(Integer.parseInt(request.getParameter("mNumber")));
		
		dao.delete(vo);
		
		return "foodList.do";
	}

}
