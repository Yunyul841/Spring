package www.silver.hom;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WordController {
	@RequestMapping(value = "word1", method = RequestMethod.GET)
	public String afdasf1() {
		return "word/index";
	}

	@RequestMapping(value = "word", method = RequestMethod.GET)
	public String afdasf(@RequestParam("eng") String e, Model m) {
		m.addAttribute("eng", e);
		String kk = null;
		String tt = null;
		String[] arr = { "apple", "banana", "kiwi", "grape", "strawberry" };
		String[] arr1 = { "사과", "바나나", "키위", "포도", "딸기" };
		for (int i = 0; i < arr.length; i++) {
			if (e.equals(arr[i])) {
				kk = arr1[i];
			}
		}
		m.addAttribute("kor", kk);
		return "word/word";
	}

//	@RequestMapping(value = "word", method = RequestMethod.GET)
//	public String afdasf1(@RequestParam("kor") String k, Model m) {
//		m.addAttribute("kor", k);
//		String tt = null;
//		String[] arr = { "apple", "banana", "kiwi", "grape", "strawberry" };
//		String[] arr1 = { "사과", "바나나", "키위", "포도", "딸기" };
//		for (int i = 0; i < arr1.length; i++) {
//			if (k.equals(arr1[i])) {
//				tt = arr[i];
//			}
//		}
//		m.addAttribute("eng", tt);
//		return "word/word";
//	}
}