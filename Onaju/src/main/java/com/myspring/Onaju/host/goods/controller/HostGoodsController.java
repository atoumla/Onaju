package com.myspring.Onaju.host.goods.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.host.goods.vo.HostInfoVO;

public interface HostGoodsController {
	public ModelAndView goodsDetail(@RequestParam("room_code") String room_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
	
	/* 이정아 작성 */
	
	
	
	public ResponseEntity  addHostInfo(@ModelAttribute("hostInfoVO") HostInfoVO h_hostInfoVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	public ModelAndView hostInfoForm (HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView addNewGoods(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception;

	public void addNewGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception;
	public ModelAndView searchGoodsMap(@RequestParam Map<String, String> searchMap, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
