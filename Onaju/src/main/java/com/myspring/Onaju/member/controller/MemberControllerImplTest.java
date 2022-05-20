/**
 * 
 */
package com.myspring.Onaju.member.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.myspring.Onaju.member.service.MemberService;
import com.myspring.Onaju.member.vo.MemberVO;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class) //이 애노테이션을 붙여줘야 스프링 테스트를 Junit으로 돌릴 수 있음.
@WebAppConfiguration //이 애너테이션을 붙이면 Controller및 web환경에 사용되는 빈들을 자동으로 생성하여 등록하게됨.
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/mybatis-context.xml"

      })//빈 설정 파일로 사용한다는 의미.
public class MemberControllerImplTest {
	@Autowired
	private MemberService memberService;
	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	 * Test method for {@link com.myspring.Onaju.member.controller.MemberControllerImpl#idFind(java.util.Map, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)}.
	 * @throws Exception 
	 */
	@Test
	public void testIdFind() throws Exception  {
		Map <String,String> loginMap =new HashMap<String,String>();
		loginMap.put("u_name", "이다민");
		loginMap.put("u_phone", "01035628120");
		loginMap.put("u_email1", "dmrhe");
		loginMap.put("u_email2", "naver.com");
		
		MemberVO idFind =memberService.idFind(loginMap);
		String u_id=idFind.getU_id();
			assertEquals("dlekals28", u_id);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@" + u_id);
	

}
}
