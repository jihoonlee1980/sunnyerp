package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.model.AnswerOracleDao;
import spring.model.BoardOracleDao;

@Controller
public class SampleDeleteController {
	@Autowired
	private BoardOracleDao dao;
	
	@Autowired
	private AnswerOracleDao answerDao;
	
	@RequestMapping("/sample/deletepassform.do")
	public ModelAndView delform(
			@RequestParam String num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/sample/deletepassform");
		return model;
	}
	
	@RequestMapping(value="/sample/delete.do",method=RequestMethod.POST)
	public String delete(
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String pass
			)
	{
		//비밀번호가 맞으면 삭제후 list.do 로 리다이렉트(페이지번호 넘겨야함)
		//맞지 않으면 passfail.jsp 로 포워드
		boolean sw=dao.isEqualPass(num, pass);
		if(sw)
		{
			answerDao.deleteNumAnswer(num);//댓글 먼저 모두 삭제
			dao.deleteBoard(num);
			return "redirect:list.do?pageNum="+pageNum;
		}else{
			return "/1/sample/passfail";
		}
		
	}
}













