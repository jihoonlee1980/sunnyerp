package company.controller;

import java.sql.Timestamp;
import java.util.List;



import company.model.CompanyDao;
import company.model.CompanyDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class companyContentController {
	@Autowired
	private CompanyDao myDao;
	
	
	
	@RequestMapping("/company/content.do")
	public ModelAndView view(@RequestParam int num,
			
			@RequestParam(value="pageNum",defaultValue="1") String pageNum,
			
			@RequestParam(value="key",defaultValue="none") String key,
			@RequestParam(value="aPage",defaultValue="1") int aPage)
	
	{
		
		
		//key 가 lst 면 조회수 증가
				if(key.equals("lst"))//목록에서 내용보기 할 경우에만 증가
					myDao.updateReadcount(num);
		 
		ModelAndView model=new ModelAndView();
		CompanyDto dto=myDao.getData(num);
		
		
		
		int num1=dto.getNum();
		//System.out.println(seq);
		
		

		
		String m_nick = myDao.getNick(num);
		
		model.addObject("m_nick", m_nick);	
	
		model.addObject("dto",dto);

		model.addObject("myadto", myDao);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/company/companycontent");
		
		
		return model;
		
		
		//System.out.println(m_nick);
		
		/*model.addObject("m_nick", m_nick);	
		model.addObject("dto",dto);
		model.addObject("list",list);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/myboard/content");*/
		
	}
}
     




