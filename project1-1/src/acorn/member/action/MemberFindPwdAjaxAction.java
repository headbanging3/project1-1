package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MemberFindPwdAjaxAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//비밀번호 찾기 클릭시 이뤄지는 ajax통신 페이지
		String id=request.getParameter("memId");
		String phone=request.getParameter("memPhone");
		MemberDto dto=new MemberDto();
		dto.setId(id);
		dto.setPhone(phone);
		
		String pwd=MemberDao.getInstance().findPwd(dto);
		request.setAttribute("pwd", pwd);
		return new ActionForward("/member/find_pwd_ajax.jsp");
	}
}
