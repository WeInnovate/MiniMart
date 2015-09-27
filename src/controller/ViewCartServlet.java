package controller;

import item.Item;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userPojo.UserDAO;
 

//@WebServlet("/AddCart")
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HashMap hm=new HashMap(); 
	static{
	
	hm.put("Product1","img/thumb-1.jpg");  
	hm.put("Product2","img/thumb-2.jpg");  
	hm.put("Product3","img/thumb-3.jpg");  
	hm.put("Product4","img/thumb-1.jpg");
	hm.put("Product5","img/thumb-2.jpg");
	hm.put("Product6","img/thumb-3.jpg");

	}
	
    
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
		request.setAttribute("abc",it.getItemID());
		request.setAttribute("bcd",it.getItemName() );
		request.setAttribute("efc",it.getPrice());
		request.setAttribute("img", (String)hm.get(it.getItemID()));
			RequestDispatcher rd=request.getRequestDispatcher("Item.jsp");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd= request.getRequestDispatcher("ItemDesc.jsp");
			rd.forward(request, response);
			System.out.println("no");
					
		}
		
	}

}
