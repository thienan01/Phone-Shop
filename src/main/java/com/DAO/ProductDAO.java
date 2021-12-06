package com.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.Util.HibernateUtil;
import com.entity.*;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;


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
	
	public List<Product> getProductByPrice(Double a, Double b){
		try {
			Session session = factory.openSession();
			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaQuery<Product>  query = builder.createQuery(Product.class);
			Root<Product> root =  query.from(Product.class);
			query.select(root);

			Predicate p  = builder.between(root.get("price").as(Double.class), a, b);
			query = query.where(p);
			List<Product> productList = session.createQuery(query).getResultList();
			return productList;
		} catch (Exception e) {
			
		}
		return null;
	}
	public List<Product> searchProduct(String str){
		try {
			Session session = factory.openSession();
			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaQuery<Product>  query = builder.createQuery(Product.class);
			Root<Product> root =  query.from(Product.class);
			query.select(root);
			if (!str.isEmpty()) {
				String p = String.format("%%%s%%", str);
				
				Predicate p1 = builder.like(root.get("name").as(String.class), p);
				Predicate p2 = builder.like(root.get("description").as(String.class), p);
				query = query.where(builder.or(p1,p2));
			}
			List<Product> productList = session.createQuery(query).getResultList();
			return productList;
		} catch (Exception e) {
		}
		
		return null;
	}
	public List<Account> getAccounts(){
		try {
			Session session = factory.openSession();
			List<Account> accountList = session.createQuery("From Accounts").getResultList();
			return accountList;
		} catch (Exception e) {
		}
		return null;
	}
	public void insertProduct(Product p, int cateID) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();	
		Category category = session.get(Category.class, cateID);
		p.setCategory(category);
		session.save(p);
		transaction.commit();
	}
	
	
	public static void main(String[] args) {
		  ProductDAO productDAO = new ProductDAO();
		  String aString ="Iphone";
			/*
			 * List<Account> product = productDAO.getAccounts(); for (Account product2 :
			 * product) { System.out.print(product2.getIsAdmin()+"\n"); }
			 */
		 

		
		 
		 
	}
}