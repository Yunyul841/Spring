package www.silver.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_MeberDao;
import www.silver.vo.MemberVO;

@Service
public class MemberServiceImpl implements IF_MemberService {
	@Inject
	 IF_MeberDao memberdao;

	@Override
	public void join(MemberVO membervo) throws Exception {
		System.out.println("join 서비스");
		// dao에게 작업 지시해야한다.//
		// 실제 데이터를 저장하도록 지시한다.
		memberdao.inserOne(membervo);
	}

}
