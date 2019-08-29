package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.CategoryDao;
import com.rojmat.entity.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getCategories() {
		return (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class).list();
	}
	@Override
	public Category getCategory(int cid) {
		return (Category)sessionFactory.getCurrentSession().get(Category.class, cid);
	}
	@Override
	public void deleteCategory(int cid) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Category WHERE cid="+cid).executeUpdate();
	//	sessionFactory.getCurrentSession().delete(getCategory(cid));
	}	
}
