package myboard.controller;

import myboard.model.MyboardDao;
import myboard.model.MyboardDto;

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
public class updateController {
	
	@Autowired
	private MyboardDao mydao;
	
	
	@RequestMapping("myboard/myboardupdatepassform.do")
	public ModelAndView updateform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/myboard/myboardupdatepass");
		return model;
	}
	
	
	
	
	
	@RequestMapping(value="myboard/myboardupdatepass.do", method=RequestMethod.POST)
	public String update(
			
			@ModelAttribute MyboardDto dto,
			@RequestParam String pageNum
			)
	{
		//수정
		mydao.updateBoard(dto);
		return "redirect:list.do?pageNum="+pageNum;
		
		/*cdao.updateBoard(b_seq);
		return "redirect:content.do?pageNum="+pageNum+"&num="+b_seq.getNum();*/
		
		
		
	}
}




