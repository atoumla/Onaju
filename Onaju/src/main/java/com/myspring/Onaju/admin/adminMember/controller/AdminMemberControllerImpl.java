package com.myspring.Onaju.admin.adminMember.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.myspring.Onaju.admin.adminMember.service.AdminMemberService;
import com.myspring.Onaju.member.controller.MemberControllerImpl;
import com.myspring.Onaju.member.vo.MemberVO;

@Controller("adminMemberController")
public class AdminMemberControllerImpl implements AdminMemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private AdminMemberService adminMemberService;
	@Autowired
	private MemberVO memberVO;
	
	@Override
	@RequestMapping(value="/admin/memberList.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listMembers(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");
		logger.info("viewName: "+ viewName);
		logger.debug("viewName: "+ viewName);
		int total = adminMemberService.memberListTotal(vo);
		//(double)12/10 -> ceil 1.2 -> Integer(2.0) ->2
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = vo.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		vo.setStartNO(startNO);
		vo.setEndNO(endNO);
		
		
		List<MemberVO> membersList = adminMemberService.listMembers(vo);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("membersList", membersList);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberDetail.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberDetail(String u_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value="/admin/memberModify.do" ,method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberModifyForm(String u_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		memberVO = adminMemberService.memberDetail(u_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberVO",memberVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/memberUpdate.do", method = RequestMethod.POST)
	public ModelAndView memberUpdate(MemberVO vo) throws Exception {
		int result = adminMemberService.memberUpdate(vo);
		ModelAndView mav = new ModelAndView();
		if(result == 1) {
			memberVO = adminMemberService.memberDetail(vo.getU_id());
			String u_id = memberVO.getU_id();
			mav.addObject("memberVO", memberVO);
			mav.setView(new RedirectView("/member/memberDetail.do?u_id="+u_id,true));
		}else {
			System.out.println("변경실패");
		}
		return mav;
	}
}
