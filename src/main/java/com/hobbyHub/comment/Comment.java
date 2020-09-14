package com.hobbyHub.comment;

import com.hobbyHub.likeable.Likable;
import com.hobbyHub.likeable.LikesStatus;
import com.hobbyHub.user.User;
import com.hobbyHub.user.UserCreation;

import java.util.Date;
import java.util.List;

public class Comment implements Likable, UserCreation {

    private User creator;
    private String body;
    private LikesStatus likesStatus;
    private Date dateCreated;

    public Comment() {
        likesStatus = new LikesStatus();
        dateCreated = new Date();
    }

    public Comment(User creator, String body) {
        this();
        this.creator = creator;
        this.body = body;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    @Override
    public void addUserWhoLiked(User user) {
        likesStatus.addUserWhoLiked(user);
    }

    @Override
    public void removeUserWhoLiked(User user) {
        likesStatus.removeUserWhoLiked(user);
    }

    @Override
    public void addUserWhoDisliked(User user) {
        likesStatus.addUserWhoDisliked(user);
    }

    @Override
    public void removeUserWhoDisliked(User user) {
        likesStatus.removeUserWhoDisliked(user);
    }

    @Override
    public List<User> getUsersWhoLiked() {
        return likesStatus.getUsersWhoLiked();
    }

    @Override
    public List<User> getUsersWhoDisliked() {
        return likesStatus.getUsersWhoDisliked();
    }

    @Override
    public int getNumberOfLikes() {
        return likesStatus.getNumberOfLikes();
    }

    @Override
    public int getNumberOfDislikes() {
        return likesStatus.getNumberOfDislikes();
    }

    @Override
    public User getCreator() {
        return creator;
    }

    @Override
    public Date getDateCreated() {
        return dateCreated;
    }
}
