package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.reDisscussion;
import com.dentist.dentistsys.entity.reDisscussionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface reDisscussionMapper {
    int countByExample(reDisscussionExample example);

    int deleteByExample(reDisscussionExample example);

    int insert(reDisscussion record);

    int insertSelective(reDisscussion record);

    List<reDisscussion> selectByExample(reDisscussionExample example);

    int updateByExampleSelective(@Param("record") reDisscussion record, @Param("example") reDisscussionExample example);

    int updateByExample(@Param("record") reDisscussion record, @Param("example") reDisscussionExample example);
}