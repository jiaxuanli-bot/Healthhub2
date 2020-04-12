package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.chat;
import com.dentist.dentistsys.entity.chatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface chatMapper {
    int countByExample(chatExample example);

    int deleteByExample(chatExample example);

    int insert(chat record);

    int insertSelective(chat record);

    List<chat> selectByExample(chatExample example);

    int updateByExampleSelective(@Param("record") chat record, @Param("example") chatExample example);

    int updateByExample(@Param("record") chat record, @Param("example") chatExample example);
}