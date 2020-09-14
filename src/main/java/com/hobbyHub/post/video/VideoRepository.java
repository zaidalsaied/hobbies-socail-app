package com.hobbyHub.post.video;


import com.hobbyHub.user.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoRepository extends MongoRepository<Video, String> {
    Video findFirstById(String id);
    List<Video> findByHobbyName(String hobbyName);
    List <Video> findByCreator(User user);
}
