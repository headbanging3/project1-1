package acorn.manager.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.ServiceDto;

public class ManagerServiceListAjaxAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//클릭한 요소의 name 속성값으로 문의유형값을 가져와서
		String type=request.getParameter("type");
		System.out.println(type);
		//해당하는 문의유형값을 넣어 매핑한다.
		List<ServiceDto> list=MemberDao.getInstance().ManagergetList(type);
		request.setAttribute("list", list);
		return new ActionForward("/manager/servicelist_ajax.jsp");
	}

}
