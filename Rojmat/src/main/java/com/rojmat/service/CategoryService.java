package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.Category;

public interface CategoryService {
	 public void addCategory(Category category); 
	 public List<Category> getCategories();
	 public Category getCategory(int cid);
	 public void deleteCategory(int cid);
}
