package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userPojo.User;
import userPojo.UserDAO;


public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 String username= request.getParameter("username");
		 String password=request.getParameter("password");
		 System.out.println(username+" "+password);
		 System.out.println("hi");
		 
		 //Data for DataUser Table(Registration Table)
		 User u3=new User();
		 u3.setUserName(username);
		 u3.setPassword(password);
		
		
		 
		  boolean u5=(boolean) (new UserDAO()).insert(u3);
	  if(u5 ){
			  RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			  rd.forward(request, response);
			  
		  }
		  else{
			  RequestDispatcher rd= request.getRequestDispatcher("Registration.jsp");
		  rd.forward(request, response);
			  
		  }
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 
	}
	
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}

}
