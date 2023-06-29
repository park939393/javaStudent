package com.seoil.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.seoil.dao.MovieDAO;
import com.seoil.dto.MovieVO;

/**
 * Servlet implementation class MovieWrite
 */
@WebServlet("/moviewrite.do")
public class MovieWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieWrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "movie/movieWrite.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ServletContext context = getServletContext();
		String path = context.getRealPath("images");
		String encType ="UTF-8";
		int sizeLimit = 5 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		String mtitle = multi.getParameter("mtitle");
		String director = multi.getParameter("director");
		String actor = multi.getParameter("actor");
		int price = Integer.parseInt(multi.getParameter("price"));
		String synopsis = multi.getParameter("synopsis");
		String poster = multi.getFilesystemName("poster");
	
		MovieVO mVo = new MovieVO();
		
		
		mVo.setTitle(mtitle);
		mVo.setDirector(director);
		mVo.setActor(actor);
		mVo.setPrice(price);
		mVo.setSynopsis(synopsis);
		mVo.setPoster(poster);
		MovieDAO mDao = MovieDAO.getInstance();
		System.out.println(mVo);
		mDao.insertMovie(mVo);
		response.sendRedirect("movieList.do");
		
	}

}
