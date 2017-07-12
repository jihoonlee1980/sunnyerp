package community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import community.model.ComuDAO;

@Controller
public class ComudeleteController {
	
	@Autowired
	private ComuDAO cdao;
	
	
	@RequestMapping("deletepassform.do")
	public ModelAndView delform(
			@RequestParam int b_seq,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("b_seq",b_seq);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/community/comudeletepass");
		return model;
	}
	
	@RequestMapping("delete.do")
	public String delete(
			@RequestParam int b_seq,
			@RequestParam String pageNum
			)
	{
		//삭제
		cdao.deleteBoard(b_seq);
		return "redirect:communitylist.do?pageNum="+pageNum;
		
		
	}
}
