package acorn.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.ManagerDao;
import acorn.dto.MemberDto;

public class MupdateAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		MemberDto dto = new MemberDto();
		dto.setMem_num(mem_num);
		dto.setName(name);
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setPhone(phone);
		dto.setEmail(email);
		dto.setAddr(addr);
		
		ManagerDao.getInstance().update1(dto);
		return new ActionForward("/manager/m_list.jsp");
	}
	
}
