package com.HobbyHub.Post;

import java.util.Date;

import com.HobbyHub.User.User;
import com.HobbyHub.commentsStatus.CommentsStatus;

public abstract class Post  {
    private User creator;
    private String title;
    private String description;
  
    private CommentsStatus commentsStatus;
    private String hobbyName;
    private Date dateCreated;

    public Post() {
      
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

}
