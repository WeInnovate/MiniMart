package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/AddCart")
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ViewCartServlet() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("html/text");
		PrintWriter out= response.getWriter();
		
		String viewitem=request.getParameter("name");
		System.out.println(viewitem);
		
		
	}

}
