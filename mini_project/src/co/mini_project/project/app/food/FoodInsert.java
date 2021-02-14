package co.mini_project.project.app.food;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FoodDAO;
import co.mini_project.project.vo.FoodVO;

public class FoodInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'foodInsert.do'
		FoodDAO dao = new FoodDAO();
		FoodVO vo = new FoodVO();
		vo.setmKind(request.getParameter("mKind"));
		vo.setmName(request.getParameter("mName"));
		vo.setmPrice(request.getParameter("mPrice"));
		vo.setmContent(request.getParameter("mContent"));
		vo.setmImage(request.getParameter("mImage"));
		
		dao.insert(vo);

		return "foodList.do";
	}
	
}