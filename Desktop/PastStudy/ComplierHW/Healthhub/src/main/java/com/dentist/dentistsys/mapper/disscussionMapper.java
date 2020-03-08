package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.disscussion;
import com.dentist.dentistsys.entity.disscussionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface disscussionMapper {
    int countByExample(disscussionExample example);

    int deleteByExample(disscussionExample example);

    int insert(disscussion record);

    int insertSelective(disscussion record);

    List<disscussion> selectByExample(disscussionExample example);

    int updateByExampleSelective(@Param("record") disscussion record, @Param("example") disscussionExample example);

    int updateByExample(@Param("record") disscussion record, @Param("example") disscussionExample example);
}