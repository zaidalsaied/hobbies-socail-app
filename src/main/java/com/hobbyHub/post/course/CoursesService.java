package com.hobbyHub.post.course;


import com.hobbyHub.user.User;
import com.hobbyHub.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CoursesService {
    @Autowired
    private CourseRepository courseRepository;
    @Autowired
    private UserRepository userRepository;

    public boolean createCourse(Course course) {
        if (course == null)
            throw new NullPointerException("Course value is null");

        if (courseRepository.findFirstById(course.getId()) != null) {
            System.out.println(course.getId() + " id is already exist");
            return false;
        }

        courseRepository.insert(course);
        return true;
    }

    public boolean updateCourse(Course course) {
        if (course == null)
            throw new NullPointerException("Blog value is null");
        if (courseRepository.findFirstById(course.getId()) != null) {
            System.out.println(course.getId() + " id doesn't exist");
            return false;
        }
        courseRepository.save(course);
        return true;
    }

    public List<Course> getCoursesByHobbyName(String hobbyName) {
        if (hobbyName == null)
            throw new NullPointerException("Hobby name value is null");

        return courseRepository.findByHobbyName(hobbyName);
    }

    public List<Course> getCoursesByCreator(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");

        return courseRepository.findByCreator(user);
    }
}
