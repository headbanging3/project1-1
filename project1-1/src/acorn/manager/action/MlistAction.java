package acorn.manager.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.ManagerDao;
import acorn.dao.MemberDao;
import acorn.dto.MemberDto;

public class MlistAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		List<MemberDto> list = ManagerDao.getInstance().getList();
		request.setAttribute("list", list);
		
		return new ActionForward("/manager/m_list.jsp");
		
	}

}
