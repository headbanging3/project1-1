package acorn.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import acorn.product.controller.Action;
import acorn.product.controller.ActionForward;
import acorn.product.dao.ItemDao;
import acorn.product.dto.ItemDto;

public class ItemRegistAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//파일업로드
		MultipartRequest  multi = null;	
		int sizeLimit = 10 * 1024 * 1024 ; // 10메가입니다.	
		//String root =request.getSession().getServletContext().getRealPath("/");
		//String cPath=(String)request.getContextPath();
		//String savePath=application.getRealPath("/upload");
		//String savePath =root+"/upload";
		String savePath = request.getRealPath("/upload"); 
		System.out.println("savepath::"+savePath);
		try{
			  multi = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		}catch (Exception e) {
			e.printStackTrace();
		} 
		String pno=multi.getParameter("pno");
			String mainImg = multi.getFilesystemName("mainImg");
			String subImg1 = multi.getFilesystemName("subImg1");
			String subImg2 = multi.getFilesystemName("subImg2");;
			String subImg3 = multi.getFilesystemName("subImg3");;
			String subImg4 = multi.getFilesystemName("subImg4");;
			String subImg5 = multi.getFilesystemName("subImg5");;
			String subImg6 = multi.getFilesystemName("subImg6");;
		//폼전송되는 내용 읽어오기
		String pname=multi.getParameter("pname");
		String comments=multi.getParameter("comments");
		String content=multi.getParameter("content");
		int price=Integer.parseInt(multi.getParameter("price"));
		int stock=Integer.parseInt(multi.getParameter("stock"));
		//BoardDto 객체에 담는다.
		ItemDto dto=new ItemDto();
		dto.setPname(pname);
		dto.setPno(pno);
		dto.setComments(comments);
		dto.setContent(content);
		dto.setPrice(price);
		dto.setStock(stock);
		dto.setMain_Img(mainImg);
		dto.setSub_Img1(subImg1);
		dto.setSub_Img2(subImg2);
		dto.setSub_Img3(subImg3);
		dto.setSub_Img4(subImg4);
		dto.setSub_Img5(subImg5);
		dto.setSub_Img6(subImg6);
		//BoardDao 객체를 이용해서 DB 에 저장한다. 
		ItemDao dao=ItemDao.getInstance();
		int isSuccess=dao.itemInsert(dto);
		request.setAttribute("isSuccess", isSuccess);
		//응답하기 
		return new ActionForward("/manager/productManagement/regist_confirm.jsp");
	}
	
	
}
