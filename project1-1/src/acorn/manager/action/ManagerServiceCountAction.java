package acorn.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;

public class ManagerServiceCountAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		return new ActionForward("/manager/servicecount.jsp");
	}

}
