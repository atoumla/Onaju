package com.myspring.Onaju.admin.adminMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberController {
	public ModelAndView listMembers(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberDetail(String u_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberModifyForm(String u_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView memberUpdate(@ModelAttribute MemberVO vo) throws Exception;
}
