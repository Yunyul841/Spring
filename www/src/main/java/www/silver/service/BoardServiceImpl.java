package www.silver.service;

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

}
