package myboard.controller;

import myboard.model.MyboardDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class deleteController {
	
	@Autowired
	private MyboardDao mydao;
	
	
	@RequestMapping("myboard/myboarddeletepassform.do")
	public ModelAndView delform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/myboard/myboarddeletepass");
		return model;
	}
	
	@RequestMapping("myboard/myboarddeletepass.do")
	public String delete(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		//삭제
		mydao.deleteBoard(num);
		return "redirect:list.do?pageNum="+pageNum;
		
		
	}
}
