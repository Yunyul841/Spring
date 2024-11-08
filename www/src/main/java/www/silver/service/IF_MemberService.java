package www.silver.service;

import www.silver.vo.MemberVO;

public interface IF_MemberService {
	// 서비스 작업을 메서드로 정의합니다./
	// 컨트롤러가 조인 작업을 요청한다. 이떄 매개변수로 객체의 주소를 전달한다.
	// 하나의 인터페이스는 한개의 클래스만 구현한다.
	public void join(MemberVO membervo) throws Exception;
}
