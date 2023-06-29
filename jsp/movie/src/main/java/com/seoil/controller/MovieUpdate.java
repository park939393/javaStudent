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
 * Servlet implementation class MovieUpdate
 */
@WebServlet("/movieupdate.do")
public class MovieUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "movie\\movieUpdate.jsp";
		String code = request.getParameter("code");
		
		MovieDAO movieDAO = MovieDAO.getInstance();
		MovieVO mVo = movieDAO.selectmovieByCode(code);
		request.setAttribute("movie", mVo);
		
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
		
		MovieVO mVO = new MovieVO();
		mVO.setCode(Integer.parseInt(multi.getParameter("code")));
		mVO.setTitle(multi.getParameter("mtitle"));
		mVO.setPrice(Integer.parseInt(multi.getParameter("price")));
		mVO.setDirector(multi.getParameter("director"));
		mVO.setActor(multi.getParameter("actor"));
		mVO.setSynopsis(multi.getParameter("synopsis"));
		if(multi.getFilesystemName("poster") == null){
			mVO.setPoster(multi.getParameter("nonmakeImg"));
		}else{
			mVO.setPoster(multi.getFilesystemName("poster"));
		}
		
		MovieDAO productDAO = MovieDAO.getInstance();
		productDAO.updateMovie(mVO);
		response.sendRedirect("movieList.do");
	}

		
	}


