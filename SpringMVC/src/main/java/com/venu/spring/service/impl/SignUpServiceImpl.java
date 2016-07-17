package com.venu.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.venu.spring.bean.User;
import com.venu.spring.dao.SignUpDao;
import com.venu.spring.service.SignUpService;

@Service
@Transactional
public class SignUpServiceImpl implements SignUpService {
	@Autowired
	private SignUpDao signUpDao;

	@Override
	public void signUp(User user) {
		signUpDao.signUp(user);

	}

}
