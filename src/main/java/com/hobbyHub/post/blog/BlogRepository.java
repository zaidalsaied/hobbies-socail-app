package com.hobbyHub.post.blog;


import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import com.hobbyHub.user.User;
import java.util.List;

@Repository
public interface BlogRepository extends MongoRepository<Blog, String> {
    Blog findFirstById(String id);
    List<Blog> findByHobbyName(String hobbyName);
    List <Blog> findByCreator(User user);
}
