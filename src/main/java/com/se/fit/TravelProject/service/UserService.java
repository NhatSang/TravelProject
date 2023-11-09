package com.se.fit.TravelProject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.fit.TravelProject.entities.User;
import com.se.fit.TravelProject.repository.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepository;

	@Autowired
	public UserService(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}
	
	public List<User> getAllUsers(){
		return userRepository.findAll();
	}
	
	public User getUserById(int id) {
		Optional<User> rs = userRepository.findById(id);
		User user = null;
		if(rs.isPresent()) {
			user = rs.get();
		}
		else {
			throw new RuntimeException("Not find");
		}
		return user;
	}
	
	public void saveUser(User user) {
		userRepository.save(user);
	}
	
	public void deleteUser(int id) {
		userRepository.deleteById(id);
	}
}
