package com.dentist.dentistsys.controller;

import com.dentist.dentistsys.entity.UploadUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by qcl on 2019-06-11
 * desc: 文件上传
 */
@RestController
@RequestMapping("/img")
public class ImgController {

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public Object batchImport(@RequestParam("file") MultipartFile file,HttpServletRequest request) throws IOException {
        if (file.isEmpty()) {
            // 设置错误状态码
            System.out.println("失败");
            return "上传失败";
        }

        System.out.println("scwj");
        // 拿到文件名
        String filename = file.getOriginalFilename();

        // 存放上传图片的文件夹
        File fileDir = UploadUtils.getImgDirFile();
        // 输出文件夹绝对路径  -- 这里的绝对路径是相当于当前项目的路径而不是“容器”路径
        System.out.println(fileDir.getAbsolutePath());
        try {
            // 构建真实的文件路径
            File newFile = new File(fileDir.getAbsolutePath() + File.separator + filename);
            System.out.println(newFile.getAbsolutePath());
            System.out.println(filename);

            // 上传图片到 -》 “绝对路径”
            file.transferTo(newFile);
            return filename;

        } catch (IOException e) {
            e.printStackTrace();
        }
        return "结束";
    }


    @ResponseBody
    @RequestMapping(value = "/upload1" , method = {RequestMethod.POST})
    public String upload(@RequestParam("file")MultipartFile imgFile, HttpServletRequest request){

        if (imgFile.isEmpty()) {
            // 设置错误状态码
            return "上传失败";
        }

        System.out.println("scwj");
        // 拿到文件名
        String filename = imgFile.getOriginalFilename();

        // 存放上传图片的文件夹
        File fileDir = UploadUtils.getImgDirFile();
        // 输出文件夹绝对路径  -- 这里的绝对路径是相当于当前项目的路径而不是“容器”路径
        System.out.println(fileDir.getAbsolutePath());
        try {
            // 构建真实的文件路径
            File newFile = new File(fileDir.getAbsolutePath() + File.separator + filename);
            System.out.println(newFile.getAbsolutePath());
            System.out.println(filename);

            // 上传图片到 -》 “绝对路径”
            imgFile.transferTo(newFile);
            return "上传成功";

        } catch (IOException e) {
            e.printStackTrace();
        }
        return "结束";
    }


}


