package com.venu.spring.util;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HibernateUtil {
	@Autowired
	private SessionFactory sessionFactory;

	public <T> Serializable create(final T entity) {
		return sessionFactory.getCurrentSession().save(entity);
	}

	@SuppressWarnings("rawtypes")
	public <T> List fetchByEmailId(String emailId) {
		String query="SELECT u.* FROM Users u WHERE u.emailId like '%"+ emailId +"%'";
		return (List) sessionFactory.getCurrentSession().createSQLQuery(query).list();
	}
}
