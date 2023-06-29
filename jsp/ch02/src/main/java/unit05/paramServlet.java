package unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paramServlet
 */
@WebServlet("/ParamServlet")
public class paramServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paramServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		String content = request.getParameter("content");
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("당신이 입력한 정보는 <br>");
		out.print("아이디 : " + id + "<br>");
		out.print("나 이 : " + age + "<br>");
		out.print("성 별 : " + gender + "<br>");
		out.print("메일 수신 여부 : " + chk_mail + "<br>");
		
		out.print("자 기 소개: " + content + "<br>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		String content = request.getParameter("content");
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("당신이 입력한 정보는 <br>");
		out.print("아이디 : " + id + "<br>");
		out.print("나 이 : " + age + "<br>");
		out.print("성 별 : " + gender + "<br>");
		out.print("메일 수신 여부 : " + chk_mail + "<br>");
		
		out.print("자 기 소개: " + content + "<br>");
	}

}
