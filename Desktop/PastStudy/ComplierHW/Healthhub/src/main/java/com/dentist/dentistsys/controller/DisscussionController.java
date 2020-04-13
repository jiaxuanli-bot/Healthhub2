package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSON;
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
    @Autowired
    private RedisscussionService redisscussionService;
    @Autowired
    private chatService chatService;
    ArrayList<reDisscussion> reDisscussions;
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
    @RequestMapping(value = "/pm123/{pid}", method = {RequestMethod.GET})
    public ModelAndView BlogD(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName",user.getId());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        ArrayList<user> doctors = userService.SelectByType("tdoctor");
        mav.addObject("doctor",JSON.toJSONString(doctors));
        mav.setViewName("privateM");
        return  mav;
    }

    @RequestMapping(value = "/pm1234/{pid}", method = {RequestMethod.GET})
    public ModelAndView BlogDar(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName",user.getId());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        ArrayList<chat> chats;
        chats = chatService.getByReceiver(pid);
        mav.addObject("chats",JSON.toJSONString(chats));
        mav.setViewName("DocManagePM");
        return  mav;
    }

    @RequestMapping(value = "/chat/{pid}", method = {RequestMethod.GET})
    public ModelAndView chat(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName",user.getId());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        ArrayList<chat> chats;
        chats = chatService.getByReceiver(pid);
        mav.addObject("chats",JSON.toJSONString(chats));
        mav.setViewName("DocManagePM");
        return  mav;
    }

    @RequestMapping(value = "/pchat/{pid}/{did}", method = {RequestMethod.GET})
    public ModelAndView pchat(@PathVariable(name = "pid") String pid, @PathVariable(name = "did") String did, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        System.out.println("did is_____________"+did);
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        mav.addObject("doc",did);
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName",user.getId());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        ArrayList<chat> chats;
        chats = chatService.getByReceiver(pid);
        mav.addObject("chats",JSON.toJSONString(chats));
        mav.setViewName("chat");
        return  mav;
    }

    @RequestMapping(value = "/ampm123456/{pid}", method = {RequestMethod.GET})
    public ModelAndView BlogDart(@PathVariable(name = "pid") String pid, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID",user.getId());
        mav.addObject("blogID","1");
        mav.addObject("UID",user.getId());
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName",user.getId());
        mav.addObject("UID",user.getId());
        mav.addObject("utype",user.getType());
        ArrayList<chat> chats;
        chats = chatService.getByStatus("2");
        mav.addObject("chats",JSON.toJSONString(chats));
        mav.setViewName("adManPM");
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

    @RequestMapping(value = "/adreport/{pid}", method = {RequestMethod.GET})
    public ModelAndView adReport(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        user = userService.Sel(pid);
        disseminations = disseminationService.getAlldessemination();
        disscussions = disscussionService.getAlldissscussion();
        reDisscussions = redisscussionService.getAll();

        mav.addObject("ID","ad1234");
        mav.addObject("blogID","1");
        mav.addObject("UID","ad1234");
        user = userService.Sel(pid);
        mav.addObject("dis",JSON.toJSONString(disscussions));
        mav.addObject("des",JSON.toJSONString(disseminations));
        mav.addObject("rep",JSON.toJSONString(reDisscussions));
        mav.addObject("UName","ad1234");
        mav.addObject("UID","ad1234");
        mav.addObject("utype","ad1234");
        mav.setViewName("reportPage");
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