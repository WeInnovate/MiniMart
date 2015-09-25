package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import login.UserLogin;
import userPojo.User;
import userPojo.UserDAO;


//@WebServlet(name = "LoginServlet", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
        
    }

	
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		           response.setContentType("text/html");
		           PrintWriter out=response.getWriter();
		           
		           String username=request.getParameter("username");
		           String password=request.getParameter("password");
		           
		           System.out.println(username+" "+password);
		           
		           UserLogin ul2=new UserLogin();
		           ul2.setUserName(username);
		           ul2.setPassword(password);
		           
		           boolean ul3=(new UserDAO()).checkLogin(ul2);
		           
		           if(ul3){
		        	   User da=(new UserDAO()).fatch(username);
		        	   System.out.println(da);
		        	   request.setAttribute("abc",ul2.getUserName());
				         request.setAttribute("bcd", ul2.getPassword());
		        	   RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		        	   rd.forward(request, response);
		        	   System.out.println("loaded");
		           }
		           else{
		        	   RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		        	   rd.forward(request, response);
		        	   System.out.println("loaded2");
		        	   }
		         
		          
		           
		           
		           
	}
//protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
}
