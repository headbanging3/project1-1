package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.ServiceDao;
import acorn.dto.QnaListDto;

public class QnaDetailAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int listnum=Integer.parseInt(request.getParameter("qna_listnum"));
		QnaListDto dto=ServiceDao.getInstance().qnaDetail(listnum);
		request.setAttribute("dto", dto);
		
		return new ActionForward("/service/qnadetail.jsp");
	}
}
