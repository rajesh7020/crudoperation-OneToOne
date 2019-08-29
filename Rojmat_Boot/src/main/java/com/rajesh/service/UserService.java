package com.rajesh.service;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rajesh.model.Role;
import com.rajesh.model.User;
import com.rajesh.repository.RoleRepository;
import com.rajesh.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
    private RoleRepository roleRepository;
	
	
	public User findUserByEmail(String email) {
		return userRepository.findByEmail(email);
	}
	
	public void saveUser(User user) {
		user.setShopname(user.getShopname());
		user.setName(user.getName());
		user.setEmail(user.getEmail());
		user.setPassword(user.getPassword());
		user.setMobile(user.getMobile());
		user.setAddress(user.getAddress());
		user.setActive(0);
		user.setCreatedBy(user.getName());
		user.setCreatedDate(new Date());
		user.setUpdatedBy(user.getName());
		user.setUpdatedDate(new Date());
		
		Role userRole  = roleRepository.findByRole("USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		userRepository.save(user);
	}
	public User loginUser(String email,String password) {
		return userRepository.loginUser(email, password);
	}
}
