package www.silver.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.silver.vo.MemberVO;
@Repository
public class MemberDaoImpl implements IF_MeberDao {
	
	// sqlSession이 필요합니다.  Mybatis에서 제공하는 객체
	// 주소가 올바르게 주입되려면 root-context.xml에서 설정이 잘 되어 있어야한다.
	@Inject
	SqlSession sqlsession;
	private static String mapperQuery="www.silver.dao.IF_MemberDao";
	@Override
	public void inserOne(MemberVO membervo) throws Exception {
		// TODO Auto-generated method stub
		//sqlSessiomTemplate의 객체의 메서드를 call하면된다.
//		sqlsession.insert("mapper와 매핑정보","파라미터값");
		sqlsession.insert(mapperQuery+".insertOne",membervo);
		// "www.silver.dao.IF_MemberDao".insertOne <<매핑의 정보
	}

}
