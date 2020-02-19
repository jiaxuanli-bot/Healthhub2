package com.dentist.dentistsys;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@MapperScan("com.dentist.dentistsys.mapper")
@ServletComponentScan
@SpringBootApplication
@EnableTransactionManagement(proxyTargetClass = true)
@EnableAsync
public class DentistsysApplication {

    public static void main(String[] args) {
        SpringApplication.run(DentistsysApplication.class, args);
    }

}

