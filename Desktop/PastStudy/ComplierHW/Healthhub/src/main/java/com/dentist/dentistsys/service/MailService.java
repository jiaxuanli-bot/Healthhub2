package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.MimeMessage;
import lombok.Value;
import org.apache.tomcat.util.http.fileupload.util.mime.MimeUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.logging.Logger;

@Service("mailService")
public class MailService {
    private String from ="834992304@qq.com";
    @Autowired
    private JavaMailSender mailSender;


    public void sendSimpleMail(String to,String title,String content){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(to);
        message.setSubject(title);
        message.setText(content);
        mailSender.send(message);
    }
}



