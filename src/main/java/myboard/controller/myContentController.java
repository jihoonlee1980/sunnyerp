package myboard.controller;

import java.sql.Timestamp;
import java.util.List;

import myboard.model.MyboardAnswerDao;
import myboard.model.MyboardAnswerDto;
import myboard.model.MyboardDao;
import myboard.model.MyboardDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class myContentController {
	@Autowired
	private MyboardDao myDao;
	
	@Autowired
	private MyboardAnswerDao myAnswerDao;
	
	@RequestMapping("/myboard/content.do")
	public ModelAndView view(@RequestParam int num,
			@RequestParam(value="pk",defaultValue="1") int pk,
			@RequestParam(value="pageNum",defaultValue="1") String pageNum,
			@RequestParam(value="readcount",defaultValue="1") String readcount,
			@RequestParam(value="key",defaultValue="none") String key,
			@RequestParam(value="aPage",defaultValue="1") int aPage)
	
	{
		
		
		//key 가 lst 면 조회수 증가
				/*if(key.equals("lst"))*///목록에서 내용보기 할 경우에만 증가
					myDao.updateReadcount(num);
		 
		ModelAndView model=new ModelAndView();
		MyboardDto dto=myDao.getData(num);
		MyboardAnswerDto myadto=myAnswerDao.getData1(pk);
		
		
		int seq=dto.getPk();
		//System.out.println(seq);
		
		List<MyboardAnswerDto> list=myAnswerDao.getAllList(pk);
		
		String writer=myAnswerDao.getData1(pk).getWriter();	
		String content=myAnswerDao.getData1(pk).getContent();
		Timestamp writeday=myAnswerDao.getData1(pk).getWriteday();

		
		String m_nick = myDao.getNick(seq);
		
		model.addObject("m_nick", m_nick);	
		model.addObject("writer",writer);		
		model.addObject("content",content);
		model.addObject("writeday",writeday);
		model.addObject("list",list);
		model.addObject("dto",dto);

		model.addObject("myadto",myadto);
		model.addObject("myadto", myDao);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/myboard/content");
		
		
		return model;
		
		
		//System.out.println(m_nick);
		
		/*model.addObject("m_nick", m_nick);	
		model.addObject("dto",dto);
		model.addObject("list",list);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/myboard/content");*/
		
	}
}
     




