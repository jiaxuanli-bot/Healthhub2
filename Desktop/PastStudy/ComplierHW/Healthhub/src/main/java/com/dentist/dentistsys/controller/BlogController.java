package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.comment;
import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.BlogService;
import com.dentist.dentistsys.service.CommentService;
import com.dentist.dentistsys.service.DisscussionService;
import com.dentist.dentistsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@RestController
@RequestMapping("/blog")
public class BlogController{
        @Autowired
        CommentService commentService;
        @Autowired
        BlogService blogService;
        @Autowired
        DisscussionService disscussionService;
        @Autowired
        UserService userService;
        @RequestMapping(value = "/view", method = {RequestMethod.GET})
        public ModelAndView BlogDetail(HttpServletRequest request, HttpSession session) {
            System.out.println("blog ID is :"+request.getParameter("ID"));


            String id = (String) session.getAttribute("userid");
            user user = userService.Sel(id);


           //ArrayList<comment> comments;
           // comments = commentService.GetCommentByID(request.getParameter("ID"));
            ArrayList<disscussion> disscussion = disscussionService.getByID(request.getParameter("ID"));
            //ablog = blogService.GetBlogByID(request.getParameter("ID"));
            ModelAndView mav = new ModelAndView();
            mav.addObject("disscussion", JSON.toJSONString(disscussion));
            mav.addObject("ID",user.getId());
           mav.addObject("DisscussionID",request.getParameter("ID"));
            mav.addObject("UID",user.getId());
            mav.addObject("utype",user.getType());
            //System.out.println("blog"+ablog);
            //JSONArray array = (JSONArray) JSONArray.toJSON(comments);
            //String jsonblogs = array.toString();
            //mav.addObject("comments",jsonblogs);

            //System.out.println("comments is"+comments);
            mav.setViewName("DisscussionDetail");
            return  mav;
        }

}