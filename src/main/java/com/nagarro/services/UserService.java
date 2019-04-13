package com.nagarro.services;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.nagarro.entities.User;

public interface UserService {

	List<User> getUsers();

	void saveUser(User saveToDB);

	User getUser(long id);

	void deleteUser(long id);

	boolean authenticateUser(User toBeAuthenticated);

}