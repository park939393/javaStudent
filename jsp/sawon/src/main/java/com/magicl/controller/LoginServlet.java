package com.magicl.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String lev = request.getParameter("lev");
		
	//	System.out.println(id + "," + pwd + "," + lev) ;
		String url=null;
	
		EmployeesDAO empDAO = EmployeesDAO.getInstance();
		int result = empDAO.userCheck(id, pwd, lev);

		// 관리자나 일반회원 인 경우
		if(result == 2 || result == 3){
			EmployeesVO emp = new EmployeesVO();
			emp = empDAO.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", emp);			
			session.setAttribute("result", result);			
			url = "main.jsp";				
		}else{
			url = "login.jsp";
			if(result == 1){
				request.setAttribute("message", "회원의 레벨이 불일치 합니다.");
			}else if(result == 0){			
				request.setAttribute("message", "비밀번호가 불일치 합니다.");
			}else{			
				request.setAttribute("message", "아이디가 불일치 합니다.");
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
