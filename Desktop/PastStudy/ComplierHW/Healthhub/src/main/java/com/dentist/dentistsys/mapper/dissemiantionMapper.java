package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.dissemiantion;
import com.dentist.dentistsys.entity.dissemiantionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface dissemiantionMapper {
    int countByExample(dissemiantionExample example);

    int deleteByExample(dissemiantionExample example);

    int insert(dissemiantion record);

    int insertSelective(dissemiantion record);

    List<dissemiantion> selectByExample(dissemiantionExample example);

    int updateByExampleSelective(@Param("record") dissemiantion record, @Param("example") dissemiantionExample example);

    int updateByExample(@Param("record") dissemiantion record, @Param("example") dissemiantionExample example);
}