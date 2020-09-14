package com.hobbyHub.post;

import com.hobbyHub.comment.Comment;
import com.hobbyHub.commentable.Commentable;
import com.hobbyHub.commentable.CommentsStatus;
import com.hobbyHub.likeable.Likable;
import com.hobbyHub.likeable.LikesStatus;
import com.hobbyHub.user.User;
import com.hobbyHub.user.UserCreation;

import java.util.Date;
import java.util.List;

public abstract class Post implements Likable, Commentable, UserCreation {
    private User creator;
    private String title;
    private String description;
    private LikesStatus likesStatus;
    private CommentsStatus commentsStatus;
    private String hobbyName;
    private Date dateCreated;

    public Post() {
        likesStatus = new LikesStatus();
        commentsStatus = new CommentsStatus();
        dateCreated = new Date();
    }

    public Post(User creator, String title, String description, String hobby) {
        this();
        this.creator = creator;
        this.title = title;
        this.description = description;
        this.hobbyName = hobby;
    }

    abstract public String getId();

    public String getHobbyName() {
        return hobbyName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    @Override
    public List<Comment> getComments() {
        return commentsStatus.getComments();
    }

    @Override
    public int numberOfComments() {
        return commentsStatus.numberOfComments();
    }

}
