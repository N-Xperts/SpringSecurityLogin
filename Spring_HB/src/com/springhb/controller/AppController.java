package com.springhb.controller;

import java.io.OutputStream;
import java.security.Principal;
import java.util.Base64;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springhb.bean.UserMasterBean;
import com.springhb.globalEnum.Status;
import com.springhb.model.UserModel;
import com.springhb.service.UserService;



@Controller
public class AppController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login")
	public ModelAndView login()
	{
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/loginfail",method=RequestMethod.GET)
	public ModelAndView loginfail()
	{
		return new ModelAndView("redirect:login");
	}
	
	@RequestMapping(value="/viewImage")
	public ModelAndView viewImage()
	{
		return new ModelAndView("viewImage");
	}
	
	@RequestMapping(value="/getImage",method=RequestMethod.GET)
	public void getImage(@RequestParam int imgID )
	{
			System.out.println(imgID);
			
			UserModel userModel = userService.getUserModelByUserId(imgID);
			
			
			byte[] imgData = userModel.getPhotofile() ;  
		       // display the image
			String imgDataBase64=new String(Base64.getEncoder().encode(imgData));
		      System.out.println(imgDataBase64);
		
		
	}
	
	@RequestMapping({"/","/index"})
	public ModelAndView Home(Principal principal)
	{
		ModelAndView model = new ModelAndView("index");
		String username=principal.getName();
		model.addObject("username",username);
		return model;
	}
	
	@RequestMapping(value="/addUser")
	public ModelAndView addUser(@ModelAttribute UserMasterBean userMasterBean)
	{
		return new ModelAndView("addUser");
	}
	
	@RequestMapping(value="/saveUser")
	public ModelAndView saveUser(@Valid @ModelAttribute UserMasterBean userMasterBean,BindingResult bindingResult )
	{
		System.out.println("inside save");
		System.out.println("fname=="+userMasterBean.getFirstName());
		System.out.println("lname=="+userMasterBean.getLastName());
		System.out.println("add=="+userMasterBean.getAddress());
		System.out.println("email=="+userMasterBean.getEmail());
		System.out.println("phone=="+userMasterBean.getPhone());
		System.out.println("dob=="+userMasterBean.getDateOfBirth());
		System.out.println("uname=="+userMasterBean.getUserName());
		System.out.println("pw=="+userMasterBean.getPassword());
		System.out.println("rpw=="+userMasterBean.getRePassword());
		System.out.println("role=="+userMasterBean.getRole());
		System.out.println("file=="+userMasterBean.getFile());
	
		if(bindingResult.hasErrors())
		{
			System.out.println("inside cnt IF");
			System.out.println(bindingResult.getErrorCount());
			return new ModelAndView("addUser");
		}
		
		System.out.println("bfr usr srvc");
		userService.saveUser(userMasterBean);
		System.out.println("aftr usr srvc");
		return new ModelAndView("redirect:viewUser");
		
	}
	
	@RequestMapping(value="/viewUser")
	public ModelAndView viewUser(ModelMap modelMap)
	{	
		List<UserMasterBean> list = userService.viewUser();
		modelMap.put("userList", list);
		
		return new ModelAndView("dTable");
	}
	
	@RequestMapping(value="/editUser")
	public ModelAndView editUser(@RequestParam int userid,@ModelAttribute UserMasterBean userMasterBean)
	{	
		System.out.println("uid=="+userid);
		ModelAndView modelAndView = new ModelAndView("addUser");
		UserModel userModel = userService.getUserModelByUserId(userid);
		modelAndView.addObject("userModel", userModel);
		return modelAndView;
	}
	
	@RequestMapping(value="/deleteUser",method=RequestMethod.GET)
	public ModelAndView deleteUser(@RequestParam int userid,@RequestParam String action)
	{	
			UserModel userModel = userService.getUserModelByUserId(userid);
			
			if(action.equals("delete"))
			{
				userModel.setStatus(Status.delete);
				
			}
			userService.saveUserModel(userModel);
			return new ModelAndView("redirect:viewUser");
			
	}
	
	
	
	
}
