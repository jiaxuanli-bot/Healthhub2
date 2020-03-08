package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.dissemination;
import com.dentist.dentistsys.entity.disseminationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface disseminationMapper {
    int countByExample(disseminationExample example);

    int deleteByExample(disseminationExample example);

    int insert(dissemination record);

    int insertSelective(dissemination record);

    List<dissemination> selectByExample(disseminationExample example);

    int updateByExampleSelective(@Param("record") dissemination record, @Param("example") disseminationExample example);

    int updateByExample(@Param("record") dissemination record, @Param("example") disseminationExample example);
}