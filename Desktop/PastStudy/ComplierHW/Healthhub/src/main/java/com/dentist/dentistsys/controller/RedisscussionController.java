package com.dentist.dentistsys.controller;

import com.dentist.dentistsys.service.CommentService;
import com.dentist.dentistsys.service.DisscussionService;
import com.dentist.dentistsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

public class RedisscussionController {
    @Autowired
    CommentService commentService;
    @Autowired
    DisscussionService disscussionService;
    @Autowired
    UserService userService;

    @RequestMapping(value = "/view/{pid}", method = {RequestMethod.GET})
    public ModelAndView BlogDetail(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav=new ModelAndView();

        mav.setViewName("DisscussionDetail");
        return  mav;
    }



}
