package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.User;

public interface UserService {
  
  public String UserRegistration(User user);
  public User checkuserlogin(String uname, String pwd);



}