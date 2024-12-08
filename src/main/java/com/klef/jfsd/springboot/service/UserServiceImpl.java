package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
  
  @Autowired
   private UserRepository userRepository;

  @Override
  public String UserRegistration(User user)
  {
  userRepository.save(user);
  return "User Registered successfully";
}

  @Override
  public User checkuserlogin(String uname, String pwd)
  {
    return userRepository.checkemplogin(uname, pwd);

  }
}