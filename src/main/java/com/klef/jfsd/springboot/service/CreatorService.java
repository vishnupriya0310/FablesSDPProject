package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Creator;


public interface CreatorService {
  public String CreatorRegistration(Creator c);
  public Creator checkcreatorLogin(String username,String pwd);
  public String updatecreator(Creator c);
  Creator findCreatorById(int id); 
  void updateCreator(Creator creator);
  public Creator getCreatorByEmail(String email);
 

}