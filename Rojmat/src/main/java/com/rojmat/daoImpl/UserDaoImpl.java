package com.rojmat.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rojmat.dao.UserDao;
import com.rojmat.entity.User;
@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void add(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if(user!=null) {
			try {
				session.save(user);
				tx.commit();
				session.close();
			}catch(Exception e) {
				tx.rollback();
				session.close();
				e.printStackTrace();
			}
		}
	}
	@Override
	public void edit(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if(user!=null) {
			try {
				session.update(user);
				tx.commit();
				session.close();
			}catch(Exception e) {
				tx.rollback();
				session.close();
				e.printStackTrace();
			}
		}
	}
	@Override
	public void delete(int userId) {
		sessionFactory.getCurrentSession().delete(getUserbyId(userId));	
	}
	@Override
	public User getUserbyId(int userId) {	
		return (User)sessionFactory.getCurrentSession().get(User.class, userId);
	}
	@Override
	public List getAllUsers() {	
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	@Override
	public User loginUser(String email, String password) {
		try	{
			if(!sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			Query query = sessionFactory.getCurrentSession().createQuery("from User as u where u.email=:email and u.password=:password");
			query.setString("email", email);
			query.setString("password", password);
			return (User) query.uniqueResult();
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public Long getUserIdByEmail(String email) {
		Query hql = sessionFactory.getCurrentSession().createQuery("userid from User where email="+email);
		return null;
	}
}