package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.ServiceDto;

public class ServiceInsertAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int mem_num=Integer.parseInt(request.getParameter("mem_num"));
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String type=request.getParameter("type");
		ServiceDto dto=new ServiceDto();
		dto.setMem_num(mem_num);
		dto.setPhone(phone);
		dto.setEmail(email);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setType(type);
		MemberDao.getInstance().serinsert(dto);
		request.setAttribute("msg", "1:1문의가 정상적으로 등록되었습니다. 빠른시일내에 답변 드리겠습니다.");
		request.setAttribute("uri", request.getContextPath()+"/service/servicelist.do");
		return new ActionForward("/service/alert.jsp");
	}

}
