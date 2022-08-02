package com.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import com.user.entity.User;
import com.user.service.UserService;

@Controller
public class UserController {
	  @Autowired
	  private UserService uService;
	
	

	@RequestMapping("getUserList.do")
	public String getUserList(ModelMap map, String keyWord){
		System.out.println("??????");
	    List<User>list=uService.getUserList(keyWord);
		map.put("list",list);
		return "/index.jsp";
	}
	
	@RequestMapping("add.do")
	public String add(ModelMap map,User user){
		String msg="?????????";
		try {
			uService.add(user);	
		} catch (Exception e) {
			msg="????????";
		}
		map.put("msg",msg);
		return "/addUser.jsp";
	}
	
	@RequestMapping("delete.do")
	@ResponseBody
	public String delete(Integer Id) {
		String msg="1";
		try {
			uService.delete(Id);	
		} catch (Exception e) {
			msg="0";
		}
		return msg;
	}
	
	@RequestMapping("update.do")
	public String toupdate(ModelMap map,User user){
		String msg="????????";
		try {
			uService.update(user);	
		} catch (Exception e) {
			e.printStackTrace();
			msg="????????";
		}
		map.put("msg",msg);
		return "/update.jsp";
	}
}