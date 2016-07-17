package com.venu.spring.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.venu.spring.bean.User;
import com.venu.spring.dao.SignInDao;
import com.venu.spring.service.SignInService;

@Service
@Transactional
public class SignInServiceImpl implements SignInService {
	@Autowired
	private SignInDao signInDao;

	@Override
	public User signIn(User user) {
		// TODO Auto-generated method stub
		return signInDao.signIn(user);
	}

}
