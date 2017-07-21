package acorn.userpage.shop.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.product.dao.ItemDao;
import acorn.product.dto.ItemDto;

public class ShopDetailAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		ItemDto item = ItemDao.getInstance().getDetail(pno);
		
		request.setAttribute("item", item);
		return new ActionForward("/userpage/shop/detail.jsp");
	}

}
