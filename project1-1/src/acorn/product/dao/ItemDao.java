package acorn.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import acorn.mybatis.SqlMapConfig;
import acorn.product.dto.ItemDto;

public class ItemDao {
	private static ItemDao dao;
	//MyBatis 를 사용하기 위한 핵심 객체
	private static SqlSessionFactory factory;
	//생성자
	private ItemDao(){}
	//MemberDao 객체를 리턴해주는 static 맴버 메소드
	public static ItemDao getInstance(){
		if(dao==null){
			dao=new ItemDao();
			//SqlSessionFactory 객체를 얻어와서 맴버필드에 저장 
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	
//상품목록을 리턴해주는 메소드
	public List<ItemDto> getItemList(){
		//1. SqlSession 객체의 참조값 얻어와서 
		SqlSession session=factory.openSession();
		//2. MemberMapper.xml 문서에 정의된 SELECT 문을 수행후 
		//   결과값을 받아오고 
		List<ItemDto> list=session.selectList("item.getList");
		//3. session 객체 닫아주고
		session.close();
		//4. 회원목록을 리턴해준다. 
		return list;
	}
	
//item DB 에 저장하는 메소드
	public int itemInsert(ItemDto dto){
		SqlSession session=factory.openSession(true);
		int result = session.insert("item.insert", dto);
		System.out.println(result);
		session.close();
		return result;
	}//insert()

// item 상세보기
	public ItemDto getDetail(int pno) {
		SqlSession session=factory.openSession(true);
		ItemDto item = session.selectOne("item.detail", pno);
		return item;
	}
}
