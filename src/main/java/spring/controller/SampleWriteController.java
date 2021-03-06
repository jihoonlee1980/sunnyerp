package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.BoardDto;
import spring.model.BoardOracleDao;

@Controller
public class SampleWriteController {
	@Autowired
	private BoardOracleDao dao;
	
	@RequestMapping("/sample/inform.do")
	public String form()
	{
		return "/1/sample/inform";///레이아웃번호/폴더명/파일명 으로 구성된 타일즈 적용
	}
	
	@RequestMapping(value="/sample/read.do",method=RequestMethod.POST)
	public String read(@ModelAttribute BoardDto dto)
	{
		int num=dao.insertBoard(dto);
		return "redirect:content.do?num="+num;
	}
}









