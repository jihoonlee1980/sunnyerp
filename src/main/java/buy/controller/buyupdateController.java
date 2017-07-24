package buy.controller;

import buy.model.BuyDao;
import buy.model.BuyDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class buyupdateController {
	
	@Autowired
	private BuyDao mydao;
	
	
	@RequestMapping("/buy/buyboardupdatepassform.do")
	public ModelAndView updateform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/buy/buyboardupdatepass");
		return model;
	}
	
	
	
	
	
	@RequestMapping(value="/buy/buyboardupdatepass.do", method=RequestMethod.POST)
	public String update(
			
			@ModelAttribute BuyDto dto,
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




