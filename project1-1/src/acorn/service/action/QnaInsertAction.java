package acorn.service.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.ServiceDao;
import acorn.dto.QnaListDto;

public class QnaInsertAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("asdsad");
		String title=request.getParameter("title");
		int pdnum=1179;
		String writer=(String)request.getSession().getAttribute("id");
		String content=request.getParameter("ir1");
		 
		QnaListDto dto=new QnaListDto();
		dto.setQna_title(title);
		System.out.println(title);
		System.out.println(writer);
		System.out.println(content);
		
		dto.setQna_pdnum(pdnum);
		
		dto.setQna_writer(writer);
		
		dto.setQna_content(content);
		boolean isSuccess=ServiceDao.getInstance().qnaInsert(dto);
		
		return new ActionForward("/service/qnalist.do",true);
	}
}
