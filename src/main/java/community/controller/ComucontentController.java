package community.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import community.model.ComuDAO;
import community.model.ComuDTO;

@Controller
public class ComucontentController {

	@Autowired	
	private ComuDAO cdao;
		
	@RequestMapping("/comucontent.do")
	public ModelAndView view(
			@RequestParam int b_seq,
			@RequestParam(value="pageNum",defaultValue="1") String pageNum,
			@RequestParam(value="readcount",defaultValue="1") String readcount,
			@RequestParam(value="key",defaultValue="none") String key,
			@RequestParam(value="aPage",defaultValue="1") int aPage)
	{
		ModelAndView model=new ModelAndView();
		ComuDTO cdto=cdao.getData(b_seq);
		
		//key 가 lst 면 조회수 증가
		/*if(key.equals("lst"))*///목록에서 내용보기 할 경우에만 증가
			cdao.updateReadcount(b_seq);
		
		
	    int seq=cdto.getSeq();
		//System.out.println(seq);
		
		String m_nick = cdao.getComuNick(seq);
		//System.out.println(m_nick);
		
		model.addObject("m_nick", m_nick);
		model.addObject("cdto",cdto);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/community/comucontent");
		return model;
	}
}
