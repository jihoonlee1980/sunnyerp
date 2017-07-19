package mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import mypage.model.MypageDao;
import mypage.model.MypageDto;
import spring.util.SpringFileWriter;

@Controller
public class MyPageController {
	
	@Autowired
	private MypageDao mypageDao;
	
	@RequestMapping(value="/editProfileImage.do", method=RequestMethod.POST)
	public ModelAndView editFrofileImage(
			@ModelAttribute MypageDto mypageDto,
			HttpSession session,
			HttpServletRequest request
			){
		ModelAndView model = new ModelAndView();
		String path=request.getSession().getServletContext().getRealPath("/profileImage");
		/*String m_profile = mypageDto.getUpfile().getOriginalFilename();*/
		
		SpringFileWriter fileWriter = new SpringFileWriter();/*
		

		/*String m_id = (String)session.getAttribute("m_id_");
		if(m_profile.equals("")){
			m_profile = "none";
		}
		mypageDto.setM_profile(m_profile);
		mypageDto.setM_id(m_id);*/
	
		
		model.setViewName("redirect:myPageForm.do");
		
		return model;
	}
}
