package com.HobbyHub.commentsStatus;


import com.HobbyHub.comment.Comment;
import java.util.ArrayList;
import java.util.List;

public class CommentsStatus {
    private List<Comment> comments;

    public CommentsStatus() {
        comments = new ArrayList<>();
    }

    public List<Comment> getComments() {
        List <Comment> comments = new ArrayList<>();
        for (Comment comment : this.comments)
            comments.add(comment);
        return comments;
    }

    public void removeComment(Comment comment) {
        comments.remove(comment);
    }

    public int numberOfComments() {
        return comments.size();
    }
}
