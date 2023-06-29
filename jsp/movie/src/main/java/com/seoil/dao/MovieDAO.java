package com.seoil.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.seoil.dto.MovieVO;

import util.DBManager;




public class MovieDAO {
	private MovieDAO() {
		super();
	}
	public static void setInstance(MovieDAO instance) {
		MovieDAO.instance = instance;
	
	}
	
	private static MovieDAO instance = new MovieDAO();
	
	public static MovieDAO getInstance() {
		return instance;
	}
	
	public ArrayList<MovieVO> selectAllMovie(){
		String sql = "SELECT *FROM MOVIE ORDER BY code DESC";
		ArrayList<MovieVO> productList = new ArrayList<MovieVO>();
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DBManager.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				MovieVO mvo = new MovieVO();
				mvo.setCode(rs.getInt("code"));
				mvo.setTitle(rs.getString("title"));
				mvo.setPrice(rs.getInt("price"));
				mvo.setDirector(rs.getString("director"));
				mvo.setActor(rs.getString("actor"));
				mvo.setPoster(rs.getString("poster"));
				mvo.setSynopsis(rs.getString("synopsis"));
				productList.add(mvo);
			}
			
			
		}catch (Exception e) {
			
		}finally {
			util.DBManager.close(rs, psmt, conn);
		}
		return productList;
	}
	
	  public void insertMovie(MovieVO mVo) {
		   
		   String sql = "insert into movie values(Movie_seq.nextval, ?,?,?,?,?,?)";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   
		   try {
			   conn =DBManager.getConnection();
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, mVo.getTitle());
			   pstmt.setInt(2, mVo.getPrice());
			   pstmt.setString(3, mVo.getDirector());
			   pstmt.setString(4, mVo.getActor());
			   pstmt.setString(5, mVo.getPoster());
			   pstmt.setString(6, mVo.getSynopsis());
			   pstmt.executeUpdate();
			   
			} catch (Exception e) {
				e.printStackTrace();
			
		}finally {
			DBManager.close(pstmt, conn);
		}
	  }
	  
	  public MovieVO selectmovieByCode(String code) {
		  String sql = "select * from movie where code=?";
		   MovieVO mVo =null;
		   
		   try {
			   Connection conn =null;
			   PreparedStatement pstmt = null;
			   ResultSet rs = null;
		   try {
			   conn =DBManager.getConnection();
			   pstmt =conn.prepareStatement(sql);
			   pstmt.setString(1, code);
			   rs=pstmt.executeQuery();
			  if(rs.next()){
				  mVo = new MovieVO();
				  mVo.setCode(rs.getInt("code"));
				  mVo.setTitle(rs.getString("title"));
				  mVo.setPrice(rs.getInt("price"));
				  mVo.setDirector(rs.getString("director"));
				  mVo.setActor(rs.getString("actor"));
				  mVo.setPoster(rs.getString("poster"));
				  mVo.setSynopsis(rs.getString("synopsis"));
		   }
			   
		   }catch (Exception e) {
			   e.printStackTrace();
		}finally {
			DBManager.close(rs, pstmt, conn);
		}
		   
	  }catch (Exception e) {
		  e.printStackTrace();
	}
		   return mVo;
	  }
	  
	  public void deleteMovie(String code) {
		   String sql = "delete movie where code=?";
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   try {
			   conn = DBManager.getConnection();
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, code);
			   pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(pstmt, conn);
		}
	   }
	  
	  public void updateMovie(MovieVO mVo) {
		  String sql = "update movie set title=?, price=?, director=?, actor=?, poster=?, synopsis=? where code=?";
		  Connection conn =null;
		  PreparedStatement pstmt =null;
		  try {
			  conn =DBManager.getConnection();
			  	
			   pstmt = conn.prepareStatement(sql);
			   System.out.println(mVo.getSynopsis());
			   System.out.println(mVo.getCode());
			   pstmt.setString(1, mVo.getTitle());
			   pstmt.setInt(2, mVo.getPrice());
			   pstmt.setString(3, mVo.getDirector());
			   pstmt.setString(4, mVo.getActor());
			   pstmt.setString(5, mVo.getPoster());
			   pstmt.setString(6, mVo.getSynopsis());
			   pstmt.setInt(7, mVo.getCode());
			   
			   pstmt.executeUpdate();
			  
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(pstmt, conn);
		}
		  
	  }
}