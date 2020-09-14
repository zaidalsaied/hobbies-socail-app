package com.hobbyHub.post.course;


import com.hobbyHub.user.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseRepository extends MongoRepository<Course, String> {
    Course findFirstById(String id);
    List<Course> findByHobbyName(String hobbyName);
    List <Course> findByCreator(User user);
}
