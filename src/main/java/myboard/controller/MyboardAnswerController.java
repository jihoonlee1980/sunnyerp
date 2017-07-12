package myboard.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.model.AnswerDto;
import spring.util.SpringFileWriter;
import myboard.model.MyboardAnswerDto;
import myboard.model.MyboardAnswerDao;
import myboard.model.MyboardDao;
import myboard.model.MyboardDto;


@Controller
public class MyboardAnswerController {
	@Autowired
	private MyboardDao myDao;
	
	@Autowired
	private MyboardAnswerDao myAnswerDao;
	
	@RequestMapping("/myboard/answer.do")
	
	public String insertMyboard(@ModelAttribute MyboardAnswerDto myadto,
			@RequestParam int num,
			@RequestParam String pageNum,
			@RequestParam String content,
			@RequestParam(value="aPage",defaultValue="1") String aPage
			)
	{
		System.out.println("num="+myadto.getNum());//0 이면 새글, 0이 아니면 답글
		System.out.println("writer="+myadto.getWriter());
		System.out.println("content="+myadto.getContent());
		
		
		//답글일 경우 db로 부터 ref,re_step,re_level 을 구해서 dto에 담기
		/*int pk=adto.getNum();
		if(pk!=0)//답글일 경우에만 얻어오기
		{
			int ref=answerDao.getData(pk).getRef();
			int re_level=answerDao.getData(pk).getRe_level();
			int re_step=answerDao.getData(pk).getRe_step();
			
			adto.setRef(ref);
			adto.setRe_level(re_level);
			adto.setRe_step(re_step);
		}*/
		//댓글 db 에 추가		
		myAnswerDao.insertMyboard(myadto);
		return "redirect:content.do?num="+myadto.getNum()+"&pageNum="+pageNum;
			
		
		/*return "redirect:content.do?pageNum="+pageNum+"&num="+myadto.getNum()
				+"&aPage="+aPage;*/
		
	}
	
	
	@RequestMapping("/myboard/alist.do")
	public ModelAndView answer_list(@RequestParam int num)
	{
		ModelAndView model=new ModelAndView();
		List<MyboardAnswerDto> list=myAnswerDao.getAllList(num);

		
		String writer=myAnswerDao.getData1(num).getWriter();
		String content=myAnswerDao.getData1(num).getContent();
		
		model.addObject("writer",writer);//원글의 작성자
		model.addObject("content",content);//원글의 제목
		model.addObject("list",list);
		model.addObject("totalCount",list.size());//총 댓글 갯수
		
		model.setViewName("/1/myboard/content");		
		return model;
	}
	
	
	/*@RequestMapping("/myboard/alist.do")
	public ModelAndView getData(@RequestParam int num,
			@ModelAttribute MyboardAnswerDto myadto,
					@RequestParam String pageNum,
					@RequestParam(value="aPage",defaultValue="1") String aPage
					)
	{
		ModelAndView model=new ModelAndView();
		MyboardAnswerDto dto=myAnswerDao.getData(num);
		
		
		List<MyboardAnswerDto> list=(List<MyboardAnswerDto>) myAnswerDao.getData(num);
		MyboardAnswerDto list=myAnswerDao.getData(num);
		List<MyboardAnswerDto> list=myAnswerDao.getList(num);
		

		String writer=myAnswerDao.getData(num).getWriter();	
		String content=myAnswerDao.getData(num).getContent();
		Timestamp writeday=myAnswerDao.getData(num).getWriteday();

		
		model.addObject("writer",writer);		
		model.addObject("content",content);
		model.addObject("writeday",writeday);
		model.addObject("list",list);
		model.addObject("dto",dto);
		model.addObject("myadto", myDao);
		model.setViewName("/1/myboard/content");
		
		
		return model;
		
	}*/
		
	
	
}


/*@Controller
public class MyboardAnswerController {
	@Autowired
	MyboardAnswerDao answerDao;
	
	@Autowired
	MyboardDao dao;
	
	@RequestMapping(value="/myboard/answer.do",method=RequestMethod.POST)
	public String answer_insert(@ModelAttribute MyboardAnswerDto myadto,
			@RequestParam String pageNum,
			@RequestParam(value="aPage",defaultValue="1") String aPage
			)
	{
		System.out.println("pk="+myadto.getNum());//0 이면 새글, 0이 아니면 답글
		
		
		//답글일 경우 db로 부터 ref,re_step,re_level 을 구해서 dto에 담기
		int pk=adto.getNum();
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
		answerDao.ainsertOfMyboard(myadto);
		return "redirect:list.do";
		
	}
	
	@RequestMapping("/myboard/alist.do")
	public ModelAndView answer_list(@RequestParam int num)
	{
		ModelAndView model=new ModelAndView();
		List<MyboardAnswerDto> list=(List<MyboardAnswerDto>) answerDao.getData(num);

		String writer=dao.getData(num).getWriter();
		
	
		model.addObject("writer",writer);//원글의 작성자
		
		model.addObject("list",list);
	
		
			
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
}*/








