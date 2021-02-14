package co.mini_project.project.app.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini_project.project.common.Command;

public class WebFranchise implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 'franchise.do'
		
		return "web/03-1franchise";
	}

}
