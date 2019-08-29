package com.rajesh.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.rajesh.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{
	Role findByRole(String role);
}
