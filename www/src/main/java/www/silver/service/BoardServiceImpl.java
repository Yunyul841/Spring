package www.silver.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.silver.dao.IF_BoardDao;
import www.silver.vo.BoardVO;

@Service
public class BoardServiceImpl implements IF_BoardService {
	@Inject
	IF_BoardDao boarddao;

	@Override
	public void addBoard(BoardVO boardvo) throws Exception {

		if (boardvo.getViewmember() != null) {
			boardvo.setViewmember("공개");
		} else {
			boardvo.setViewmember("비공개");
		}

		boarddao.insertBoard(boardvo);
		// dao에 넘겨서 mapper을 통해 DB insert
	}

	@Override
	public List<BoardVO> boardList() throws Exception {
		// 처리하다가 DB작업이 필요..
		// 서비스에서 처리하면 무리가 간다.
		// 그래서 view에서 해야된다.
		List<BoardVO> list = boarddao.selectAll();
		for(BoardVO b : list) {
			String date = b.getIndate();
			b.setIndate(date.substring(0, 10));
		}
		return list;
	}

	@Override
	public void deleteBoard(String delno) throws Exception {
		// TODO Auto-generated method stub
		boarddao.deleteBoard(delno);
		
	}

}
