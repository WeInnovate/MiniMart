package userPojo;

import java.io.Serializable;

import item.Item;
import login.UserLogin;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDAO {

	SessionFactory sessionfactory=null;
	Query query=null;
	Session session=null;
	Transaction transaction=null;


	public boolean insert(User user){
		boolean userInserted = false;
		//SessionFactory sessionfactory=null;
		sessionfactory=new Configuration().configure().buildSessionFactory();
		 session=sessionfactory.openSession();
		 transaction=session.beginTransaction();

		String u = (String)session.save(user);
		
		String ul= null;
		
		if(u != null){
			UserLogin user2=new UserLogin();
			user2.setUserName(user.getUserName());
			user2.setPassword(user.getPassword());
			ul= (String) session.save(user2);
		}
		if(ul != null){
				userInserted = true;
				System.out.println("Data inserted");
//				session.save(user);
//				session.save(user2);
		}
		
		transaction.commit();
		
		return userInserted;
		}
	
   public boolean checkLogin(UserLogin userlogin){
	   boolean validuser=false;
	   sessionfactory=new Configuration().configure().buildSessionFactory();
	   session=sessionfactory.openSession();
//	   String qr="Setect * from DataUserLogin where user_name and password=? ?";
//	   query=session.createQuery(qr);
	   System.out.println("Here "+userlogin.getUserName());
	   UserLogin user3 = (UserLogin) session.get(UserLogin.class,userlogin.getUserName());
	  System.out.println("nife "+user3);
	   if(user3 !=null){
		   if(user3.getUserName().equals(userlogin.getUserName()) && user3.getPassword().equals(userlogin.getPassword())){
			   validuser=true;
			   
		   }
		  
	   }
	   session.close();
	   return validuser;
	  
	  
	  
  }	
   public User fatch(String userName){
	   sessionfactory=new Configuration().configure().buildSessionFactory();
	   session=sessionfactory.openSession();
	   transaction=session.beginTransaction();
	   System.out.println("kmedmow");
	   return (User)session.get(User.class, userName);
   }
   
  
   public Item itemFatch(Item item){
	   
	   sessionfactory=new Configuration().configure().buildSessionFactory();
	   session=sessionfactory.openSession();
	   transaction=session.beginTransaction();
		//String u = (String)session.save(item);
	   System.out.println("Item :");
	   //Item item1=new Item();
	   
	   return (Item)session.get(Item.class,(Serializable) item);
	   
	   
	    
	    
	   
   }
}
