package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@RestController
@RequestMapping("/disscussion")
public class DisscussionController<BlogService> {
    @Autowired
   private UserService userService;
    @Autowired
    CommentService commentService;
    @Autowired
    DisscussionService disscussionService;
    @Autowired
    private DisseminationService disseminationService;
    ArrayList<disscussion> disscussions;
    private com.dentist.dentistsys.entity.user user;
    ArrayList<dissemination> disseminations;

    @RequestMapping(value = "/mana/{pid}", method = {RequestMethod.GET})
    public ModelAndView BlogDetail(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disscussions = disscussionService.getUnUsefulldisscussion();
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        mav.addObject("disscussions",JSON.toJSONString(disscussions));
       System.out.println("to backend");
        mav.setViewName("ManageDis");
        return  mav;
    }
    @RequestMapping(value = "/View/{pid}", method = {RequestMethod.GET})
    public ModelAndView ViewDetail(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        System.out.println("Is user is admin?"+user.getType().equals("admin"));
        if (user.getType().equals("tpatient")) {
            disscussions = disscussionService.getDisscussionPatient();
            System.out.println(disscussions);
        }else if(user.getType().equals("tnurse")){
            disscussions = disscussionService.getDisscussionNurse();
        }else {
            disscussions = disscussionService.getAlldissscussion();
        }
        if (user.getType().equals("admin")) {
            mav.setViewName("adminViewDisscussion");
        }
        else{
            mav.setViewName("ViewDisscussion");
        }
        mav.addObject("disscussions",JSON.toJSONString(disscussions));
        System.out.println("to backend");
        return  mav;
    }
    @RequestMapping(value = "/manmy/{pid}", method = {RequestMethod.GET})
    public ModelAndView ManageMyDis(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        System.out.println("Is user is admin?"+user.getType().equals("admin"));
        disscussions = disscussionService.getDisscussionByID(pid);
        System.out.println(disscussions);
        if (user.getType().equals("admin")) {
          //  mav.setViewName("adminViewDisscussion");
        }
        else{
            mav.setViewName("ManageMyDis");
        }
        mav.addObject("disscussions",JSON.toJSONString(disscussions));
        System.out.println("to backend");
        return  mav;
    }
    @RequestMapping(value = "/search/{pid}", method = {RequestMethod.GET})
    public ModelAndView Search(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getdesseminationforNurse();
        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        mav.setViewName("search");
        return  mav;
    }

    @RequestMapping(value = "/adsearch/{pid}", method = {RequestMethod.GET})
    public ModelAndView adSearch(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getdesseminationforNurse();
        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        mav.setViewName("adminSearch");
        return  mav;
    }
    @RequestMapping(value = "/retrive/{pid}", method = {RequestMethod.GET})
    public ModelAndView Retrieve(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disscussions = disscussionService.getByTer("ter");
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        ArrayList<disscussion> disscussions2 = disscussionService.getByTer("arch");
        mav.addObject("disscussions",JSON.toJSONString(disscussions));
        mav.addObject("arch",JSON.toJSONString(disscussions2));
        mav.setViewName("RetireveDis");
        return  mav;
    }
}