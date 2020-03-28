package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.BlogService;
import com.dentist.dentistsys.service.CommentService;
import com.dentist.dentistsys.service.DisseminationService;
import com.dentist.dentistsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@RestController
@RequestMapping("/dissemination")
public class DisseminationController{
    @Autowired
    private UserService userService;
    @Autowired
    CommentService commentService;
    @Autowired
    BlogService blogService;
    @Autowired
    DisseminationService disseminationService;
    ArrayList<dissemination> disseminations;
    private user user;
    @RequestMapping(value = "/man/{id}", method = {RequestMethod.GET})
    public ModelAndView BlogDetail(@PathVariable(name = "id") String id,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(id);
        disseminations = disseminationService.getUnUsefullDessemination();
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        mav.addObject("disseminations",JSON.toJSONString(disseminations));
        System.out.println("to backend");
        mav.setViewName("ManagePost");
        return  mav;
    }
    @RequestMapping(value = "/adminview/{id}", method = {RequestMethod.GET})
    public ModelAndView ViewDessimination(@PathVariable(name = "id") String id,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        System.out.println("In the Amdinvwiew id is:"+id);
        user = userService.Sel(id);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        mav.addObject("ID","admin");
        mav.addObject("blogID",disseminationService.getAlldessemination().size());
        disseminations = disseminationService.getAlldessemination();
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        mav.addObject("blogs",JSON.toJSONString(disseminations));
        System.out.println("to backend");
        mav.setViewName("DisseminationView");
        return  mav;
    }
    @RequestMapping(value = "/uview/{id}", method = {RequestMethod.GET})
    public ModelAndView uv(HttpServletRequest request,@PathVariable(name = "id") String id) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(id);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        if (user.getType().equals("tpatient")){
            mav.setViewName("Main");
            disseminations = disseminationService.getdesseminationforPatient();
        } else if (user.getType().equals("tdoctor")){
            mav.setViewName("dec-index");
            disseminations = disseminationService.getAlldessemination();
        } else{
            mav.setViewName("Nurse");
            disseminations = disseminationService.getdesseminationforNurse();
        }
        mav.addObject("ID","admin");
        mav.addObject("blogID",disseminationService.getAlldessemination().size());
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        mav.addObject("blogs",JSON.toJSONString(disseminations));
        System.out.println("to backend");
        return  mav;
    }
}