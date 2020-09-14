package com.HobbyHub.Post;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.HobbyHub.User.User;

@Document(collection = "Blogs")
public class Blog extends Post {
    @Id
    private String id;
    private String body;
    private String imageUrl;


    public Blog(User creator, String title, String description, String hobby, String body, String imageUrl) {
        super(creator, title, description, hobby);
        this.body = body;
        this.imageUrl = imageUrl;
    }

    @Override
    public String getId() {
        return id;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
