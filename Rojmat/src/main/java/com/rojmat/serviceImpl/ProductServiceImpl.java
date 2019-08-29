package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.ProductDao;
import com.rojmat.entity.Product;
import com.rojmat.service.ProductService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}
	@Override
	public List<Product> getProducts() {
		return productDao.getProducts();
	}
	@Override
	public Product getProduct(int pid) {
		return productDao.getProduct(pid);
	}
	@Override
	public void deleteProduct(int pid) {
		productDao.deleteProduct(pid);
	}
}
