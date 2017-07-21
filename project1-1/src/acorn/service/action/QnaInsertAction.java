package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;
import acorn.dto.QnaListDto;

public class QnaInsertAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String title=request.getParameter("title");
		int pdnum=1179;
		String writer=(String)request.getSession().getAttribute("id");
		String content=request.getParameter("content");
		
		QnaListDto dto=new QnaListDto();
		dto.setQna_title(title);
		System.out.println(title);
		dto.setQna_pdnum(pdnum);
		dto.setQna_writer(writer);
		dto.setQna_content(content);
		boolean isSuccess=MemberDao.getInstance().qnaInsert(dto);
		
		return new ActionForward("/service/qnalist.do",true);
	}
}
