package acorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import acorn.dto.QnaListDto;
import acorn.mybatis.SqlMapConfig;

public class ServiceDao {
	private static ServiceDao dao;
	private static SqlSessionFactory factory;
	private ServiceDao(){}
	public static ServiceDao getInstance(){
		if(dao==null){
			dao=new ServiceDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	
	// 상품문의 리스트를 출력해주는 메소드
		public List<QnaListDto> getQnaList(QnaListDto dto){
			SqlSession session=factory.openSession();
			List<QnaListDto> list=null;
			try{
				list=session.selectList("service.getQnaList",dto);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			return list;
		}
		
		//전체 row 갯수를 리턴해주는 메소드
		public int getCount(){
			SqlSession session=factory.openSession();
			int count=0;
			try{
				count=session.selectOne("service.getCount");
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			return count;
		}
		
		// 상품문의글 등록 메서드
		public boolean qnaInsert(QnaListDto dto) {
			SqlSession session=factory.openSession(true);
			int isSuccess=0;
			try{
				isSuccess=session.insert("service.insertQna",dto);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			if(isSuccess>0){
				return true;
			}else{
				return false;
			}
		}// qnaInsert();
		
		public QnaListDto qnaDetail(int listnum){
			SqlSession session=factory.openSession();
			QnaListDto dto=null;
			try{
				dto=session.selectOne("service.qnaDetail",listnum);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			return dto;
		}
		
		public void qnaDelete(int listnum){
			SqlSession session=factory.openSession();
			try{
				session.delete("service.qnaDelete",listnum);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
		}
		
}
