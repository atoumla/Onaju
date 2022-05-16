package com.myspring.Onaju.cart.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.cart.service.CartService;
import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.member.vo.MemberVO;



@Controller("cartController")
@RequestMapping(value = "/cart")
public class CartControllerImpl extends BaseController implements CartController{
	@Autowired
	private CartService cartService;
	
	@Autowired
	private CartVO cartVO;
	
	@Override
	@RequestMapping(value = "/addCart.do", method = {RequestMethod.POST,  RequestMethod.GET})
	public ModelAndView addCart(@RequestParam Map<String, String> receiverMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("애드 카트 들어옴");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		String checkIndate_ = receiverMap.get("checkIn_date");
		System.out.println(checkIndate_);
		String isLogOn = (String) session.getAttribute("isLogOn");
		String action = (String) session.getAttribute("action");
		if (isLogOn == null) {     // 로그인 정보가 없을 때 로그인 창으로 장바구니 정보 들고감

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			String checkIndate = receiverMap.get("checkIn_date");
			Date checkIn = formatter.parse(checkIndate);
			String checkoutdate = receiverMap.get("checkOut_date");
			Date checkout = formatter.parse(checkoutdate);

			String room_code = receiverMap.get("room_code");
			int people_count = Integer.parseInt(receiverMap.get("people_count"));
			int room_fee = Integer.parseInt(receiverMap.get("room_fee"));
			int checkDate = Integer.parseInt(receiverMap.get("checkDate"));
			int total = room_fee * checkDate;
			String h_code = receiverMap.get("h_code");
			cartVO.setH_code(h_code);
			cartVO.setTotal(total);
			cartVO.setPeople_count(people_count);
			cartVO.setRoom_fee(room_fee);
			cartVO.setRoom_code(room_code);
			cartVO.setCheckIn_date(checkIn);
			cartVO.setCheckOut_date(checkout);
			session.setAttribute("cartVO", cartVO);
			session.setAttribute("action", "/cart/addCart.do");
			return new ModelAndView("redirect:/member/loginForm.do");
		} else {     // 회원 / 비회원 로그인 후 돌아옴
			if (action != null && action.equals("/cart/addCart.do")) {
				CartVO _cart = (CartVO) session.getAttribute("cartVO");
				mav.addObject("cartVO", _cart);

				session.removeAttribute("cartVO");
				session.removeAttribute("action");
			} else {    // 회원 일시 수행
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				String checkIndate = receiverMap.get("checkIn_date");
				Date checkIn = formatter.parse(checkIndate);
				String checkoutdate = receiverMap.get("checkOut_date");
				Date checkout = formatter.parse(checkoutdate);
				System.out.println(checkIn);
				String room_code = receiverMap.get("room_code");
				int people_count = Integer.parseInt(receiverMap.get("people_count"));
				int room_fee = Integer.parseInt(receiverMap.get("room_fee"));
				int checkDate = Integer.parseInt(receiverMap.get("checkDate"));
				int total = room_fee * checkDate;
				String h_code = receiverMap.get("h_code");
				cartVO.setH_code(h_code);

				cartVO.setTotal(total);
				cartVO.setPeople_count(people_count);
				cartVO.setRoom_fee(room_fee);
				cartVO.setRoom_code(room_code);
				cartVO.setCheckIn_date(checkIn);
				cartVO.setCheckOut_date(checkout);
				mav.addObject("cartVO", cartVO);
				System.out.println("액션 널");
			}
		}

		MemberVO memberInfo = (MemberVO) session.getAttribute("memberInfo");
		MemberVO nonmemberInfo = (MemberVO) session.getAttribute("nonmemberInfo");

		if (memberInfo != null) {
			cartVO.setU_id(memberInfo.getU_id());
		} else if (nonmemberInfo != null) {
			System.out.println("비회원 주문 성공");

		} else {
			System.out.println("안들어가짐; 주문 성공");

		}
		
		
		
		cartService.addCart(cartVO);
		String room_code = receiverMap.get("room_code");
		mav.addObject("room_code", room_code);
		mav.setViewName("redirect:/host/goods/goodsDetail.do");
		return mav;
		
	}
	@Override
	@RequestMapping(value="/removeCart.do" ,method = RequestMethod.POST)
	public ModelAndView removeCart(@RequestParam("cart_id") int cart_id,
			                          HttpServletRequest request, HttpServletResponse response)  throws Exception{
		ModelAndView mav=new ModelAndView();
		cartService.removeCartGoods(cart_id);
		mav.setViewName("redirect:/cart/myCartList.do");
		return mav;
	}

}
