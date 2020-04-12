package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.hospitalInfo;
import com.dentist.dentistsys.entity.hospitalInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface hospitalInfoMapper {
    int countByExample(hospitalInfoExample example);

    int deleteByExample(hospitalInfoExample example);

    int insert(hospitalInfo record);

    int insertSelective(hospitalInfo record);

    List<hospitalInfo> selectByExample(hospitalInfoExample example);

    int updateByExampleSelective(@Param("record") hospitalInfo record, @Param("example") hospitalInfoExample example);

    int updateByExample(@Param("record") hospitalInfo record, @Param("example") hospitalInfoExample example);
}