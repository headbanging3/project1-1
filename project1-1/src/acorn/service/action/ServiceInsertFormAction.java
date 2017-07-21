package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class ServiceInsertFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//insertform 에 가기전에 아이디를 가지고 회원번호를 조회
		String id=(String) request.getSession().getAttribute("id");
		MemberDto dto=MemberDao.getInstance().sergetData(id);
		request.setAttribute("dto", dto);
		
		return new ActionForward("/service/serviceinsertform.jsp");
	}

}
