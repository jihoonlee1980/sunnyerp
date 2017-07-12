package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.model.BoardDto;
import spring.model.BoardOracleDao;

@Controller
public class SampleUpdateController {
	@Autowired
	BoardOracleDao dao;
	
	@RequestMapping("/sample/updatepassform.do")
	public ModelAndView passform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/sample/updatepassform");
		return model;
	}
	
	@RequestMapping("/sample/updateform.do")
	public String updateform(Model model,
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String pass
			)
	{
		//비밀번호가 맞으면 수정폼으로 포워드,틀리면 passfail로 포워드
		boolean sw=dao.isEqualPass(num, pass);
		if(sw)
		{
			BoardDto dto=dao.getData(num);
			model.addAttribute("dto",dto);
			model.addAttribute("pageNum",pageNum);
			return "/1/sample/updateform";
		}else{
			return "/1/sample/passfail";
		}
	}
	
	@RequestMapping(value="/sample/update.do",method=RequestMethod.POST)
	public String update(
			@ModelAttribute BoardDto dto,
			@RequestParam String pageNum
			)
	{
		dao.updateBoard(dto);
		return "redirect:content.do?pageNum="+pageNum+"&num="+dto.getNum();
	}
}






