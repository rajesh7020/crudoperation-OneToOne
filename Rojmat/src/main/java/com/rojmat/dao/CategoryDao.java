package com.rojmat.dao;
import java.util.List;
import com.rojmat.entity.Category;

public interface CategoryDao {
	 public void addCategory(Category category); 
	 public List<Category> getCategories();
	 public Category getCategory(int cid);
	 public void deleteCategory(int cid);
}
