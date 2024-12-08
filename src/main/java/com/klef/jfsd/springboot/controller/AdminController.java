package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Creator;
import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CreatorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	  private AdminService eventService;
	
	@Autowired
	  private CreatorService creatorService;
	
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("about")
	public ModelAndView about()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		
		
		long count  =	adminService.usercount();
		long count1  =	adminService.creatorcount();
		  mv.addObject("count", count);
		  mv.addObject("count1", count1);
			return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request  )
	{
		ModelAndView mv = new ModelAndView();
	   String auname = request.getParameter("auname");
	   String apwd	= request.getParameter("apwd");
	  Admin admin= adminService.checkadminlogin(auname, apwd);
	   
	   if(admin != null)
	   {
		   HttpSession session = request.getSession();
			 session.setAttribute("admin", admin);
		 mv.setViewName("adminhome");  
		 
		 long count  =	adminService.usercount();
			long count1  =	adminService.creatorcount();
			  mv.addObject("count", count);
			  mv.addObject("count1", count1);
				return mv;
	   }
	   else 
	   {
		mv.setViewName("adminloginfail"); 
		mv.addObject("message", "Login Failed");
	   }
		return mv;
		
	}

	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("admin");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminsessionfail")
	public ModelAndView adminsessionfail()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminsessionfail");
		return mv;
	}
	
	@GetMapping("viewallusers")
	  public ModelAndView viewallusers() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<User> userlist = adminService.ViewAllUsers();
	    mv.setViewName("viewallusers");
	    mv.addObject("userlist", userlist);
	    return mv;
	  }
	@GetMapping("viewallcreators")
	  public ModelAndView viewallcreators() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Creator> creatorlist = adminService.ViewAllCreators();
	    mv.setViewName("viewallcreators");
	    mv.addObject("creatorlist", creatorlist);
	    return mv;
	  }
	
	 @GetMapping("addevent")
	  public ModelAndView addEventDemo() {
	    ModelAndView mv = new ModelAndView("addevent");
	    return mv;
	  }

	  @PostMapping("insertevent")
	  public ModelAndView insertEventDemo(HttpServletRequest request, @RequestParam("eventimage") MultipartFile file) throws Exception {
	    String msg = null;

	    ModelAndView mv = new ModelAndView();

	    try {
	      String name = request.getParameter("name");
	      String description = request.getParameter("description");
	      String location = request.getParameter("location");
	      Date date = Date.valueOf(request.getParameter("date"));// Ensure date format matches
	      String link = request.getParameter("link");
	      byte[] bytes = file.getBytes();
	      Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

	      Event e = new Event();
	      e.setName(name);
	      e.setDescription(description);
	      e.setDate(date);
	      e.setLocation(location);
	      e.setLink(link);
	      e.setImage(blob);

	      msg = eventService.AddEvent(e);
	      System.out.println(msg);
	      mv.setViewName("eventmsg");
	      mv.addObject("message", msg);
	    } catch (Exception e) {
	      msg = e.getMessage();
	      System.out.println(msg.toString());
	      mv.setViewName("eventerror");
	      mv.addObject("message", msg);
	    }
	    return mv;
	  }

	  @GetMapping("viewallevents")
	  public ModelAndView viewAllEventsDemo() {
	    List<Event> eventList = eventService.ViewAllEvents();

	    ModelAndView mv = new ModelAndView("viewallevents");
	    mv.addObject("eventlist", eventList);

	    return mv;
	  }

	  @GetMapping("displayeventimage")
	  public ResponseEntity<byte[]> displayEventImageDemo(@RequestParam("id") int id) throws Exception {
	    Event event = eventService.ViewEventByID(id);
	    byte[] imageBytes = event.getImage().getBytes(1, (int) event.getImage().length());

	    return ResponseEntity.ok().contentType(org.springframework.http.MediaType.IMAGE_JPEG).body(imageBytes);
	  }
	  
	  @PostMapping("/deleteevent")
	    public String deleteEvent(@RequestParam("eventId") int eventId, Model model) {
	        // Call the service to delete the event
	        boolean isDeleted = eventService.deleteEvent(eventId);

	        // After deletion, redirect to the view all events page
	        if (isDeleted) {
	            return "redirect:/viewallevents";
	        } else {
	            model.addAttribute("error", "Failed to delete the event.");
	            return "viewallevents"; // Return the same page with an error message
	        }
	    }
	  
	  @PostMapping("/togglecreatorstatus")
	  public String toggleCreatorStatus(@RequestParam int creatorId) {
	      Creator creator = creatorService.findCreatorById(creatorId);
	      if (creator != null) {
	          creator.setVerified(!creator.isVerified()); // Toggle the status
	          creatorService.updateCreator(creator);     // Save updated status
	      }
	      return "redirect:/viewallcreators"; // Redirect back to the creators page
	  }

	}



