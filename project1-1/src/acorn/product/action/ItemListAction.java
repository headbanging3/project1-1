package acorn.product.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import acorn.controller.Action;
import acorn.controller.ActionForward;
import acorn.product.dao.ItemDao;
import acorn.product.dto.ItemDto;
import util.ProductUtil;
/*
 *  대문 페이지(index 페이지) 를 출력해주는 액션 클래스 정의하기 
 */
public class ItemListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		 
		//String grid = "alpha";
		List<ItemDto> itemList =ItemDao.getInstance().getItemList();
		
		for(ItemDto tmp: itemList){
			tmp.setGrid(ProductUtil.gridChoice(tmp.getRowNum()));
			System.out.println("grid::"+tmp.getGrid());
			tmp.setIndent(ProductUtil.indentChoice(tmp.getRowNum()));
			System.out.println("indent::"+tmp.getIndent());
		}
		request.setAttribute("itemList", itemList);
		//request.setAttribute("grid", grid);
		
		
		// index 페이지를 출력할 뷰 페이지로 forward 이동
		return new ActionForward("/manager/productManagement/product_list.jsp");
		
	}

}
















