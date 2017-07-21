package acorn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import acorn.dto.MemberDto;
import acorn.dto.QnaListDto;
import acorn.dto.ServiceDto;
import acorn.mybatis.SqlMapConfig;
import util.DbcpBean;

public class MemberDao {
	private static MemberDao dao;
	private static SqlSessionFactory factory;
	private MemberDao() {
	}

	public static MemberDao getInstance() {
		if (dao == null) {
			dao = new MemberDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}

	//////////////////////////////////////////////// 시훈
	//////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////
	// 회원목록을 리턴
	public List<MemberDto> getList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 회원 목록을 담을 객체 생성
		List<MemberDto> list = new ArrayList<>();
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM member order by mem_num asc";
			pstmt = conn.prepareStatement(sql);

			// sql문 수행하고 결과셋 받아오기
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("mem_num");
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String addr = rs.getString("addr");
				String regdate = rs.getString("regdate");

				// 회원 한명의 정보를 MemberDto 객체에 담는다.
				MemberDto dto = new MemberDto(num, id, pwd, name, phone, email, addr, regdate);

				// MemberDto 객체의 참조값을 ArrayList에 저장
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return list;
	} // getList();

	// 회원 정보 수정
	public boolean update1(MemberDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE member SET id=?, pwd=?, name=?, phone=?, email=?, addr=? WHERE mem_num = ?";

			// ? 에 수정할 회원의 정보 바인딩 하기

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getAddr());
			pstmt.setInt(7, dto.getMem_num());

			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0)
			return true;
		else
			return false;

	} // update();

	// 인자로 전달된 번호에 해당하는 회원정보를 리턴해주는 메소드
	public MemberDto getDataS(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDto dto = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT id, pwd, name, phone, email, addr, regdate from member WHERE mem_num =?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			// select 문 수행하고 결과값을 ResultSet 으로 받아오기
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");

				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String addr = rs.getString("addr");
				String regdate = rs.getString("regdate");

				dto = new MemberDto(num, id, pwd, name, phone, email, addr, regdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		// 회원 한명의 정보가 담겨 있는 MemberDto 객체를 리턴해준다.
		return dto;
	}

	// 인자로 전달된 번호에 해당하는 회원정보를 리턴해주는 메소드
	public MemberDto getData(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDto dto = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT id, pwd, name, phone, email, addr from member WHERE mem_num =?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			// select 문 수행하고 결과값을 ResultSet 으로 받아오기
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");

				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String addr = rs.getString("addr");
				String regdate = rs.getString("regdate");

				dto = new MemberDto(num, id, pwd, name, phone, email, addr, regdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		// 회원 한명의 정보가 담겨 있는 MemberDto 객체를 리턴해준다.
		return dto;
	}

	// 회원정보 삭제
	public boolean delete(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM member WHERE mem_num=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 삭제할 회원의 번호를 바인딩 한다.
			pstmt.setInt(1, num);
			// 삭제하기
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////// 웅환
	//////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////
	// 회원가입 dao(웅환)
	public void memberInsert(MemberDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.insert("acorn.memberInsert",dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}

	// 아이디 찾기 dao(웅환)
	public String findId(MemberDto dto){
		SqlSession session=factory.openSession();
		String id="";
		try{
			id=session.selectOne("acorn.memberFindId",dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return id;
	}

	// 비밀번호 찾기 dao(웅환)
	public String findPwd(MemberDto dto){
		SqlSession session=factory.openSession();
		String pwd="";
		try{
			session.selectOne("acorn.memberFindPwd",dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return pwd;
	}

	// 아이디 중복값을 DB와 비교하기 위한 dao(웅환)
	public String isOverlab(String id) {
		SqlSession session=factory.openSession();
		String id2="";
		try{
			session.selectOne("acorn.memberOverlab",id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return id2;
	}// overlab();

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////// 기성
	//////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////// 두언
	//////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////
	// 아이디 비밀번호가 유효한지 여부를 리턴
	public boolean isValid(MemberDto dto) {
		SqlSession session=factory.openSession();
		MemberDto resultDto=null;
		try{
			resultDto=session.selectOne("acorn.isValid",dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		if(resultDto == null){
			return false;
		}else{
			return true;
		}
	} // isValid

	// 회원 가입된 정보를 리턴해주는 메소드
	public MemberDto getData(String id) {
		SqlSession session=factory.openSession();
		MemberDto dto=null;
		try{
			dto=session.selectOne("acorn.getData",id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return dto;
	}

	public void delete(String id) {
		SqlSession session=factory.openSession(true);
		try{
			session.delete("acorn.delete",id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}// delete
	
	//회원 정보 수정 반영하는 메소드
	public void update(MemberDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.update("acorn.update",dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////// 재두
	//////////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////

	//자세한 상담내역보기
	public ServiceDto serDetail(ServiceDto dto){
		SqlSession session=factory.openSession();
		ServiceDto resultDto=session.selectOne("service.getDetail", dto);
		session.close();
		return resultDto;
	}
	
	// 나의 문의 내역 데이터 가져오기
	public List<ServiceDto> sergetList(int mem_num) {
		SqlSession session=factory.openSession();
		List<ServiceDto> list=session.selectList("service.getList", mem_num);
		return list;
	}// getList()

	// 고객센터 페이지 문의하러 가기에서
	// 폼에 회원 정보가져오는 service getdata (재두)
	public MemberDto sergetData(String id) {
		SqlSession session=factory.openSession();
		MemberDto dto=session.selectOne("service.getData",id);
		session.close();
		return dto;
	}

	// 고객센터 페이지 문의하러 가기에서
	// service insert(재두)
	public void serinsert(ServiceDto dto) {
		SqlSession session=factory.openSession(true);
		session.insert("service.insert", dto);
		session.close();
	}// inert();

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

} // Class
