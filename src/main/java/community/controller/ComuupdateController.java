package community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




import spring.model.BoardDto;
import community.model.ComuDAO;
import community.model.ComuDTO;

@Controller
public class ComuupdateController {
	
	@Autowired
	private ComuDAO cdao;
	
	
	@RequestMapping("updatepassform.do")
	public ModelAndView updateform(
			@RequestParam String b_seq,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("b_seq",b_seq);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/community/comuupdatepass");
		return model;
	}
	
	
	
	
	
	@RequestMapping(value="update.do", method=RequestMethod.POST)
	public String update(
			
			@ModelAttribute ComuDTO dto,
			@RequestParam String pageNum
			)
	{
		//수정
		cdao.updateBoard(dto);
		return "redirect:communitylist.do?pageNum="+pageNum;
		
		/*cdao.updateBoard(b_seq);
		return "redirect:content.do?pageNum="+pageNum+"&num="+b_seq.getNum();*/
		
		
		
	}
}




