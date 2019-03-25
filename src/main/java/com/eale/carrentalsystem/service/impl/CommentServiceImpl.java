package com.eale.carrentalsystem.service.impl;

import com.eale.carrentalsystem.bean.Comment;
import com.eale.carrentalsystem.dao.CommentDao;
import com.eale.carrentalsystem.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> findAll() {
        return commentDao.findAll();
    }

    @Override
    public Comment save(Comment comment) {
        commentDao.save(comment);
        return commentDao.findById(comment.getCommentId()).get();
    }

    @Override
    public Comment findById(Long commentId) {
        return commentDao.findById(commentId).get();
    }

    @Override
    public Comment modify(Comment comment) {
        commentDao.save(comment);
        return commentDao.findById(comment.getCommentId()).get();
    }

    @Override
    public void remove(Long commentId) {
        commentDao.deleteById(commentId);
    }
}
