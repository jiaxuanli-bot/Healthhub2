package com.dentist.dentistsys.service;


import com.dentist.dentistsys.entity.hospitalInfo;
import com.dentist.dentistsys.entity.hospitalInfoExample;
import com.dentist.dentistsys.mapper.hospitalInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class HospitalService {
        @Autowired
        hospitalInfoMapper hospitalInfoMapper;
        hospitalInfoExample hospitalInfoExample;

        public ArrayList<hospitalInfo> GetCommentByID(String ID, String firstName, String lastName, String Physicain){
                hospitalInfoExample = new hospitalInfoExample();
                com.dentist.dentistsys.entity.hospitalInfoExample.Criteria c = hospitalInfoExample.createCriteria();
                c.andHospitalidEqualTo(ID).andFirstnameEqualTo(firstName).andLastnameEqualTo(lastName);
                if (Physicain.length()>0){
                    System.out.println("_______________+++++++++"+Physicain);
                    c.andDoctornameEqualTo(Physicain);
                }
                ArrayList<hospitalInfo> hospitalInfos;
                hospitalInfos = (ArrayList<hospitalInfo>) hospitalInfoMapper.selectByExample(hospitalInfoExample);
                return hospitalInfos;
        }
}
