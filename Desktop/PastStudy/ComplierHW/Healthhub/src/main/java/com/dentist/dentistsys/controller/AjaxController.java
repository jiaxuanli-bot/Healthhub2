package com.dentist.dentistsys.controller;

import com.alibaba.fastjson.JSONArray;
import com.dentist.dentistsys.entity.*;
import com.dentist.dentistsys.service.*;

import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;

import static com.dentist.dentistsys.service.PasswordService.getStringRandom;

@RestController
@RequestMapping("/ajax")
public class AjaxController {
    @Autowired
    private MailService mailService;
    @Autowired
    private chatService chatService;
    @Autowired
    private UserService userservice;
    @Autowired
    private DisseminationService disseminationService;
    @Autowired
    private DisscussionService disscussionService;
    @Autowired
    private RedisscussionService redisscussionService;
    @Autowired
    private LUService luService;

    ArrayList<dissemination> disseminations;
    ArrayList<disscussion> disscussions;
    @RequestMapping(value = "/mail", method = {RequestMethod.GET})
    @ResponseBody
    public String getCheckCode(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        user user = userservice.Sel(id);
        String checkCode = String.valueOf(new Random().nextInt(899999) + 100000);
        String message = "Your verification code："+checkCode;
        System.out.println(checkCode);
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "Verification code", message);
        }catch (Exception e){
            return "";
        }
        return checkCode;
    }

    @RequestMapping(value = "/logout", method = {RequestMethod.POST})
    @ResponseBody
    public String logout(HttpServletRequest request){
        System.out.println("id:"+request.getParameter("id"));
        System.out.println("one user log out");
        luService.Del(request.getParameter("id"));
        return "1";
    }
    @RequestMapping(value = "/logout", method = {RequestMethod.GET})
    @ResponseBody
    public String logoutget(HttpServletRequest request){
        System.out.println("id:"+request.getParameter("id"));
        System.out.println("one user log out");
        return "1";
    }


    @RequestMapping(value = "/password", method = {RequestMethod.GET})
    @ResponseBody
    public String getpwd(HttpServletRequest request) {
        String id=request.getParameter("id");
        String id2 = request.getParameter("id2");
        System.out.println(id);
        user user = userservice.Sel(id);
        user user1 = userservice.Sel(id2);
        String checkCode = String.valueOf(new Random().nextInt(899999) + 100000);
        String message = "Private Message Enter Password is："+checkCode;
        System.out.println(checkCode);
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "Private Message Password", message);
            mailService.sendSimpleMail(user1.getEmail()+"", "Private Message Password", message);
        }catch (Exception e){
            return "";
        }
        return checkCode;
    }

    @RequestMapping(value = "/wmail", method = {RequestMethod.GET})
    @ResponseBody
    public String Warn(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println("warn");
        System.out.println(id);
        user user = userservice.Sel(id);
        String message = "You have been reported for inappropriate remarks, and I hope you will pay attention to it in the future and follow the community rules";
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "Warning", message);
        }catch (Exception e){
            return "";
        }
        return "1";
    }

    @RequestMapping(value = "/approve", method = {RequestMethod.POST})
    @ResponseBody
    public String Approve(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        user user = userservice.Sel(id);
        if (user.getType().equals("Patient")){
            user.setType("tpatient");
        }
        else if (user.getType().equals("Doctor")){
            user.setType("tdoctor");
        }
        else {
            user.setType("tnurse");
        }
        String password = getStringRandom(8);
        String message = "Your password is："+password;
        user.setPassword(password);
        try {
            System.out.println(user.getEmail());
            mailService.sendSimpleMail(user.getEmail()+"", "RandomPassword", message);
        }catch (Exception e){
            System.out.println("occur worng in email");
        };
        userservice.Upd(user);
        return "1";
    }

    @RequestMapping(value = "/searchar/{pid}", method = {RequestMethod.POST})
    @ResponseBody
    public Object Searchar(HttpServletRequest request, @PathVariable(name = "pid") String pid){
        System.out.println("ar search ajax Reply");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        user user = userservice.Sel(pid);
        disscussions = disscussionService.getAr();
        disseminations = disseminationService.Searchdesseminations(user.getType(),"ashdjkahjd",username,topic,"2897137");
        Map<String,Object> map = new HashMap<>();
        map.put("dis",disscussions);
        map.put("des",disseminations);
        return map;
    }

    @RequestMapping(value = "/refuse", method = {RequestMethod.POST})
    @ResponseBody
    public String Refuse(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        userservice.Del(id);
        return "1";
    }
    @RequestMapping(value = "/admin/dissemination", method = {RequestMethod.POST})
    @ResponseBody
    public String insertDissemination(HttpServletRequest request){
        System.out.println("ajax dissemination");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String message=request.getParameter("message");
        System.out.println(message);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
       String group=request.getParameter("group");
        System.out.println(group);
        String status=request.getParameter("status");
        dissemination dissemination=new dissemination();
        dissemination.setDisstate(status);
        dissemination.setDisdate(time);
        dissemination.setDisname(username);
        dissemination.setDismessage(message);
        dissemination.setDistopic(topic);
        dissemination.setDiskeyword(keyword);
        dissemination.setDisgroup(group);
        dissemination.setDisid(status);
        disseminationService.ins(dissemination);
        return "1";
    }
    @RequestMapping(value = "/approvedis", method = {RequestMethod.POST})
    @ResponseBody
    public String approvedis(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disseminationService.approve(id);
        return "1";
    }
    @RequestMapping(value = "/refusedis", method = {RequestMethod.POST})
    @ResponseBody
    public String refusedis(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disseminationService.DeleteByID(id);
        return "1";
    }

    @RequestMapping(value = "/approvedisc", method = {RequestMethod.POST})
    @ResponseBody
    public String approvedisc(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disscussionService.approve(id);
        return "1";
    }
    @RequestMapping(value = "/refusedisc", method = {RequestMethod.POST})
    @ResponseBody
    public String refusedisc(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disscussionService.DeleteByID(id);
        return "1";
    }
    @RequestMapping(value = "/terdis/{pid}", method = {RequestMethod.POST})
    @ResponseBody
    public String terminatedis(HttpServletRequest request){
        String id=request.getParameter("id");
        System.out.println(id);
        disscussionService.SetTerstatus(id,"ter");
        return "1";
    }
    @RequestMapping(value = "/admin/disscussion", method = {RequestMethod.POST})
    @ResponseBody
    public String insertDisscussion(HttpServletRequest request){
        System.out.println("ajax dissemination");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String message=request.getParameter("message");
        System.out.println(message);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
        String group=request.getParameter("group");
        System.out.println(group);
        String status=request.getParameter("status");
        String pic =request.getParameter("pic");
        System.out.println("pic is:"+pic);
        disscussion disscussion =new disscussion();
        disscussion.setDisdate(time);
        disscussion.setDisname(username);
        disscussion.setDismessage(message);
        disscussion.setDistopic(topic);
        disscussion.setDiskeyword(keyword);
        disscussion.setDisgroup(group);
        disscussion.setDisstate(status);
        disscussion.setImg(pic);
        disscussionService.ins(disscussion);
        //disseminationService.ins(dissemination);
        return "1";
    }


    @RequestMapping(value = "/replyDisscussion", method = {RequestMethod.POST})
    @ResponseBody
    public String insertReply(HttpServletRequest request){
        System.out.println("ajax Reply");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String message=request.getParameter("message");
        System.out.println(message);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
        String parentid=request.getParameter("parentid");
        System.out.println(parentid);

        reDisscussion disscussion =new reDisscussion();
        disscussion.setDisdate(time);
        disscussion.setDisname(username);
        disscussion.setDismessage(message);
        disscussion.setDistopic(topic);
        disscussion.setDiskeyword(keyword);
        disscussion.setDisparentid(parentid);
        redisscussionService.ins(disscussion);
        //disseminationService.ins(dissemination);
        return "1";
    }

    @RequestMapping(value = "/search/{pid}", method = {RequestMethod.POST})
    @ResponseBody
    public Object Search(HttpServletRequest request, @PathVariable(name = "pid") String pid){
        System.out.println("ajax Reply");
        String time=request.getParameter("time");
        System.out.println(time);
        String username=request.getParameter("username");
        System.out.println(username);
        String topic=request.getParameter("topic");
        System.out.println(topic);
        String hour = request.getParameter("hour");
        user user = userservice.Sel(pid);
        disscussions = disscussionService.Searchdisscussions(user.getType(),time,username,topic,hour);
        disseminations = disseminationService.Searchdesseminations(user.getType(),time,username,topic,hour);
        Map<String,Object> map = new HashMap<>();
        map.put("dis",disscussions);
        map.put("des",disseminations);
        System.out.println("return ");
        return map;
    }

    @RequestMapping(value = "/cite/{pid}", method = {RequestMethod.POST})
    @ResponseBody
    public String Cite(HttpServletRequest request, @PathVariable(name = "pid") String pid){
        System.out.println("Cite logic");
        System.out.println(request.getParameter("id"));
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        String citeinf = request.getParameter("add");
        System.out.println("in the cite :"+type);
        if (type.equals("des")) {
            disseminationService.updateStateById(id,"cdes",citeinf);
        }else if(type.equals("dis")){
            disscussionService.updateStateById(id,"cdis",citeinf);
        }else {
            System.out.println("id is++--:" + id);
            redisscussionService.updateStateById(id,"credis",citeinf);
        }
        return "1";
    }
    @RequestMapping(value = "/cite/ref", method = {RequestMethod.POST})
    @ResponseBody
    public String RefCite(HttpServletRequest request){
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        if (type.equals("cdes")) {
            disseminationService.updateStateById(id,"des","");
        }else if(type.equals("cdis")){
            disscussionService.updateStateById(id,"dis","");
        }else {
            redisscussionService.updateStateById(id,"redis","");
        }
        return "1";
    }

    @RequestMapping(value = "/cite/app", method = {RequestMethod.POST})
    @ResponseBody
    public String AppCite(HttpServletRequest request){
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        if (type.equals("cdes")) {
            disseminationService.appcite(id);
        }else if(type.equals("cdis")){
           disscussionService.appcite(id);
        }else {
            redisscussionService.DeleteByID(id);
        }
        return "1";
    }

    @RequestMapping(value = "/retirve", method = {RequestMethod.POST})
    @ResponseBody
    public String Retirve(HttpServletRequest request){
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        disscussionService.SetTerstatus(id,"");
        return "1";
    }

    @RequestMapping(value = "/rese", method = {RequestMethod.POST})
    @ResponseBody
    public String Reserve(HttpServletRequest request){
        String id = request.getParameter("id");
        String type = request.getParameter("doc");
        System.out.println("+++++++++++++"+id+type);
        return "1";
    }

    @RequestMapping(value = "/archive", method = {RequestMethod.POST})
    @ResponseBody
    public String Archive(HttpServletRequest request){
        String id = request.getParameter("id");
        String type = request.getParameter("type");
        disscussionService.SetTerstatus(id,"archive");
        return "1";
    }
    @RequestMapping(value = "/t", method = {RequestMethod.POST})
    @ResponseBody
    public String t(HttpServletRequest request){
        String id = request.getParameter("id");
        String doc = request.getParameter("doc");
        chat chat=new chat();
        chat.setSender(id);
        chat.setReceiver(doc);
        chat.setStatus("3");
        chatService.ins(chat);
       return "1";
    }
    @RequestMapping(value = "/appm", method = {RequestMethod.POST})
    @ResponseBody
    public String ap(HttpServletRequest request){
        String id = request.getParameter("id");
        System.out.println("ap++++++++++"+id);
        chatService.setStatusByid(id,"2");
        return "1";
    }
    @RequestMapping(value = "/depm", method = {RequestMethod.POST})
    @ResponseBody
    public String de(HttpServletRequest request){
        String id = request.getParameter("id");
        System.out.println("de++++++++++"+id);
        chatService.delById(id);
        return "1";
    }
    @RequestMapping(value = "/adepm", method = {RequestMethod.POST})
    @ResponseBody
    public String ade(HttpServletRequest request){
        String id = request.getParameter("id");
        System.out.println("de++++++++++"+id);
        chatService.delById(id);
        return "1";
    }
    @RequestMapping(value = "/aappm", method = {RequestMethod.POST})
    @ResponseBody
    public String dae(HttpServletRequest request){
        String id = request.getParameter("id");
        System.out.println("de++++++++++"+id);
        chatService.setStatusByid(id,"1");
        return "1";
    }
    @RequestMapping(value = "/img", method = {RequestMethod.POST})
    @ResponseBody
    public String addimg(@RequestParam("file") MultipartFile imgFile, HttpServletRequest request){
        System.out.println("In the add img");
        return "1";
    }
}