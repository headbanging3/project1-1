package acorn.service.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;
import acorn.dto.ServiceDto;

public class ServiceListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id=(String) request.getSession().getAttribute("id");
		MemberDto dto=MemberDao.getInstance().sergetData(id);
		int mem_num=dto.getMem_num();
		List<ServiceDto> list=MemberDao.getInstance().sergetList(mem_num);
		request.setAttribute("list", list);
		return new ActionForward("/service/servicelist.jsp");
	}

}
