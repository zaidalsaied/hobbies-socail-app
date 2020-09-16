package com.hobbyHub.post.blog;


import com.hobbyHub.user.User;
import com.hobbyHub.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class BlogService { //please work
    @Autowired
    private BlogRepository blogRepository;
    @Autowired
    private UserRepository userRepository;

    public boolean createBlog(Blog blog) {
     if (blog == null)
        throw new NullPointerException("Blog value is null");

       if (blogRepository.findFirstById(blog.getId()) != null) {
        System.out.println(blog.getId() + " id is already exist");
         return false;
      }
        try {
            blogRepository.insert(blog);
        }
       catch (StackOverflowError e){e.getMessage();}

        return true;
    }
    public List<Blog>findAll(){
        return blogRepository.findAll();
    }

    public boolean updateBlog(Blog blog) {
        if (blog == null)
            throw new NullPointerException("Blog value is null");
        if (blogRepository.findFirstById(blog.getId()) != null) {
            System.out.println(blog.getId() + " id doesn't exist");
            return false;
        }
        blogRepository.save(blog);
        return true;
    }

    public List<Blog> getBlogsByHobbyName(String hobbyName) {
        if (hobbyName == null)
            throw new NullPointerException("Hobby name value is null");

        //findByHobbyName cause an error
        return blogRepository.findByHobbyName(hobbyName);
    }

    public List<Blog> getBlogsByCreator(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");

        return blogRepository.findByCreator(user);
    }

    //public List<Blog> findByLikesRange(int minLikes, int maxSaLikes) {}
}
