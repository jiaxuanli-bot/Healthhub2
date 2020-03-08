package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    ArrayList<disscussion> disscussions;
    private com.dentist.dentistsys.entity.user user;
    @RequestMapping(value = "/mana", method = {RequestMethod.GET})
    public ModelAndView BlogDetail(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();
        String id = (String) session.getAttribute("userid");
        user = userService.Sel(id);
        session.setAttribute("userid",id);
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
    @RequestMapping(value = "/View", method = {RequestMethod.GET})
    public ModelAndView ViewDetail(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();
        String id = (String) session.getAttribute("userid");
        user = userService.Sel(id);
        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(id);
        session.setAttribute("userid",id);
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
}