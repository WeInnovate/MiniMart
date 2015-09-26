package controller;

import item.Item;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userPojo.UserDAO;


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
		UserDAO userDAO = new UserDAO();
		boolean isertDummyItemsOrNot = false;
		
		if(userDAO.itemCount() > 0){
			isertDummyItemsOrNot = true;
		}
		else{
			isertDummyItemsOrNot =userDAO.insertDummyItems();
		}
		
		
		if(isertDummyItemsOrNot){
		Item it= userDAO.itemFatch(viewitem);
		System.out.println("Heloo "+it);
			RequestDispatcher rd=request.getRequestDispatcher("Successful.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd= request.getRequestDispatcher("ItemDesc.jsp");
			rd.forward(request, response);
			System.out.println("no");
					
		}
		
	}

}
