package acorn.service.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.QnaListDto;

public class ServiceQnalistAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		List<QnaListDto> list=MemberDao.getInstance().getQnaList();
		request.setAttribute("list", list);
		return new ActionForward("/service/qnalist.jsp");
	}
}
