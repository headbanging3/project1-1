package acorn.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MemberSigninAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//로그인 성공후 이동할 url 주소
		String url=request.getParameter("url");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		MemberDto dto=new MemberDto();
		dto.setId(id);
		dto.setPwd(pwd);
		//1. 아이디 비밀번호가 유효한 정보인지 확인
		boolean isValid=MemberDao.getInstance().isValid(dto);
		if(isValid){
			request.getSession().setAttribute("id", id);
			request.setAttribute("msg", id+"님 로그인 되었습니다.");
			request.setAttribute("url", url);
		}else{
			request.setAttribute("msg", "아이디 혹은 비밀번호가 틀려요");
			String location=request.getContextPath()+
			"/popup/popup_page";
			request.setAttribute("url", location);
		}
		
		return new ActionForward("/popup/loginresult.jsp");
	}

}
