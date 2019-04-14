package com.nagarro.dao;

import java.util.List;

import com.nagarro.entities.User;

public interface UserDAO {

	List<User> getUsers();

	void deleteUser(long id);

	void saveUser(User toSave);

	User getUserById(long id);

	User getUserByName(String name);

}