package com.dentist.Healthhub.mapper;

import com.dentist.Healthhub.entity.user;
import com.dentist.Healthhub.entity.userExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface userMapper {
    int countByExample(userExample example);

    int deleteByExample(userExample example);

    int deleteByPrimaryKey(String id);

    int insert(user record);

    int insertSelective(user record);

    List<user> selectByExample(userExample example);

    user selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") user record, @Param("example") userExample example);

    int updateByExample(@Param("record") user record, @Param("example") userExample example);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
}