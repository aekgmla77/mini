package co.mini_project.project.app.food;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.dao.FoodDAO;
import co.mini_project.project.vo.FoodVO;

/**
 * Servlet implementation class FoodListServlet
 */
@WebServlet("/FoodListServlet")
public class FoodListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FoodListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		FoodDAO dao = new FoodDAO();
		ArrayList<FoodVO> list = dao.selectList();
		String json = "[";
		int cnt = 1;
		for(FoodVO vo : list) {
			json += "{";
			json += "\"menunumber\":\"" + vo.getmNumber() + "\"";
			json += ",\"menukind\":\"" + vo.getmKind() + "\"";
			json += ",\"menuname\":\"" + vo.getmName() + "\"";
			json += ",\"menuprice\":\"" + vo.getmPrice() + "\"";
			json += ",\"menucontent\":\"" + vo.getmContent() + "\"";
			json += ",\"menuimage\":\"" + vo.getmImage() + "\"";
			json += "}";
			if(list.size() != cnt++) {
				json += ",";
			}
		}
		json += "]";
		
		response.getWriter().append(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
