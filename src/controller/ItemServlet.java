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


//@WebServlet("/Itemservlet")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ItemServlet() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String itemID= request.getParameter("Item1");
		String itemName= request.getParameter("Item2");
		String price= request.getParameter("Item3");
		
		Item item=new Item();
		item.setItemID(itemID);
		item.setItemName(itemName);
		item.setPrice(price);
		 
		Item it= (new UserDAO()).itemFatch(item);
		if(it!=null){
			RequestDispatcher rd=request.getRequestDispatcher("Successful.jsp");
			rd.forward(request, response);
			System.out.println("item");
		}
		else{
			RequestDispatcher rd= request.getRequestDispatcher("ItemDesc.jsp");
			rd.forward(request, response);
			System.out.println("no");
					
		}
		
		
	}

}
