package com.klef.jfsd.springboot.controller;



import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Creator;

import com.klef.jfsd.springboot.service.CreatorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CreatorController 
{
  @Autowired
  private CreatorService creatorService;
  
 


 
  
  @GetMapping("creatorreg")
  public ModelAndView creatorreg()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("creatorreg");
    return mv;
  }
  
    @PostMapping("insertcreator")
    public ModelAndView insertcreator(HttpServletRequest request)
    {
      String contact = request.getParameter("ccontact");
     String dateOfBirth = request.getParameter("cdateOfBirth");
     String email = request.getParameter("cemail");
     String gender = request.getParameter("cgender");
//     Integer id=Integer.parseInt("cid");
     String location = request.getParameter("clocation");
     String password = request.getParameter("cpwd");
     String socialMediaUrl = request.getParameter("csocialMediaUrl");
     String username= request.getParameter("cusername");
     
     
       Creator c = new Creator();
       c.setContact(contact);
       c.setDateOfBirth(dateOfBirth);
       c.setEmail(email);
       c.setGender(gender);
      c.setLocation(location);
      c.setPassword(password);
      c.setSocialMediaUrl(socialMediaUrl);
      c.setUsername(username);
       
       String msg = creatorService.CreatorRegistration(c);
       
       ModelAndView mv = new ModelAndView("creatorregsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
    
    @PostMapping("checkcreatorlogin")
    public ModelAndView checkcreatorlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String cusername = request.getParameter("cusername");
        String cpwd = request.getParameter("cpwd");

        Creator creator = creatorService.checkcreatorLogin(cusername, cpwd);

        if (creator != null) {
            if (creator.isVerified()) { // Check if the creator is verified
                HttpSession session = request.getSession();
                session.setAttribute("creator", creator);
                mv.setViewName("creatorhome");
            } else {
                mv.setViewName("creatorloginfail"); 
                mv.addObject("message", "Your account is not verified. Please contact the admin.");
            }
        } else {
            mv.setViewName("creatorloginfail"); 
            mv.addObject("message", "Invalid username or password!");
        }
        return mv;
    }

    
    
     @GetMapping("creatorlogin")
     public ModelAndView creatorlogin()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("creatorlogin");
        return mv;
    } 
     
     @GetMapping("creatorhome")
     public ModelAndView creatorhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorhome");
       return mv;
     }
     
     @GetMapping("creatorlogout")
     public ModelAndView creatorlogout(HttpServletRequest request)
     {
      HttpSession session= request.getSession();
         session.removeAttribute("creator");
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorlogin");
       return mv;
     }
     
     @GetMapping("creatorsessionfail")
     public ModelAndView creatorsessionfail()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorsessionfail");
       return mv;
     }
     
     @GetMapping("creatorprofile")
     public ModelAndView creatorprofile()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorprofile");
       return mv;
     }
     
     @GetMapping("updatecreator")
     public ModelAndView updatecreator()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("updatecreator");
       return mv;
     }
  
     @GetMapping("creatormonuments")
 	public ModelAndView home()
 	{
 		ModelAndView mv = new ModelAndView();
 		mv.setViewName("creatormonuments");
 		return mv;
 	}
     
     @GetMapping("creatorfestivals")
     public ModelAndView festivals()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorfestivals");
       return mv;
     }
 	
     @GetMapping("creatorfood")
     public ModelAndView food()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("creatorfood");
       return mv;
     }
     
  

}