package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import spring.model.AnswerOracleDao;
import spring.model.BoardDto;
import spring.model.BoardOracleDao;

@Controller
public class SampleListController {

	@Autowired
	private BoardOracleDao dao;
	@Autowired
	private AnswerOracleDao answerDao;

	@RequestMapping("/sample/list.do")
	public ModelAndView list(
			@RequestParam(value="pageNum",defaultValue="1") int currentPage
			)
	{
		ModelAndView model=new ModelAndView();

		int totalCount=dao.getTotalCount();

		//페이징에 처리에 필요한 변수들
		int perPage=10; //한페이지당 보여지는 게시글의 갯수
		
		int totalPage;//총페이지수
		int startNum;//각페이지당 보여지는 글의 시작번호
		int endNum;
		int perBlock=5; //한블럭당 보여지는 페이지의 개수
		int totalBlock; //총블럭수
		int startPage; //각블럭당 보여지는 페이지의 시작번호
		int endPage;

		//총페이지수,나머지가 있으면 무조건올림
		//총게시글이 37-한페이지 3-12.3333....13페이지
		totalPage=totalCount/perPage+(totalCount%perPage>0?1:0);
		//총블럭수
		totalBlock=totalPage/perBlock+(totalPage%perBlock>0?1:0);

		//각블럭의 시작페이지와 끝페이지
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//endPage는 totalPage를 넘지않도록 한다
		if(endPage>totalPage)
			endPage=totalPage;

		//각페이지당 불러올 글의 번호
		//1페이지:1~10 2페이지:11~20 3페이지:31-40
		startNum=(currentPage-1)*perPage+1;
		endNum=startNum+perPage-1;

		if(endNum>totalCount)
			endNum=totalCount;
		
		//각 페이지의 시작 번호
		int no=totalCount-(currentPage-1)*perPage;
		
		//db 에서 필요한만큼 데이타 가져오기
		List<BoardDto> list=dao.getList(startNum, endNum);
		
		//각 게시물에 댓글 갯수 구하여 저장하기
		for(BoardDto dto:list)
		{
			System.out.println(answerDao.getTotalCount(dto.getNum()));
			dto.setAnswer(answerDao.getTotalCount(dto.getNum()));
		}

		model.addObject("totalCount",totalCount);
		model.addObject("startPage",startPage);
		model.addObject("endPage",endPage); 
		model.addObject("no",no);
		model.addObject("list",list);
		model.addObject("totalPage",totalPage);
		model.addObject("currentPage",currentPage);
		
		model.setViewName("/1/sample/samplelist");
		return model;
	}

}









