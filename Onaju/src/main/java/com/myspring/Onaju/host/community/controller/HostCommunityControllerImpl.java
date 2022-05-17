package com.myspring.Onaju.host.community.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.community.service.HostCommunityService;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;
import com.myspring.Onaju.host.vo.HostVO;
@Controller("hostCommunityController")
@RequestMapping(value = "/host/community")
public class HostCommunityControllerImpl extends BaseController implements HostCommunityController{
	
	private static final String CURR_IMAGE_REPO_PATH = "C:\\onaju\\host_community_image";

	@Autowired
	private HostCommunityVO hostCommunityVO;
	@Autowired
	private HostCommunityService hostCommunityService;
	
	/* 커뮤니티 글 등록시 첫번째 사업장 정보 나오는 페이지 */ 
	@RequestMapping(value="/cmnAticleForm1.do" ,method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView cmnAticleForm1(HttpServletRequest request, HttpServletResponse response)  throws Exception {
		 
		
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		
		HttpSession session = request.getSession(); 
		 HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		 System.out.println("hostVO의 VO : " + hostVO); 
		 String h_id = hostVO.getH_id();
		 System.out.println("h_id : " + h_id);
		 
		 List<HostCommunityVO> hostCommunityList = (List<HostCommunityVO>) hostCommunityService.selectCommunityList(h_id);
		 mav.addObject("hostCommunityList", hostCommunityList);
		 System.out.println("hostCommunityList####### " + hostCommunityList);
		return mav;
		
	}
	/* 커뮤니티 글 등록시 두번째 객실번호에 대한 정보 나오는 페이지 */ 
	@RequestMapping(value="/cmnAticleForm2.do" ,method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView cmnAticleForm2(@RequestParam("room_code") int room_code,
			                            HttpServletRequest request, HttpServletResponse response)  throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession(); 
		Map goodsMap=hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap",goodsMap);
		 System.out.println("goodsMap #####: " + goodsMap);
		String h_code=(String)request.getAttribute("h_code");
		
		 HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		 System.out.println("hostVO의 VO : " + hostVO); 
		 String h_id = hostVO.getH_id();
		 System.out.println("h_id : " + h_id);
		 
		return mav;
	}
	
	 
	/* 커뮤니티 글 등록시 디비 보내는 거 */

	@Override
	@RequestMapping(value = "/addNewCommunity.do", method={RequestMethod.GET,RequestMethod.POST})
	public ResponseEntity addNewCommunity(@ModelAttribute("hostCommunityVO") HostCommunityVO hostCommunityVO, MultipartHttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		String h_id = hostVO.getH_id();
		hostCommunityVO.setH_id(h_id);
		
		//이미지 업로드
		String src = request.getParameter("src");
		
        MultipartFile image = request.getFile("cmnImg");
        String path = "C:\\onaju\\host_community_image\\";

        String originFileName = image.getOriginalFilename(); // 원본 파일 명
        long fileSize = image.getSize(); // 파일 사이즈
        hostCommunityVO.setCmn_image(originFileName);
        System.out.println("originFileName : " + originFileName);
        System.out.println("fileSize : " + fileSize);

        String safeFile = path + originFileName;
        System.out.println("####safeFile : " + safeFile);
        image.transferTo(new File(safeFile));
  
        
		
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			hostCommunityService.addNewCommunity(hostCommunityVO);
			message = "<script>";
			message += " alert('커뮤니티 게시글 디비 저장 완료');";
			message += " location.href='" + request.getContextPath() + "/host/community/hostNewCommunityList.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('커뮤니티 게시글 디비 등록 실패');";
			message += " location.href='" + request.getContextPath() + "/host/main.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	
	/* 커뮤니티 리스트 목록 나오는 페이지 */ 
	@Override
	@RequestMapping(value="/hostAllCommunityList.do" , method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostAllCommunityList(HttpServletRequest request, HttpServletResponse response)  throws Exception {
		
		
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);
		
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id); 
		
		List<HostCommunityVO> hostAllCommunityList=(List<HostCommunityVO>)hostCommunityService.hostAllCommunityList(h_id);
		mav.addObject("hostAllCommunityList", hostAllCommunityList);
		System.out.println("hostAllCommunityList####### " + hostAllCommunityList);
		return mav;
	}
}