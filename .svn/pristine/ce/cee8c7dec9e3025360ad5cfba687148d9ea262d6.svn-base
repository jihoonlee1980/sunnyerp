package community.controller;



import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import community.model.ComuDAO;
import community.model.ComuDTO;

@Controller
public class CommunityController {

		@Autowired
		private ComuDAO cdao;
	
		@RequestMapping("comuform.do")
		public String goComuForm(){
			return "/1/community/comuform";
		}
		
		/*@RequestMapping("/communitylist.do")
		public String community(){
			return "/1/community/comulist";
		}*/
		
		//community 글쓰기
		@RequestMapping("/comuupload.do")
		public String community(
				@ModelAttribute ComuDTO cdto,
				@RequestParam String b_title,
				@RequestParam String b_content,
				@RequestParam String m_id,
				@RequestParam(value="pageNum",defaultValue="1") String pageNum)
		{
			//ModelAndView model = new ModelAndView();
			//System.out.println(m_id);
			
			//member에서 seq 받아와서 넣어주기
			cdto.setSeq(cdao.selectseq(m_id));
			//System.out.println(cdao.selectseq(m_id));
			
			cdto.setB_title(b_title);
			cdto.setB_content(b_content);
			
			//db 에 insert
			cdao.insertCommunity(cdto);
			
			//맥스 시퀀스값 가져오기
			int b_seq= cdao.getSeqBoard();
			//System.out.println(b_seq);
			
			//우선 리스트로 보내고 나중에 content로 고치기
			//model.setViewName("/1/community/comucontent");
			
			return "redirect:comucontent.do?b_seq="+b_seq+"&pageNum="+pageNum;
			
			
		}
		
	
}
