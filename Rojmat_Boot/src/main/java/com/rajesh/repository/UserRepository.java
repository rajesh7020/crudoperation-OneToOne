package com.rajesh.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.rajesh.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByEmail(String email);
	
}
