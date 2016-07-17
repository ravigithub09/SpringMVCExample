package com.venu.spring.dao.impl;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.venu.spring.bean.User;
import com.venu.spring.dao.SignInDao;
import com.venu.spring.util.HibernateUtil;

@Repository
public class SignInDaoImpl implements SignInDao {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public User signIn(User user) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Object[]> result = hibernateUtil.fetchByEmailId(user.getEmailId());
		if (result != null && result.size() == 1) {
			Object[] object = result.get(0);
			User user2 = new User();
			user2.setId(((BigInteger) object[0]).longValue());
			user2.setFirstName((String) object[2]);
			user2.setLastName((String) object[3]);
			return user2;
		}

		return null;
	}

}
