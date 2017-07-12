package login.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import login.model.LoginDAO;
import main_beom.model.main_jakgokDTO;
import main_beom.model.main_jaksaDTO;
import mypage.model.MyPageDAO;

@SessionAttributes("m_id")
@Controller
public class LoginController {
	
	@Autowired
	private MyPageDAO mypagedao;
	
	@Autowired
	private LoginDAO logindao;
	
	@RequestMapping("/loginform.do")
	public String goLoginForm(){
		
		return "/1/login/loginForm";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView goLogin(
			@RequestParam String m_id,
			@RequestParam String m_pass,
			@RequestParam String m_level,
			HttpSession session
			){
		System.out.println("m_id:"+m_id);
		System.out.println("m_level:"+m_level);
		
		ModelAndView view = new ModelAndView();
		boolean loginCheck = logindao.loginCheck(m_id, m_pass, m_level);
		if(loginCheck == true){
			String m_nick = logindao.searchNick(m_id);
			session.setAttribute("m_nick", m_nick);
			session.setAttribute("m_id_", m_id);
			session.setAttribute("m_level", m_level);
			view.setViewName("/1/erp/body1");
//			view.setViewName("redirect:main.do");
		}else{
			view.setViewName("/1/login/loginfail");
		}
		return view;
	}
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session){
		session.removeAttribute("m_nick");
		session.removeAttribute("m_id_");
		session.removeAttribute("m_level");
		ModelAndView view = new ModelAndView();
		view.setViewName("/1/login/loginForm");
		/*view.setViewName("redirect:main.do");*/
		return view;
	}
	
	@RequestMapping("/myPageForm.do")
	public String goMyPage(
			HttpSession session,
			Model model
			){
		String m_id = (String)session.getAttribute("m_id_");
		String m_profile = mypagedao.getProfile(m_id);
//		System.out.println(m_profile);
		
		// 내 작곡 리스트 갯수
		int composeCount = mypagedao.getMyComposeCount(m_id);
		model.addAttribute("composeCount", composeCount);
		
		// 내 작곡 리스트
		List<main_jakgokDTO> composeList = mypagedao.getMyCompose(m_id);
		model.addAttribute("composeList", composeList);
		
		// m_id의 seq얻기
		int num = mypagedao.getSeq(m_id);
		
		// 내 작사 리스트 갯수
		int lyricCount = mypagedao.getMyLyricCount(num);
		model.addAttribute("lyricCount", lyricCount);
		
		// 내 작사 리스트
		List<main_jaksaDTO> lyricList = mypagedao.getMyLyric(num);
		model.addAttribute("lyricList", lyricList);
		
		model.addAttribute("m_profile",m_profile);
		return "/1/login/myPageForm";
	}
}

