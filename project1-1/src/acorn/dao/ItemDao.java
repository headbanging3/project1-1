package acorn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import acorn.dto.ItemDto;
import util.DbcpBean;

public class ItemDao {
	private static ItemDao itemDao;

	private ItemDao() {
	}

	public static ItemDao getInstance() {
		if (itemDao == null) {
			itemDao = new ItemDao();
		}
		return itemDao;
	}
//글목록을 리턴해주는 메소드
	public List<ItemDto> getItemList(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ItemDto> itemList=new ArrayList<ItemDto>();
		try{
			conn=new DbcpBean().getConn();
			String sql="SELECT pname,pno,comments,price,main_img"
					+ " FROM item"
					+ " ORDER BY regdate DESC";
			pstmt=conn.prepareStatement(sql);
			//sql 문 수행하고 결과셋 받아오기 
			rs=pstmt.executeQuery();
			while(rs.next()){
				String pno=rs.getString("pno");
				String pname=rs.getString("pname");
				String comments=rs.getString("comments");
				int price=rs.getInt("price");
				String main_img=rs.getString("main_img");
				//글정보를 BoardDto 에 담아서
				ItemDto dto=new ItemDto();
				dto.setPno(pno);
				dto.setPname(pname);
				dto.setComments(comments);
				dto.setPrice(price);
				dto.setMain_Img(main_img);
				
				itemList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return itemList;
	}//getList()
	
//item DB 에 저장하는 메소드
	public boolean itemInsert(ItemDto dto){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO item "
					+ "(pname,pno,comments,content,price,stock,main_Img,sub_Img1,sub_Img2,sub_Img3,sub_Img4,sub_Img5,sub_Img6,regdate) "
				+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,SYSDATE)";
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			pstmt.setString(1, dto.getPname());
			pstmt.setString(2, dto.getPno());
			pstmt.setString(3, dto.getComments());
			pstmt.setString(4, dto.getContent());
			pstmt.setInt(5, dto.getPrice());
			pstmt.setInt(6, dto.getStock());
			pstmt.setString(7, dto.getMain_Img());
			pstmt.setString(8, dto.getSub_Img1());
			pstmt.setString(9, dto.getSub_Img2());
			pstmt.setString(10, dto.getSub_Img3());
			pstmt.setString(11, dto.getSub_Img4());
			pstmt.setString(12, dto.getSub_Img5());
			pstmt.setString(13, dto.getSub_Img6());
			//sql 문 수행하기
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				//Connection 객체의 .close() 메소드 호출하면 
				//Connection 객체가 알아서 Pool 에 반납된다. 
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){
			return true; //작업 성공
		}else{
			return false; //작업 실패
		}
	}//insert()
}
