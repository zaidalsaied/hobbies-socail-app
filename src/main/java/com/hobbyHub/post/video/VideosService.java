package com.hobbyHub.post.video;


import com.hobbyHub.user.User;
import com.hobbyHub.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideosService {
    @Autowired
    private VideoRepository videoRepository;
    @Autowired
    private UserRepository userRepository;

    public boolean createBlog(Video video) {
        if (video == null)
            throw new NullPointerException("Video value is null");

        if (videoRepository.findFirstById(video.getId()) != null) {
            System.out.println(video.getId() + " id is already exist");
            return false;
        }

        videoRepository.insert(video);
        return true;
    }

    public boolean updateVideo(Video video) {
        if (video == null)
            throw new NullPointerException("Video value is null");
        if (videoRepository.findFirstById(video.getId()) != null) {
            System.out.println(video.getId() + " id doesn't exist");
            return false;
        }
        videoRepository.save(video);
        return true;
    }

    public List<Video> getVideosByHobbyName(String hobbyName) {
        if (hobbyName == null)
            throw new NullPointerException("Hobby name value is null");

        return videoRepository.findByHobbyName(hobbyName);
    }

    public List<Video> getVideosByCreator(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");

        return videoRepository.findByCreator(user);
    }
}
