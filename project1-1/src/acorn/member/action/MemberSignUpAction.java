package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MemberSignUpAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDto dto=new MemberDto();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setName(request.getParameter("name"));
		dto.setPhone(request.getParameter("phone"));
		dto.setEmail(request.getParameter("email"));
		dto.setAddr(request.getParameter("addr"));
	
		MemberDao.getInstance().memberInsert(dto);
		
		return new ActionForward("/index.do",true);
	}
}
