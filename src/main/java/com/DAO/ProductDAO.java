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
	
	public static void main(String[] args) {
		  ProductDAO productDAO = new ProductDAO();
		  Double a = (double)0;
		  Double b = (double)10000000;
		  List<Product> product = productDAO.getProductByPrice((double)0,(double)10000000);
		  for (Product product2 : product) {
			System.out.print(product2.getName()+"\n");
		}
		 

		
		 
		 
	}
}