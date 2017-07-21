package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;

public class MemberDeleteAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id=(String)request.getSession().getAttribute("id");
		MemberDao.getInstance().delete(id);
		request.getSession().invalidate();
		request.setAttribute("url", request.getContextPath());
		return new ActionForward("/index.jsp");
	}

}
