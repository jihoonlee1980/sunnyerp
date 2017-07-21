package vendor.controller;

import vendor.model.VendorDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class vendordeleteController {
	
	@Autowired
	private VendorDao mydao;
	
	
	@RequestMapping("/vendor/vendorboarddeletepassform.do")
	public ModelAndView delform(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		ModelAndView model=new ModelAndView();
		model.addObject("num",num);
		model.addObject("pageNum",pageNum);
		model.setViewName("/1/vendor/vendorboarddeletepass");
		return model;
	}
	
	@RequestMapping("/vendor/vendorboarddeletepass.do")
	public String delete(
			@RequestParam int num,
			@RequestParam String pageNum
			)
	{
		//삭제
		mydao.deleteBoard(num);
		return "redirect:list.do?pageNum="+pageNum;
		
		
	}
}
