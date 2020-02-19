package com.dentist.dentistsys.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.BlogService;
import com.dentist.dentistsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * @Author:wjup
 * @Date: 2018/9/26 0026
 * @Time: 14:42
 */

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private BlogService blogService;
    ArrayList<blog> blogs;
    private user user;
    private String id;
    private String password;

    @RequestMapping(value = "/login/id", method = {RequestMethod.POST})
    public ModelAndView userlogin(HttpServletRequest request, HttpSession session) {
        id = request.getParameter("id");
        password = request.getParameter("password");
        user = userService.Sel(id);
        session.setAttribute("userid",id);
        ModelAndView mav=new ModelAndView();

        if(user != null){
            if (user.getPassword().equals(password) ) {
                mav.addObject("user",user);
                if (user.getType().equals("1")){
                    blogs = blogService.GetAll();
                    mav.addObject("ID",user.getId());

                    mav.addObject("blogID",blogService.GetBlogId());
                    
                    JSONArray array = (JSONArray) JSONArray.toJSON(blogs);
                    String jsonblogs = array.toString();
                    mav.addObject("blogs",jsonblogs);
                    
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("Main");
                } else if (user.getType().equals("3")){
                    mav.setViewName("dentist-index");
                } else if (user.getType().equals("2")){
                    mav.setViewName("hygienist-index");
               }else if(user.getType().equals("admin")){
                    ArrayList<user> users =  userService.SelectByType("-1");
                    mav.addObject("users", JSON.toJSONString(users));
                    mav.setViewName("admin");
                }else {
                    mav.setViewName("frozen");
                }
                return mav;
            }
            mav.setViewName("wrongpassword");
            return mav;
        }
        mav.setViewName("nouser");
        return mav;
    }
    @RequestMapping(value = "/register/id", method = {RequestMethod.POST})
    public ModelAndView userregister(HttpServletRequest request, HttpSession session, @ModelAttribute("form") user user) {
        user user1 =userService.Sel(user.getId());
        ModelAndView mav=new ModelAndView();
        System.out.println("add a user");
        System.out.println(user);
        if (user1 == null) {
            userService.Ins(user);
            mav.setViewName("index");
            return mav;
        }
        mav.setViewName("alreadyexist");
       return  mav;
    }
    @RequestMapping(value = "/list", method = {RequestMethod.GET})
    public ModelAndView usersList(HttpServletRequest request, HttpSession session) {
      ArrayList<user> users =userService.SelAll();
      ModelAndView mav=new ModelAndView();
      mav.addObject("users",users);
      mav.setViewName("users");
      return  mav;
    }
    @RequestMapping(value = "/wrong", method = {RequestMethod.POST})
    public ModelAndView WrongSafeCode(HttpServletRequest request, HttpSession session) {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("frozen");
        return  mav;
    }

}

