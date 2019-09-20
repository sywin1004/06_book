package book.dao;

import static book.mybatis.MybatisClient.getFactory;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.mapper.ManagerMapper;
import book.vo.Manager;

/**
 * MANAGER 테이블 access 관련 기능을 모아둔 DAO 클래스
 * @author 601-
 *
 */
public class ManagerDaoImpl implements ManagerDaoIf {
	
	private SqlSessionFactory factory;
	
	public ManagerDaoImpl() {
		// MybatisClient 클래스 안에 있는 static 메소드 이므로
		// static import 를 사용한다
		factory = getFactory();
		
	}

	@Override
	public boolean login(Manager manager) {
		// 리턴에 사용할 로그인 성공 여부 변수
		boolean success = false;
		
		// Sqlsession 얻기
		SqlSession session = factory.openSession();
		
		// ManagerMapper 인터페이스 객체 얻기
		ManagerMapper mapper = session.getMapper(ManagerMapper.class);
		
		// 얻어진 매퍼 객체에 메소드 호출하여 로그인 처리
		try {
			Integer managerSeq = mapper.login(manager);
			if (managerSeq != null) {
				success = true;
			}
			
		} finally {
			session.close();
		}
		
		
		return success;
	}
}
