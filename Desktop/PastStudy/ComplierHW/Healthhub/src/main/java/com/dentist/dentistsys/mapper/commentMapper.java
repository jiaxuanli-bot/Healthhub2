package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.comment;
import com.dentist.dentistsys.entity.commentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface commentMapper {
    int countByExample(commentExample example);

    int deleteByExample(commentExample example);

    int insert(comment record);

    int insertSelective(comment record);

    List<comment> selectByExample(commentExample example);

    int updateByExampleSelective(@Param("record") comment record, @Param("example") commentExample example);

    int updateByExample(@Param("record") comment record, @Param("example") commentExample example);
}