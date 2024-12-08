package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Creator;

import com.klef.jfsd.springboot.repository.CreatorRepository;



@Service
public class CreatorServiceImpl implements CreatorService {

  @Autowired
  private CreatorRepository creatorRepository;

  

@Override
public String CreatorRegistration(Creator c) {
 creatorRepository.save(c);
    return "Thank You For Registering\nYou Are Successfully Registered!!";
}

@Override
public Creator checkcreatorLogin(String username, String pwd) {
 // TODO Auto-generated method stub
 return creatorRepository.checkcreatorLogin(username, pwd);
}

@Override
public String updatecreator(Creator cr) {
 
  Creator c= creatorRepository.findById(cr.getId()).get();
  
  cr.setContact(cr.getContact());
  cr.setDateOfBirth(cr.getContact());
  cr.setEmail(cr.getEmail());
  cr.setGender(cr.getGender());
  cr.setLocation(cr.getLocation());
  cr.setPassword(cr.getPassword());
  cr.setSocialMediaUrl(cr.getSocialMediaUrl());
  cr.setUsername(cr.getUsername());
  
  creatorRepository.save(cr);
  return "Creator Updated Successfully";
}
@Override
public Creator findCreatorById(int id) {
    Optional<Creator> creator = creatorRepository.findById(id);
    return creator.orElse(null); // Returns null if the creator doesn't exist
}

@Override
public void updateCreator(Creator creator) {
    // Save the updated Creator object to the database
    creatorRepository.save(creator);
}

public Creator getCreatorByEmail(String email) {
    return creatorRepository.findByEmail(email);
}


}