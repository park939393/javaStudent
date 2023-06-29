package com.magicl.controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;
@WebServlet("/delete.do")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		EmployeesVO emp=(EmployeesVO) session.getAttribute("loginUser");	
		if(emp != null){
			String url="delete.jsp";
		
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}else{
			response.sendRedirect("login.do");
		}
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	
		
		EmployeesVO member = new EmployeesVO();
		member.setId(request.getParameter("id"));
		
		
		
	
		EmployeesDAO eDao = EmployeesDAO.getInstance();
		eDao.updateMember(member);

		
		EmployeesVO emp = eDao.getMember(member.getId());
		
		request.setAttribute("member", emp);
		request.setAttribute("message", "사원이 삭제 되었습니다.");
				
		
		
		
		int result = eDao.userDelete(member);
		
		
		String url="delete.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);		
	}
}

