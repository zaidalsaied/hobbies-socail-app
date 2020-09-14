package com.HobbyHub.commentsStatus;


import com.HobbyHub.comment.Comment;
import java.util.List;

public interface Commentable {
    List<Comment> getComments();
    int numberOfComments();
}
