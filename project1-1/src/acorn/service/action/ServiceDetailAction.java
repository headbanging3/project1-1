package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;
import acorn.dto.ServiceDto;

public class ServiceDetailAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDto dto=MemberDao.getInstance().sergetData((String)request.getSession().getAttribute("id"));
		int mem_num=dto.getMem_num();
		int rnum=Integer.parseInt(request.getParameter("rnum"));
		ServiceDto dto1=new ServiceDto();
		dto1.setMem_num(mem_num);
		dto1.setRnum(rnum);
		ServiceDto resultDto=MemberDao.getInstance().serDetail(dto1);
		request.setAttribute("resultDto", resultDto);
		return new ActionForward("/service/servicedetail.jsp");
	}

}
