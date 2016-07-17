package com.venu.spring.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.venu.spring.bean.User;
import com.venu.spring.dao.SignUpDao;
import com.venu.spring.util.HibernateUtil;

@Repository
public class SignUpDaoImpl implements SignUpDao {
	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void signUp(User user) {
		System.out.println("Dao called");
		hibernateUtil.create(user);
	}

}
