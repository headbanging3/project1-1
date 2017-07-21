package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;

public class MemberSignoutAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//로그아웃 처리
		request.getSession().invalidate();
		request.setAttribute("url", request.getContextPath());
		return new ActionForward("/popup/logout.jsp");
	}

}
