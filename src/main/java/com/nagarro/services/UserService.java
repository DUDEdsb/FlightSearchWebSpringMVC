package com.nagarro.services;

import java.util.List;

import com.nagarro.constants.UserEnum;
import com.nagarro.entities.User;

public interface UserService {

	List<User> getUsers();

	UserEnum saveUser(User saveToDB);

	User getUser(long id);

	void deleteUser(long id);

	boolean authenticateUser(User toBeAuthenticated);

}