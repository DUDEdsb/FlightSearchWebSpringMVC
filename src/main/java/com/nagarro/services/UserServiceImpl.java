/**
 * 
 */
package com.nagarro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nagarro.dao.UserDAO;
import com.nagarro.entities.User;

/**
 * @author deepakbisht
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User saveToDB) {
		userDAO.saveUser(saveToDB);
	}

	@Override
	@Transactional
	public User getUser(long id) {
		return userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public void deleteUser(long id) {
		userDAO.deleteUser(id);
	}

	@Override
	public boolean authenticateUser(User toBeAuthenticated) {
		boolean isValid = false;
		User fromDB = getUser(toBeAuthenticated.getId());
		return isValid;
	}

}
