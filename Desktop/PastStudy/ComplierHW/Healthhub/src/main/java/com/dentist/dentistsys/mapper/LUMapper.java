package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.LU;
import com.dentist.dentistsys.entity.LUExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LUMapper {
    int countByExample(LUExample example);

    int deleteByExample(LUExample example);

    int insert(LU record);

    int insertSelective(LU record);

    List<LU> selectByExample(LUExample example);

    int updateByExampleSelective(@Param("record") LU record, @Param("example") LUExample example);

    int updateByExample(@Param("record") LU record, @Param("example") LUExample example);
}