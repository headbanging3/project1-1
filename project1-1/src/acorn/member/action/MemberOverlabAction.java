package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;

public class MemberOverlabAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//아이디 중복확인을 위한 ajax통신 페이지
	 	String inputId=request.getParameter("id");
	 	String id=MemberDao.getInstance().isOverlab(inputId);
	 	System.out.println(id);
	 	request.setAttribute("id", id);
		return new ActionForward("/member/overlab.jsp");
	}
}
