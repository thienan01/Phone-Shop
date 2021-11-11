package com.entity;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;

import java.util.List;

public class Insert {
	static final org.hibernate.SessionFactory factory = HibernateUtil.getSessionFactory();
	@SuppressWarnings("rawtypes")
	public User getName() {
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();	
			User user = session.get(User.class, 1);
			transaction.commit();
			return user;
		} catch (Exception e) {
			
		}
		
		/* System.out.print("done!"); */
		/* System.out.print(user.getUserName() + user.getEmail()); */
		 return null;
	}
	
	public List<Product> getAllProducts(){
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			List<Product> productsList = session.createQuery("From Products").getResultList();
			transaction.commit();
			return  productsList;
		} catch (Exception e) {
			
		}
		return null;
	}
	
	public Product getNamep() {
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();	
			Product user = session.get(Product.class, 1);
			transaction.commit();
			return user;
		} catch (Exception e) {
			
		}
		
		/* System.out.print("done!"); */
		/* System.out.print(user.getUserName() + user.getEmail()); */
		 return null;
	}
}
