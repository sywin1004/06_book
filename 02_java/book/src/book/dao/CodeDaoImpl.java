package book.dao;

import static book.mybatis.MybatisClient.getFactory;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.mapper.CodeMapper;
import book.vo.Code;

/**
 * CODE 테이블 access 기능을 구현하는 클래스
 * @author 601-
 *
 */
public class CodeDaoImpl implements CodeDaoIf {
	
	private SqlSessionFactory factory;
	
	public CodeDaoImpl() {
		factory = getFactory();
	}
	@Override
	public List<Code> selectCompanies() {
		// 조회될 코드들이 담길 목록 선언
		List<Code> codes = null;
		
		// SqlSession 얻기
		SqlSession session = factory.openSession();
		
		// CodeMapper 인터페이스 객체 얻기
		CodeMapper mapper = session.getMapper(CodeMapper.class);
		// 얻어진 매퍼 객체에 메소드 수행
		try {
			codes = mapper.selectCompanies();
		} finally {
			session.close();
		}
		
		// 조회된 목록 리턴
		return codes;
	}

}
