package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.ServiceDao;

public class QnaDeleteAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int listnum=Integer.parseInt(request.getParameter("listnum"));
		System.out.println(listnum);
		ServiceDao.getInstance().qnaDelete(listnum);
		
		return new ActionForward("/service/qnalist.do",true);
	}
}
