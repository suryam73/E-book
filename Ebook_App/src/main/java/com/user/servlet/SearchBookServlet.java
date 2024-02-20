package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serchBox")
public class SearchBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		String ch=req.getParameter("ch");
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
