package com.hobbyHub.commentable;


import com.hobbyHub.comment.Comment;

import java.util.List;

public interface Commentable {
    List<Comment> getComments();

    int numberOfComments();
}
