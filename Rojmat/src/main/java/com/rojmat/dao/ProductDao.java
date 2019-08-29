package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.Product;

public interface ProductDao {
	 public void addProduct(Product product);
	 public List<Product> getProducts();
	 public Product getProduct(int pid);
	 public void deleteProduct(int pid);
}
