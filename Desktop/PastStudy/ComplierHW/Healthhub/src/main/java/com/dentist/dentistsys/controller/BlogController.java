package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.*;
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
@RequestMapping("/blog")
public class BlogController{
        @Autowired
        CommentService commentService;
        @Autowired
        DisscussionService disscussionService;
        @Autowired
        UserService userService;
        @Autowired
        RedisscussionService redisscussionService;
        @Autowired
        DisseminationService disseminationService;
        @RequestMapping(value = "/view/{pid}", method = {RequestMethod.GET})
        public ModelAndView BlogDetail(@PathVariable(name = "pid") String pid,HttpServletRequest request) {
            System.out.println("blog ID is :"+request.getParameter("ID"));
            user user = userService.Sel(pid);
            ArrayList<disscussion> disscussion = disscussionService.getByID(request.getParameter("ID"));
            ArrayList<reDisscussion> reDisscussions =  redisscussionService.GetReplyByID(request.getParameter("ID"));
            String size  = redisscussionService.GetSize();
            System.out.println(reDisscussions);
            ModelAndView mav = new ModelAndView();
            mav.addObject("size",size);
            mav.addObject("disscussion", JSON.toJSONString(disscussion));
            mav.addObject("replys",JSON.toJSONString(reDisscussions));
            mav.addObject("ID",user.getId());
            mav.addObject("DisscussionID",request.getParameter("ID"));
            mav.addObject("UID",user.getId());
            mav.addObject("utype",user.getType());
            String s= disscussion.get(0).getDisterminate();
            if (s != null) {
                mav.addObject("dister",disscussion.get(0).getDisterminate());
            }
            else {
                mav.addObject("dister","nter");
            }
            //System.out.println("blog"+ablog);
            //JSONArray array = (JSONArray) JSONArray.toJSON(comments);
            //String jsonblogs = array.toString();
            //mav.addObject("comments",jsonblogs);

            //System.out.println("comments is"+comments);
            mav.setViewName("DisscussionDetail");
            return  mav;
        }

    @RequestMapping(value = "/View/{pid}", method = {RequestMethod.GET})
    public ModelAndView test(@PathVariable(name = "pid") String pid,HttpServletRequest request) {
            ArrayList<mancite> mancites = new ArrayList<mancite>();
            ArrayList<disscussion> disscussions=disscussionService.getByType("cdis");
            ArrayList<dissemination> disseminations = disseminationService.getBytype("cdes");
            ArrayList<reDisscussion> reDisscussions = redisscussionService.getByType("credis");
            System.out.println(disseminations);
            System.out.println(reDisscussions);
            System.out.println(disscussions);
            for (int i =0; i<disscussions.size(); i++){
                mancite m =new mancite();
                m.setMessage(disscussions.get(i).getDismessage());
                m.setType(disscussions.get(i).getDistype());
                m.setUserName(disscussions.get(i).getDisname());
                m.setId(disscussions.get(i).getDisid());
                mancites.add(m);
            }
            for (int i =0; i<disseminations.size(); i++){
                mancite m =new mancite();
                m.setMessage(disseminations.get(i).getDismessage());
                m.setType(disseminations.get(i).getDistype());
                m.setUserName(disseminations.get(i).getDisname());
                m.setId(disseminations.get(i).getDisid());
                mancites.add(m);
            }
            for (int i =0; i<reDisscussions.size(); i++){
                mancite m =new mancite();
                m.setMessage(reDisscussions.get(i).getDismessage());
                m.setType(reDisscussions.get(i).getDistype());
                m.setUserName(reDisscussions.get(i).getDisname());
                m.setId(reDisscussions.get(i).getDisid());
                mancites.add(m);
            }
        ModelAndView mav = new ModelAndView();
        user user = userService.Sel(pid);
        mav.addObject("UName",user.getRealname());
        mav.addObject("UID",user.getId());
        ArrayList<user> users =  userService.SelAllF();
        mav.addObject("users", JSON.toJSONString(users));
        mav.addObject("disscussions",JSON.toJSONString(mancites));
        System.out.println("in the test");
        mav.setViewName("adminCite");
        return  mav;
    }
}