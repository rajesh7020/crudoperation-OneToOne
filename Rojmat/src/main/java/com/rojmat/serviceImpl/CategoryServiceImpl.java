package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.CategoryDao;
import com.rojmat.entity.Category;
import com.rojmat.service.CategoryService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDao categoryDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addCategory(Category category) {
		categoryDao.addCategory(category);
	}
	@Override
	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}
	@Override
	public Category getCategory(int cid) {
		return categoryDao.getCategory(cid);
	}
	@Override
	public void deleteCategory(int cid) {
		categoryDao.deleteCategory(cid);
	}
}
