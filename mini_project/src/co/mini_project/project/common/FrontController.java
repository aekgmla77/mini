package co.mini_project.project.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.app.food.FoodDelete;
import co.mini_project.project.app.food.FoodInsert;
import co.mini_project.project.app.food.FoodList;
import co.mini_project.project.app.food.FoodUpdate;
import co.mini_project.project.app.franchise.FranchiseDelete;
import co.mini_project.project.app.franchise.FranchiseForm;
import co.mini_project.project.app.franchise.FranchiseInsert;
import co.mini_project.project.app.franchise.FranchiseList;
import co.mini_project.project.app.franchise.FranchiseUpdate;
import co.mini_project.project.app.member.CreateUser;
import co.mini_project.project.app.member.IdCheck;
import co.mini_project.project.app.member.LogOut;
import co.mini_project.project.app.member.Login;
import co.mini_project.project.app.member.LoginForm;
import co.mini_project.project.app.member.MemberDelete;
import co.mini_project.project.app.member.MemberEdit;
import co.mini_project.project.app.member.MemberInsert;
import co.mini_project.project.app.member.MemberList;
import co.mini_project.project.app.member.MyEdit;
import co.mini_project.project.app.member.MyEditForm;
import co.mini_project.project.app.store.StoreDelete;
import co.mini_project.project.app.store.StoreInsert;
import co.mini_project.project.app.store.StoreList;
import co.mini_project.project.app.store.StoreUpdate;
import co.mini_project.project.app.web.MainCommand;
import co.mini_project.project.app.web.WebBoard;
import co.mini_project.project.app.web.WebBrand;
import co.mini_project.project.app.web.WebFeature;
import co.mini_project.project.app.web.WebFood;
import co.mini_project.project.app.web.WebFranchise;
import co.mini_project.project.app.web.WebMap;
import co.mini_project.project.app.web.WebStore;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 웹 페이지 간 이동
		map.put("/main.do", new MainCommand());
		map.put("/food.do", new WebFood());
		map.put("/franchise.do", new WebFranchise());
		map.put("/store.do", new WebStore());
		map.put("/board.do", new WebBoard());
		map.put("/brand.do", new WebBrand());
		map.put("/feature.do", new WebFeature());
		map.put("/map.do", new WebMap());
		// member (김다현)
		map.put("/idCheck.do", new IdCheck());
		map.put("/createUser.do", new CreateUser());
		map.put("/loginForm.do", new LoginForm());
		map.put("/login.do", new Login());
		map.put("/logOut.do", new LogOut());
		map.put("/memberList.do", new MemberList());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberDelete.do", new MemberDelete());
		map.put("/memberEdit.do", new MemberEdit());
		map.put("/myEditForm.do", new MyEditForm()); // 내 정보 수정 폼 이동
		map.put("/myEdit.do", new MyEdit()); // 내 정보 수정
		// food(menu) (송다희)
		map.put("/foodList.do", new FoodList());
		map.put("/foodInsert.do", new FoodInsert());
		map.put("/foodUpdate.do", new FoodUpdate());
		map.put("/foodDelete.do", new FoodDelete());
		// store (정병기)
		map.put("/storeList.do", new StoreList());
		map.put("/storeInsert.do", new StoreInsert());
		map.put("/storeUpdate.do", new StoreUpdate());
		map.put("/storeDelete.do", new StoreDelete());
		//
		map.put("/franchiseList.do", new FranchiseList());
		map.put("/franchiseForm.do", new FranchiseForm());
		map.put("/franchiseInsert.do", new FranchiseInsert());
		map.put("/franchiseUpdate.do", new FranchiseUpdate());
		map.put("/franchiseDelete.do", new FranchiseDelete());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());

		Command command = map.get(path);
		String viewPage = command.execute(request, response);

		if (!viewPage.endsWith(".do"))
			viewPage = "/WEB-INF/jsp/" + viewPage + ".jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
