package com.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.entity.*;

import java.util.List;

public class ProductDAO {
	
	static final org.hibernate.SessionFactory factory = HibernateUtil.getSessionFactory();
	
	public Product getProductID(int id) {
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();	
			Product product = session.get(Product.class, id);
			transaction.commit();
			return product;
		} catch (Exception e) {
			
		}
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
	
	public static void main(String[] args) {
		Insert insert = new Insert();
		
		  List<Product> plLis = insert.getAllProducts(); 
		  for (Product product : plLis)
		  { System.out.print(product.getName()+"\n"); }
		 
	}
}