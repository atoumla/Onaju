package com.myspring.Onaju.host.goods.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.goods.service.HostGoodsService;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;

@Controller("hostGoodsController")
@RequestMapping(value = "/host/goods")
public class HostGoodsControllerImpl extends BaseController implements HostGoodsController {

	private static final String CURR_IMAGE_REPO_PATH = "C:\\onaju\\host_room_image";

	@Autowired
	private HostGoodsService hostGoodsService;


	@RequestMapping(value = "/goodsDetail.do", method = RequestMethod.GET)
	public ModelAndView goodsDetail(@RequestParam("room_code") String room_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("룸코드"+room_code);
		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		Map goodsMap = hostGoodsService.goodsDetail(room_code);
		ModelAndView mav = new ModelAndView(viewName);
		/* List<ReviewVO> reviewList = reviewService.listReview(goods_id); */
		/* mav.addObject("reviewsList",reviewList); */
		mav.addObject("goodsMap", goodsMap);
		HostGoodsVO hostgoodsVO = (HostGoodsVO) goodsMap.get("goodsVO");
		System.out.println(goodsMap);
		return mav;
	}

	private void addGoodsInQuick(String room_code, HostGoodsVO hostgoodsVO, HttpSession session) {
		boolean already_existed = false;
		List<HostGoodsVO> quickGoodsList; // �ֱ� �� ��ǰ ���� ArrayList
		quickGoodsList = (ArrayList<HostGoodsVO>) session.getAttribute("quickGoodsList");

		if (quickGoodsList != null) {
			if (quickGoodsList.size() < 4) { // �̸��� ��ǰ ����Ʈ�� ��ǰ������ ���� ������ ���
				for (int i = 0; i < quickGoodsList.size(); i++) {
					HostGoodsVO _goodsBean = (HostGoodsVO) quickGoodsList.get(i);
					if (room_code.equals(_goodsBean.getRoom_code())) {
						already_existed = true;
						break;
					}
				}
				if (already_existed == false) {
					quickGoodsList.add(hostgoodsVO);
				}
			}

		} else {
			quickGoodsList = new ArrayList<HostGoodsVO>();
			quickGoodsList.add(hostgoodsVO);

		}
		session.setAttribute("quickGoodsList", quickGoodsList);
		session.setAttribute("quickGoodsListNum", quickGoodsList.size());
	}

	/* 이정아 작성 */
	
	//사업장 등록 페이지//
	@Override
	@RequestMapping(value = "/addHostInfo.do", method = RequestMethod.POST)
	public ResponseEntity addHostInfo(@ModelAttribute("hostInfoVO") HostInfoVO hostInfoVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		String h_id = hostVO.getH_id();
		hostInfoVO.setH_id(h_id);
		
		
		/*
		 * HttpSession session1 = request.getSession();
		 * session1.setAttribute("h_hostInfoVO",hostInfoVO); //추가해봄
		 * System.out.println("사업자 등록 페이지의 h_hostInfoVO : " + hostInfoVO); // 나옴
		 * 
		 * System.out.println("h_id" + h_id);
		 */
		

		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			hostGoodsService.addHostInfo(hostInfoVO);
			message = "<script>";
			message += " alert('사업자 등록 완료 목록 전환으로 변경할 것');";
			message += " location.href='" + request.getContextPath() + "/host/goods/hostInfoForm.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('사업자 등록 실패');";
			message += " location.href='" + request.getContextPath() + "/host/main.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	

	/* 상품 등록시 나오는 페이지 */ 
	@RequestMapping(value = "/addNewGoodsForm.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostInfoForm (HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String _h_id = hostVO.getH_id();
		System.out.println("_h_id : " + _h_id);	//여기까지 값 들어옴 
		
		
		List<HostInfoVO> hostInfoFormList = hostGoodsService.hostInfoFormlist(_h_id);			
		mav.addObject("hostInfoFormList", hostInfoFormList); //출력 잘됨 (왜죠?)
		return mav;
		
		
	}
	@Override
	@RequestMapping(value= "/searchGoodsMap.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView searchGoodsMap(@RequestParam Map<String, String> searchMap, HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("메서드 진입");

		HttpSession session;
		ModelAndView mav=new ModelAndView();
		String viewName=(String)request.getAttribute("viewName");
		System.out.println("뷰네임");

		Map<String,List<HostGoodsVO>> hostgoodsMap= hostGoodsService.listGoods(searchMap);
		System.out.println("서비스 끝");

		mav.addObject("hostgoodsMap", hostgoodsMap);
		System.out.println(hostgoodsMap);
		mav.setViewName(viewName);

		return mav;
	}
	
	@RequestMapping(value = "/addNewGoods.do", method = { RequestMethod.POST })
	public ModelAndView addNewGoods(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String imageFileName = null;
		String viewName=(String)multipartRequest.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		/*
		 * String h_code = request.getParameter("h_code");
		 * System.out.println("h_code   :  "+ h_code );
		 */
		
		Map newGoodsMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			newGoodsMap.put(name, value);
		}

		HttpSession session = multipartRequest.getSession();
		
		int h_code = Integer.parseInt((String) newGoodsMap.get("h_code"));
		
	

	
		
		
		List<HostImageFileVO> imageFileList = upload(multipartRequest);
		if (imageFileList != null && imageFileList.size() != 0) {
			for (HostImageFileVO imageFileVO : imageFileList) {
				imageFileVO.setH_code(h_code);
			}
			newGoodsMap.put("imageFileList", imageFileList);
		}

		String message = null;
		
	
	
		try {
			int room_code = hostGoodsService.addNewGoods(newGoodsMap);
			
			  if (imageFileList != null && imageFileList.size() != 0) { 
				  for(HostImageFileVO imageFileVO : imageFileList) { 
					  imageFileName = imageFileVO.getRoom_imageName();
			  File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName); 
			  File destDir = new File(CURR_IMAGE_REPO_PATH + "\\" + room_code);
			  FileUtils.moveFileToDirectory(srcFile, destDir, true); } }
			 
			message = "객실 등록 완료";
			
		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			message= "실패";
		
			e.printStackTrace();
		}
		mav.addObject("message", message);
		System.out.println(message);
		mav.setViewName("forward:/host/goods/addNewGoodsForm.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/addNewGoodsImage.do", method = { RequestMethod.POST })
	public void addNewGoodsImage(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		System.out.println("addNewGoodsImage");
		multipartRequest.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String imageFileName = null;

		Map goodsMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			goodsMap.put(name, value);
		}

		HttpSession session = multipartRequest.getSession();
		HostInfoVO hostVO = (HostInfoVO) session.getAttribute("h_hostInfo");
		int h_id = hostVO.getH_code();

		List<HostImageFileVO> imageFileList = null;
		int room_code = 0;
		try {
			imageFileList = upload(multipartRequest);
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					room_code = Integer.parseInt((String) goodsMap.get("room_code"));
					imageFileVO.setRoom_code(room_code);
					imageFileVO.setH_code(h_id);
				}

				hostGoodsService.addNewGoodsImage(imageFileList);
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(CURR_IMAGE_REPO_PATH + "\\" + room_code);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}
		} catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (HostImageFileVO imageFileVO : imageFileList) {
					imageFileName = imageFileVO.getRoom_imageName();
					File srcFile = new File(CURR_IMAGE_REPO_PATH + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
	}

}