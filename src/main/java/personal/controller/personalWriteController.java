package personal.controller;

import javax.servlet.http.HttpServletRequest;

import personal.model.PersonalDao;
import personal.model.PersonalDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spring.util.SpringFileWriter;

@Controller
public class personalWriteController {
	@Autowired
	private PersonalDao myDao;
	
	@RequestMapping("/personal/personalwriteform.do")
	public String mysql_form()
	{
		return "/1/personal/personalwriteform";
	}
	
	@RequestMapping(value="/personal/upload.do",method=RequestMethod.POST)
	public String form_read(@ModelAttribute PersonalDto dto,HttpServletRequest request)
	{
		String path=request.getSession().getServletContext().getRealPath("/save");
		System.out.println(path);
		String filename="";
		if(dto.getUpfile()==null)
			filename="no";
		else{
			try{
				for(MultipartFile file:dto.getUpfile())
				{
					filename+=file.getOriginalFilename()+",";
				}
				//마지막 컴마 제거
				filename=filename.substring(0, filename.length()-1);
				
				//save 폴더에 파일 업로드
				SpringFileWriter fileWriter=new SpringFileWriter();
				fileWriter.writeFile(dto.getUpfile(), path);	
			}catch(Exception e)
			{
				System.out.println("에러:"+e.getMessage());
				filename="no";
			}
		}
		dto.setFilename(filename);	
		
		//db 에 insert
		myDao.insertMyboard(dto);
		
		return "redirect:list.do";
	}
	
	
	
	
	
	
}
