package co.mini_project.project.app.food;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;
import co.mini_project.project.dao.FoodDAO;
import co.mini_project.project.vo.FoodVO;

public class FoodUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'foodUpadte.do'
		FoodDAO dao = new FoodDAO();
		FoodVO vo = new FoodVO();
		vo.setmKind(request.getParameter("mKind2"));
		vo.setmName(request.getParameter("mName2"));
		vo.setmPrice(request.getParameter("mPrice2"));
		vo.setmContent(request.getParameter("mContent2"));
		vo.setmImage(request.getParameter("mImage2"));
		vo.setmNumber(Integer.parseInt(request.getParameter("mNumber2")));
		
		dao.update(vo);
		
		return "foodList.do";
	}

}
