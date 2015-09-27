package userPojo;

import item.Item;
import login.UserLogin;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projections;

public class UserDAO {

	static SessionFactory sessionfactory = null;
	static Session session = null;
	static Transaction transaction = null;
	
	Query query=null;
	static{
	sessionfactory=new Configuration().configure().buildSessionFactory();
//	session=sessionfactory.openSession();
//	transaction =session.beginTransaction();
	}
	
	public boolean insert(User user){
		boolean userInserted = false;
		session=sessionfactory.openSession();
		transaction =session.beginTransaction();
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
		}
		
		transaction.commit();
		
		return userInserted;
		}
	public boolean insertDummyItems(){
		session=sessionfactory.openSession();
		transaction =session.beginTransaction();
		boolean flag = false;
		for(int i = 1; i<7; i++){
			flag = session.save(new Item("Product"+i,"Item "+i, "$"+i)) != null;
		}		
		transaction.commit();
		return flag;
	}
	
   public boolean checkLogin(UserLogin userlogin){
	   boolean validuser=false;
   
	   session=sessionfactory.openSession();
	   transaction =session.beginTransaction();

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

	   session=sessionfactory.openSession();
	   transaction=session.beginTransaction();
	   
	   return (User)session.get(User.class, userName);
   }
   
  
   public Item itemFatch(String viewitem){
	   session=sessionfactory.openSession();
	   
	   System.out.println("Item :"+viewitem);
	  
	   return (Item)session.get(Item.class, viewitem);
   }
   
   public int itemCount(){
	   session=sessionfactory.openSession();
 	   return Integer.parseInt(session.createCriteria(Item.class).setProjection(Projections.rowCount()).uniqueResult().toString());
    }
}
