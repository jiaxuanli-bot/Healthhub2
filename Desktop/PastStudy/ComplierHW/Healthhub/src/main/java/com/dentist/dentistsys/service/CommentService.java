package com.dentist.dentistsys.service;

import com.dentist.dentistsys.entity.comment;
import com.dentist.dentistsys.entity.commentExample;
import com.dentist.dentistsys.mapper.commentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CommentService {
    @Autowired
    commentMapper commentMapper;
    com.dentist.dentistsys.entity.commentExample commentExample;
    public ArrayList<comment> GetCommentByID(String ID){
        commentExample =new commentExample();
        commentExample.createCriteria().andMessageidEqualTo(ID);
        ArrayList<comment> comments =new ArrayList<comment>();
        comments = (ArrayList<comment>) commentMapper.selectByExample(commentExample);
        return comments;
    }
}
