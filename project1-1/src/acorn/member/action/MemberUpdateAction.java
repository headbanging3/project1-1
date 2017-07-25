package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MemberUpdateAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String addr=request.getParameter("addr");
		MemberDto dto= new MemberDto();
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setName(name);
		dto.setPhone(phone);
		dto.setEmail(email);
		dto.setAddr(addr);
		MemberDao.getInstance().update(dto);
		request.setAttribute("msg", id+" 회원 정보를 수정했습니다.");
		request.setAttribute("url", request.getContextPath());
		return new ActionForward("/member/info.jsp",true);
	}

}
