/**
 * 
 */
package com.nagarro.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author deepakbisht
 *
 */
@Repository
public class FlightDAOImpl {

	@Autowired
	private SessionFactory sessionFactory;
}
