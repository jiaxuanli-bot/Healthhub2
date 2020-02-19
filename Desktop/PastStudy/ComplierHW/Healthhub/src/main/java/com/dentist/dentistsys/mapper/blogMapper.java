package com.dentist.dentistsys.mapper;

import com.dentist.dentistsys.entity.blog;
import com.dentist.dentistsys.entity.blogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface blogMapper {
    int countByExample(blogExample example);

    int deleteByExample(blogExample example);

    int deleteByPrimaryKey(String id);

    int insert(blog record);

    int insertSelective(blog record);

    List<blog> selectByExample(blogExample example);

    blog selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") blog record, @Param("example") blogExample example);

    int updateByExample(@Param("record") blog record, @Param("example") blogExample example);

    int updateByPrimaryKeySelective(blog record);

    int updateByPrimaryKey(blog record);
}