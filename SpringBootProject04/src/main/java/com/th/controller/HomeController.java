package com.th.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.th.model.Train;
import com.th.repository.Repository;




@RestController
public class HomeController {

	@Autowired
	Repository rp;
	
	@RequestMapping("/index")
	public String showindex() {
		return "index";
	}
    
	@RequestMapping(value = "/gettraindetails",method = RequestMethod.GET) 
	public ModelAndView gettrain()
	{
		ModelAndView model=new ModelAndView("traindetails");
		return model;		
	}
	
    @RequestMapping(value = "/getbookticket",method = RequestMethod.GET)
    public ModelAndView bookticket()
    {
    	ModelAndView model=new ModelAndView("bookticket");
    	return model;
    }
    
    @RequestMapping(value = "/payment",method = RequestMethod.GET)
    public ModelAndView payments()
    {
    	ModelAndView model=new ModelAndView("payment");
    	return model;
    	
    }
    
    @RequestMapping(value = "/genticket",method = RequestMethod.GET)
    public ModelAndView genticket()
    {
    	ModelAndView model=new ModelAndView("genticket");
    	return model;
    	
    }
    
    @RequestMapping(value = "/finally",method = RequestMethod.GET)
    public ModelAndView fina()
    {
    	ModelAndView model=new ModelAndView("finally");
    	return model;
    	
    }
    
    @RequestMapping(value = "/homepage",method = RequestMethod.GET)
    public ModelAndView fi()
    {
    	ModelAndView model=new ModelAndView("index");
    	return model;
    	
    }
    @RequestMapping(value = "/admin_login",method = RequestMethod.GET)
    public ModelAndView fppo()
    {
    	ModelAndView model=new ModelAndView("admin_login");
    	return model;
    	
    }
    
    @RequestMapping(value = "/forget_password",method = RequestMethod.GET)
    public ModelAndView dsa()
    {
    	ModelAndView model=new ModelAndView("forget_password");
    	return model;
    	
    }


    
    
    
    
    
    
    
    
    
    
    
    
    @RequestMapping(value ="/gettraindetails")
    public ModelAndView gettrains()
    {
    	
    	List<Train> op = rp.findAll();
    	System.out.print(op);
    	for(Train t:op)
    	{
    		System.out.println(t);
   	}    	ModelAndView model=new ModelAndView("traindetails");
    	model.addObject("key", op);
   	return model;
    	
   	
   }
    
    
//    @RequestMapping(value ="/gettrains/{Id}")
//    public String gettrs(@PathVariable int Id)
//    {
//    	
//    	Optional<Train> op = rp.findById(Id);
//    	System.out.print(op);
//		/*
//		 * for(Train t:op) { System.out.println(t); }
//		 */
//    	if(op.isPresent())
//    	{
//    		Train tr=op.get();
//    		System.out.println(tr);
//    	}
//		return null;
    	
//    	ModelAndView model=new ModelAndView("traindetails");
//    	model.addObject("key", op);
    	//return model;
    	
    	
    //}
    
    
//  //this is for getting all the train details from the backend
//    @RequestMapping(value = "/getalltrains")
//    public ModelAndView findAllTrain() {
//    List<Train> list = rp.findAll();
//    for(Train t:list) {
//    System.out.println(t);
//    }
//    ModelAndView model = new ModelAndView("allTrains");
//    model.addObject("key", list);
//    return model;
//    }
    
	
}
   