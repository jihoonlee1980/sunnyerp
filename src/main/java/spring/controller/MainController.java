package spring.controller;

import java.util.List;

import main_beom.model.main_jakgokDAO;
import main_beom.model.main_jakgokDTO;
import main_beom.model.main_jaksaDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@Autowired
	private main_jakgokDAO dao;
	
	@RequestMapping("/main.do")
	public ModelAndView goMain()
	{	
	
		ModelAndView model = new ModelAndView();
		List<main_jakgokDTO> list = dao.main_selectDataOfBoard();
		List<main_jaksaDTO> jaksa_list = dao.main_selectJaksaOfBoard();
		
		model.addObject("list",list);
		model.addObject("jaksa_list", jaksa_list);
		model.setViewName("main.tiles");
		return model;
	}
}
