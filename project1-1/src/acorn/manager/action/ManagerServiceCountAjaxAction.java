package acorn.manager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.dao.MemberDao;

public class ManagerServiceCountAjaxAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		int productCount=MemberDao.getInstance().productCount();
		int userinfoCount=MemberDao.getInstance().userinfoCount();
		int asCount=MemberDao.getInstance().asCount();
		int serviceCount=MemberDao.getInstance().serviceCount();
		int deliveryCount=MemberDao.getInstance().deliveryCount();
		int orderCount=MemberDao.getInstance().orderCount();	
		request.setAttribute("productCount", productCount);
		request.setAttribute("userinfoCount", userinfoCount);
		request.setAttribute("asCount", asCount);
		request.setAttribute("serviceCount", serviceCount);
		request.setAttribute("deliveryCount", deliveryCount);
		request.setAttribute("orderCount", orderCount);
		return new ActionForward("/manager/servicecount_ajax.jsp");
	}

}
