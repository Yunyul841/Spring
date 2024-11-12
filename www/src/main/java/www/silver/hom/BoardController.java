package www.silver.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import www.silver.service.IF_BoardService;
import www.silver.vo.BoardVO;

@Controller
public class BoardController {

	@Inject
	IF_BoardService boardservice;

	@GetMapping(value = "board")
	// 뷰에게 값을 넘기기위해 model을 썻다.
	public String board(Model model) throws Exception {
		// Contriller > service > dao > mapper
		// 전체 게시글을 가져오는 작업이 필요함.
		// 서비스 layer에 전체글 서비스를 요청하고 결과를 리턴
		List<BoardVO> list = boardservice.boardList();
		// 리턴받은 list변수의 값을 모델 객체로 뷰에게 전송하는 코드
		model.addAttribute("list", list);
		// 뷰를 지정
		return "board/bbs";
	}

	@GetMapping(value = "bwr")
	public String bwr() throws Exception {
		return "board/bbswr";
	}

	@PostMapping(value = "bwrdo")
	public String bwrdo(@ModelAttribute BoardVO boardvo) throws Exception {
		// System.out.println(boardvo.toString());
		boardservice.addBoard(boardvo);
		// 서비스에게 boardvo를 넘겨주기 위해서
		// 글을 써도 바로 보이지 않는 이뉴는? 모델객체를 넘겨주지 않아서
		// 밑에 코드는 redirect:board 다시 board로 돌아갈래 라는 코드이다
		return "redirect:board";
	}
}