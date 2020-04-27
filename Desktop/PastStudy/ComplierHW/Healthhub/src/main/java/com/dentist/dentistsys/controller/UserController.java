package com.dentist.dentistsys.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.LU;
import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.hospitalInfo;
import com.dentist.dentistsys.entity.user;
import com.dentist.dentistsys.service.DisseminationService;
import com.dentist.dentistsys.service.HospitalService;
import com.dentist.dentistsys.service.LUService;
import com.dentist.dentistsys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;



import javax.servlet.http.HttpServletRequest;
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
    private HospitalService hospitalService;
    @Autowired
    private UserService userService;
    @Autowired
    private DisseminationService disseminationService;
    @Autowired
    private LUService luService;
    ArrayList<dissemination> disseminations;
    private user user;
    private String id;
    private String password;

    @RequestMapping(value = "/login/id", method = {RequestMethod.POST})
    public ModelAndView userlogin(HttpServletRequest request) {
        id = request.getParameter("id");
        password = request.getParameter("password");
        user = userService.Sel(id);
        String jsonblogs = "abc";
        ModelAndView mav=new ModelAndView();
        if(user != null){
            if (user.getPassword().equals(password) ) {
                mav.setViewName("wrongpassword");
                mav.addObject("user",user);
                if (user.getType().equals("tpatient")){
                    disseminations = disseminationService.getdesseminationforPatient();
                    mav.addObject("ID",user.getId());
                    mav.addObject("blogID",disseminationService.getAlldessemination().size());
                    mav.addObject("UID",user.getId());
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("verificationCode");
                } else if (user.getType().equals("tdoctor")){
                    mav.addObject("UID",user.getId());
                    mav.addObject("ID",user.getId());
                    mav.addObject("blogID","123");
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                   mav.setViewName("verificationCode");
                } else if (user.getType().equals("tnurse")){
                    mav.addObject("ID",user.getPhysicion());
                    mav.addObject("blogID","123");
                    mav.addObject("UID",user.getId());
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("verificationCode");
               }else if(user.getType().equals("admin")){
                    mav.addObject("UName",user.getRealname());
                    mav.addObject("UID",user.getId());
                    ArrayList<user> users =  userService.SelAllF();
                    mav.addObject("users", JSON.toJSONString(users));
                    mav.setViewName("verificationCode");
                }else {
                    mav.setViewName("frozen");
                }
                return mav;
            }
            return mav;
        }
        return mav;
    }

    @RequestMapping(value = "/verification", method = {RequestMethod.GET})
    public ModelAndView verification(HttpServletRequest request) {
        id = request.getParameter("id");
        user = userService.Sel(id);
        ModelAndView mav=new ModelAndView();
        ArrayList<LU> lus =luService.selByID(id);
        System.out.println(lus);
        if (lus.size()>0){
            mav.addObject("switch",'1');
            mav.setViewName("index");
            return mav;
        }
        if(user != null){
            if (user.getPassword().equals(password) ) {
                mav.setViewName("wrongpassword");
                mav.addObject("user",user);
                if (user.getType().equals("tpatient")){
                    luService.ins(id);
                    disseminations = disseminationService.getdesseminationforPatient();
                    mav.addObject("ID",user.getPhysicion());
                    mav.addObject("blogID",disseminationService.getAlldessemination().size());
                    mav.addObject("UID",user.getId());
                    JSONArray array = (JSONArray) JSONArray.toJSON(disseminations);
                    String jsonblogs = array.toString();
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("Main");
                } else if (user.getType().equals("tdoctor")){
                    luService.ins(id);
                    disseminations = disseminationService.getAlldessemination();
                    mav.addObject("ID",user.getId());
                    mav.addObject("blogID",disseminationService.getAlldessemination().size());
                    mav.addObject("UID",user.getId());
                    JSONArray array = (JSONArray) JSONArray.toJSON(disseminations);
                    String jsonblogs = array.toString();
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("dec-index");
                } else if (user.getType().equals("tnurse")){
                    luService.ins(id);
                    disseminations = disseminationService.getdesseminationforNurse();
                    mav.addObject("ID",user.getPhysicion());
                    mav.addObject("blogID",disseminationService.getAlldessemination().size());
                    mav.addObject("UID",user.getId());
                    JSONArray array = (JSONArray) JSONArray.toJSON(disseminations);
                    String jsonblogs = array.toString();
                    mav.addObject("blogs",jsonblogs);
                    System.out.println("userID:    "+user.getId());
                    mav.setViewName("Nurse");
                }else if(user.getType().equals("admin")){
                    ArrayList<hospitalInfo> members  = new ArrayList<hospitalInfo>();
                    members = hospitalService.getAll();
                    mav.addObject("UName",user.getRealname());
                    mav.addObject("UID",user.getId());
                    ArrayList<user> users =  userService.SelAllF();
                    mav.addObject("member",JSON.toJSONString(members));
                    mav.addObject("users", JSON.toJSONString(users));
                    mav.setViewName("admin");
                }else {
                    mav.setViewName("frozen");
                }
                return mav;
            }
            return mav;
        }
        mav.setViewName("nouser");
        return mav;
    }

    @RequestMapping(value = "/reg", method = {RequestMethod.POST})
    public ModelAndView userregister(HttpServletRequest request, @ModelAttribute("form") user user) {
        user user1 =userService.Sel(user.getId());
        ModelAndView mav=new ModelAndView();
        String lastname = "";
        if (user.getRealname().split(" ").length > 1){
          lastname = user.getRealname().split( " ")[1];
        }
        System.out.println(user.getAdditional()+user.getRealname().split(" ")[0]+lastname+user.getPhysicion());
        ArrayList<hospitalInfo> hospitalInfos =  hospitalService.GetCommentByID(user.getAdditional() , user.getRealname().split(" ")[0] ,lastname ,user.getPhysicion()) ;
        System.out.println(user);
        System.out.println("______________"+hospitalInfos.size());
        System.out.println(hospitalInfos);
        if (user1 == null) {
            userService.Ins(user);
            mav.setViewName("index");
            return mav;
        }

        mav.setViewName("alreadyexist");
       return  mav;
    }

    @RequestMapping(value = "/list", method = {RequestMethod.GET})
    public ModelAndView usersList(HttpServletRequest request) {
      ArrayList<user> users =userService.SelAll();
      ModelAndView mav=new ModelAndView();
      mav.addObject("users",users);
      mav.setViewName("users");
      return  mav;
    }
    @RequestMapping(value = "/wrong", method = {RequestMethod.POST})
    public ModelAndView WrongSafeCode(HttpServletRequest request) {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("frozen");
        return  mav;
    }

    @RequestMapping(value = "/register", method = {RequestMethod.GET})
    public ModelAndView Reg(HttpServletRequest request) {
        ModelAndView mav=new ModelAndView();
        ArrayList<user> users = userService.SelectByType("tdoctor");
        mav.addObject("docs", JSON.toJSONString(users));
        mav.setViewName("register");
        return  mav;
    }

    @RequestMapping(value = "/change/{pid}", method = {RequestMethod.POST})
    public ModelAndView Changepasswd(@PathVariable(name = "pid") String pid ,HttpServletRequest request) {
        ModelAndView mav=new ModelAndView();
        user user;
        user = userService.Sel(pid);
        System.out.println("session id is sdkjansakjnda");
        System.out.println(user);
        password = request.getParameter("password");
        user.setPassword(password);
        userService.Upd(user);
        mav.setViewName("index");
        return  mav;
    }
}

