package www.silver.dao;

import www.silver.vo.MemberVO;

public interface IF_MeberDao {
	// DB 작업을 메서드로 정의합니다.
	public void inserOne(MemberVO membervo) throws Exception;

}