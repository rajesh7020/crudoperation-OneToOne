package com.rojmat.serviceImpl;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.UserDao;
import com.rojmat.entity.User;
import com.rojmat.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	@Override
	public void add(User user) {
		User userset = new User();
		userset.setAddress(user.getAddress());
		userset.setEmail(user.getEmail());
		userset.setName(user.getName());
		userset.setMobile(user.getMobile());
		userset.setPassword(user.getPassword());
		userset.setShopname(user.getShopname());
		userset.setStatus(user.isStatus());
		userset.setCreatedBy(user.getName());
		userset.setUpdatedBy(user.getEmail());
		userset.setCreatedDate(new Date());
		userset.setUpdatedDate(new Date());
	 // userset.setRoles(user.getRoles());
		userDao.add(userset);
	}
	@Override
	public void edit(User user) {
		userDao.edit(user);	
	}
	@Override
	public void delete(int userId) {
		userDao.delete(userId);	
	}
	@Override
	public User getUserbyId(int userId) {
		// TODO Auto-generated method stub
		return userDao.getUserbyId(userId);
	}
	@Override
	public List getAllUsers() {
		// TODO Auto-generated method stub
		return userDao.getAllUsers();
	}
	@Override
	public User loginUser(String email, String password) {
		// TODO Auto-generated method stub
		return (User)userDao.loginUser(email, password);
	}
}
