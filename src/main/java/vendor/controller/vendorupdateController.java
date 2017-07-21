package vendor.controller;

import vendor.model.VendorDao;
import vendor.model.VendorDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class vendorupdateController {
	
	@Autowired
	private VendorDao mydao;
	
	
	@RequestMapping("/vendor/vendorboardupdatepassform.do")
	public ModelAndView updateform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/vendor/vendorboardupdatepass");
		return model;
	}
	
	
	
	
	
	@RequestMapping(value="/vendor/vendorboardupdatepass.do", method=RequestMethod.POST)
	public String update(
			
			@ModelAttribute VendorDto dto,
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




