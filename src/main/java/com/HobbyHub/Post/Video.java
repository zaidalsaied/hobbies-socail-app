package com.HobbyHub.Post;

import com.HobbyHub.User.User;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Videos")
public class Video extends Post {
    @Id
    private String id;
    private String videoUrl;

    public Video(User creator, String title, String description, String hobby, String videoUrl) {
        super(creator, title, description, hobby);
        this.videoUrl = videoUrl;
    }

    @Override
    public String getId() {
        return null;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }
}
