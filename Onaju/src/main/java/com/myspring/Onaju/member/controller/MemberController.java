package com.myspring.Onaju.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.member.vo.MemberVO;


public interface MemberController {
	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView uploadProfile( MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	public ModelAndView nonLogin(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity  addMember(@ModelAttribute("member") MemberVO member,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity overlapped(@RequestParam("id") String id) throws Exception;
	public ModelAndView idFind(@RequestParam Map<String, String> loginMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception; 
	public ModelAndView pwdFind(@RequestParam Map<String, String> loginMap,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView pwdChange(@RequestParam Map<String, String> loginMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String auth_code) throws Exception;
	public String kakaoLogout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
