package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.model.AnswerDto;
import spring.model.AnswerOracleDao;
import spring.model.BoardOracleDao;

@Controller
public class AnswerController {
	@Autowired
	AnswerOracleDao answerDao;
	
	@Autowired
	BoardOracleDao dao;
	
	@RequestMapping(value="/sample/answer.do",method=RequestMethod.POST)
	public String answer_insert(@ModelAttribute AnswerDto adto,
			@RequestParam String pageNum,
			@RequestParam(value="aPage",defaultValue="1") String aPage
			)
	{
		System.out.println("pk="+adto.getPk());//0 이면 새글, 0이 아니면 답글
		
		//답글일 경우 db로 부터 ref,re_step,re_level 을 구해서 dto에 담기
		int pk=adto.getPk();
		if(pk!=0)//답글일 경우에만 얻어오기
		{
			int ref=answerDao.getData(pk).getRef();
			int re_level=answerDao.getData(pk).getRe_level();
			int re_step=answerDao.getData(pk).getRe_step();
			
			adto.setRef(ref);
			adto.setRe_level(re_level);
			adto.setRe_step(re_step);
		}
		//댓글 db 에 추가		
		answerDao.insertAnswer(adto);
		return "redirect:content.do?pageNum="+pageNum+"&num="+adto.getNum()
				+"&aPage="+aPage;
		
	}
	
	@RequestMapping("/sample/alist.do")
	public ModelAndView answer_list(@RequestParam int num)
	{
		ModelAndView model=new ModelAndView();
		List<AnswerDto> list=answerDao.getAllList(num);

		String subject=dao.getData(num).getSubject();
		String writer=dao.getData(num).getWriter();
		
		model.addObject("subject",subject);//원글의 제목
		model.addObject("writer",writer);//원글의 작성자
		
		model.addObject("list",list);
		model.addObject("totalCount",list.size());//총 댓글 갯수
		
		model.setViewName("/pop/sample/answerlist");		
		return model;
	}
	
	@RequestMapping("/sample/answerdelform.do")
	public ModelAndView answer_delform(
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String aPage,
			@RequestParam String pk)
	{
		ModelAndView model=new ModelAndView();
		
		model.addObject("pageNum",pageNum);
		model.addObject("aPage",aPage);
		model.addObject("num",num);
		model.addObject("pk",pk);
		
		model.setViewName("/pop/sample/answerdelform");		
		return model;
	}
	
	@RequestMapping(value="/sample/answerdel.do",method=RequestMethod.POST)
	public String answer_del(@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String aPage,
			@RequestParam int pk,
			@RequestParam String pass)
	{
		//비밀번호가 맞으면 삭제후 content.do 로 리다이렉트
		//틀리면 passfail.jsp 로 포워드
		
		boolean sw=answerDao.isEqualPass(pk, pass);
		if(sw)
		{
			answerDao.deleteAnswer(pk);
			return "/1/sample/answerdelsuccess";
		}else{
			return "/pop/sample/answerpassfail";
		}
	}
	
	@RequestMapping("/sample/answerupdateform.do")
	public ModelAndView answer_updateform(
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String aPage,
			@RequestParam int pk)
	{
		ModelAndView model=new ModelAndView();
		
		model.addObject("pageNum",pageNum);
		model.addObject("aPage",aPage);
		model.addObject("num",num);
		model.addObject("pk",pk);
		String content=answerDao.getData(pk).getContent();
		model.addObject("content",content);
		
		model.setViewName("/pop/sample/answerupdateform");		
		return model;
	}
	
	@RequestMapping(value="/sample/answerupdate.do",method=RequestMethod.POST)
	public String answer_update(@ModelAttribute AnswerDto adto,
			@RequestParam String pageNum,
			@RequestParam String aPage)
	{
		//비밀번호가 맞으면 수정후 content.do 로 리다이렉트
		//틀리면 passfail.jsp 로 포워드
		
		boolean sw=answerDao.isEqualPass(adto.getPk(),adto.getPass());
		if(sw)
		{
			answerDao.updateAnswer(adto);
			return "/1/sample/answerdelsuccess";
		}else{
			return "/pop/sample/answerpassfail";
		}
	}
}





