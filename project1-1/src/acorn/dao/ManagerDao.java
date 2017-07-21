package acorn.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import acorn.dto.MemberDto;
import acorn.mybatis.SqlMapConfig;

public class ManagerDao {
	private static ManagerDao dao;
	private static SqlSessionFactory factory;
	private ManagerDao() {}
	public static ManagerDao getInstance() {
		if(dao==null) {
			dao = new ManagerDao();
			factory = SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	
	
	public List<MemberDto> getList() {
		SqlSession session = factory.openSession();
		List<MemberDto> list = null;
		try {
			list = session.selectList("manager.getList");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
