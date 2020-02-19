package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.message;
import com.dentist.dentistsys.entity.messageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface messageMapper {
    int countByExample(messageExample example);

    int deleteByExample(messageExample example);

    int insert(message record);

    int insertSelective(message record);

    List<message> selectByExample(messageExample example);

    int updateByExampleSelective(@Param("record") message record, @Param("example") messageExample example);

    int updateByExample(@Param("record") message record, @Param("example") messageExample example);
}