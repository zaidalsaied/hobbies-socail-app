package com.HobbyHub.Post;

import com.HobbyHub.User.User;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.List;

@Document(collection = "Courses")
public class Course extends Post {
    @Id
    private String id;
    private String imageUrl;
    private List<Post> contents;

    public Course(User creator, String title, String description, String hobby, String imageUrl) {
        super(creator, title, description, hobby);
        this.imageUrl = imageUrl;
        contents = new ArrayList<>();
    }

    @Override
    public String getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public List<Post> getContents() {
        List<Post> contents = new ArrayList<>();
        for (Post post : this.contents)
            contents.add(post);
        return contents;
    }

    public void addContent(Post post) {
        contents.add(post);
    }

    public void removeContent(Post post) {
        contents.remove(post);
    }
}

