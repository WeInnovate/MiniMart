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


public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name= request.getParameter("name");
		System.out.println("----"+name);
		String username=request.getParameter("username");
		String password=request.getParameter("password");

		if(name == ""){
			System.out.println(username+" "+password);

			UserLogin ul2=new UserLogin();
			ul2.setUserName(username);
			ul2.setPassword(password);
			UserDAO ud = new UserDAO();
			boolean ul3=ud.checkLogin(ul2);

			User da=(new UserDAO()).fatch(username);
			System.out.println("lllllll"+da.getFullName());
			request.setAttribute("name", da.getFullName());
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			System.out.println("loaded");
		}          
		else{
			User u3=new User();
			u3.setUserName(username);
			u3.setPassword(password);
			u3.setFullName(name);

			boolean u5=(boolean) (new UserDAO()).insert(u3);
			RequestDispatcher rd = null;
			request.setAttribute("name", u3.getFullName());
			if(u5){
				rd  = request.getRequestDispatcher("index.jsp");
			}
			else{
				rd  = request.getRequestDispatcher("Login.jsp");
			}
			rd.forward(request, response);
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

	//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//		
	//	}

}
