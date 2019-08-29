package com.rojmat.daoImpl;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.ProductDao;
import com.rojmat.entity.Product;

@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProducts() {
		return (List<Product>)sessionFactory.getCurrentSession().createCriteria(Product.class).list();
	}
	@Override
	public Product getProduct(int pid) {
		return (Product)sessionFactory.getCurrentSession().get(Product.class, pid);
	}
	@Override
	public void deleteProduct(int pid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Product WHERE pid="+pid).executeUpdate();
	//	sessionFactory.getCurrentSession().delete(getProduct(pid));
	}	
}
