/**
 * 
 */
package com.nagarro.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nagarro.entities.User;

/**
 * @author deepakbisht
 *
 */
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> getUsers() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<User> cq = cb.createQuery(User.class);
		Root<User> root = cq.from(User.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public void deleteUser(long id) {
		Session session = sessionFactory.getCurrentSession();
		User deletedUser = session.byId(User.class).load(id);
		session.delete(deletedUser);
	}

	@Override
	public void saveUser(User toSave) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(toSave);
	}

	@Override
	public User getUserById(long id) {
		Session currentSession = sessionFactory.getCurrentSession();
		User gotUserFromDB = currentSession.get(User.class, id);
		return gotUserFromDB;
	}
}
