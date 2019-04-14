/**
 * 
 */
package com.nagarro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nagarro.constants.UserEnum;
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
	public UserEnum saveUser(User saveToDB) {
		User fromDB = userDAO.getUserByName(saveToDB.getUsername());
		if (fromDB == null) {
			userDAO.saveUser(saveToDB);
			return UserEnum.SUCCESSFULLY_ADDED;
		} else {
			return UserEnum.USER_ALREADY_EXISTS;
		}
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
	@Transactional
	public boolean authenticateUser(User toBeAuthenticated) {
		boolean isValid = false;
		User fromDB = userDAO.getUserByName(toBeAuthenticated.getUsername());
		if (fromDB != null) {
			if (fromDB.getPassword().equals(toBeAuthenticated.getPassword())) {
				isValid = true;
			}
		}
		return isValid;
	}

}
