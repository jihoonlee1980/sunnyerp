package join.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import join.model.JoinDAO;
import join.model.JoinDTO;

@Controller
public class JoinController {
	
	@Autowired
	private JoinDAO joinDAO;
	
	@RequestMapping("/joinForm.do")
	public String goJoinForm(){
		return "/1/join/joinForm";
	}
	
	@RequestMapping("/idCheckForm.do")
	public ModelAndView checkIdForm(
			@RequestParam(value="m_id", defaultValue="none") String m_id
			){
		
		ModelAndView model=new ModelAndView();
		
		model.addObject("m_id",m_id);
		model.setViewName("/pop/join/idCheckForm");
		return model;
		
	}
	
	@RequestMapping("/idCheck.do")
	public ModelAndView checkId(
			@RequestParam(value="m_id", defaultValue="none") String m_id
			){
		
		ModelAndView model=new ModelAndView();
		model.addObject("m_id", m_id);
		
		boolean idCheck = joinDAO.getIdCheck(m_id);
		if(idCheck == true){
			model.setViewName("/pop/join/idCheckFail");
		}else{
			model.setViewName("/pop/join/idCheckSuccess");
		}
		return model;
		
	}
	
	@RequestMapping("/nickCheckForm.do")
	public ModelAndView checkNickForm(
			@RequestParam(value="m_nick", defaultValue="none") String m_nick
			){
		
		ModelAndView model=new ModelAndView();
		
		model.addObject("m_nick",m_nick);
		model.setViewName("/pop/join/nickCheckForm");
		return model;
		
	}
	
	@RequestMapping("/nickCheck.do")
	public ModelAndView checkNick(
			@RequestParam(value="m_nick", defaultValue="none") String m_nick
			){
		
		ModelAndView model=new ModelAndView();
		model.addObject("m_nick", m_nick);
		
		boolean nickCheck = joinDAO.getNickCheck(m_nick);
		if(nickCheck == true){
			model.setViewName("/pop/join/nickCheckFail");
		}else{
			model.setViewName("/pop/join/nickCheckSuccess");
		}
		return model;
		
	}
	
	@RequestMapping("/join.do")
	public ModelAndView join(
			@ModelAttribute JoinDTO joindto,
			@RequestParam String m_nick,
			@RequestParam String m_id,
			@RequestParam String m_pass
			){
		ModelAndView model = new ModelAndView();
		
		joindto.setM_id(m_id);
		joindto.setM_nick(m_nick);
		joindto.setM_pass(m_pass);
		
		joinDAO.insertMember(joindto);
		model.setViewName("/1/join/joinSuccess");
		return model;
	}
}
