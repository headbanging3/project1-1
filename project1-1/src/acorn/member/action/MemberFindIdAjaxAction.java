package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MemberFindIdAjaxAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//아이디 찾기 버튼 클릭시 ajax통신이 이뤄지는 페이지
		String name=request.getParameter("memName");
		String email=request.getParameter("memEmail");
		MemberDto dto=new MemberDto();
		dto.setName(name);
		dto.setEmail(email);
		String id=MemberDao.getInstance().findId(dto);
		request.setAttribute("id", id);
		return new ActionForward("/member/find_id_ajax.jsp");
	}
}
