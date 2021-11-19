package com.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Util.HibernateUtil;
import com.entity.*;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Set;

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
	public Set<Product> getProductByCategory(int id){
		try {
			Session session = factory.openSession();
			Category c = session.get(Category.class,id);
			return c.getProducts();
		} catch (Exception e) {
			
		}
		
		return null;
	}
	
	public static void main(String[] args) {
		  ProductDAO productDAO = new ProductDAO();
		  
		  String aString = "4";
		  Set<Product> product =productDAO.getProductByCategory(2);
		  for (Product product2 : product) {
			System.out.print(product2.getBrand());
		}
		 

		
		 
		 
	}
}