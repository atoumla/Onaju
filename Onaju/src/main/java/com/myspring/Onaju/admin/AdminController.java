package com.myspring.Onaju.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller("adminController")
@EnableAspectJAutoProxy
public class AdminController {

	@RequestMapping(value= "/admin/main.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView Adminmain(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session;
		ModelAndView mav=new ModelAndView();
		String viewName=(String)request.getAttribute("viewName");
		String isLogOn = request.getParameter("isLogOn");
		System.out.println("isLogon��"+isLogOn);		
		mav.addObject("isLogOn", isLogOn);
		mav.setViewName(viewName);

		return mav;
	}


}
