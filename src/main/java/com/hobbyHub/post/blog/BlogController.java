package com.hobbyHub.post.blog;

import com.hobbyHub.user.User;
import com.hobbyHub.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BlogController {

    @Autowired
    private BlogService blogService;
    @Autowired
    private UserService userService;
    @RequestMapping("/post")
    public String postBlog(){

        return "post-blog";
    }

    @PostMapping("/add")
    public String add(HttpServletRequest request){
    HttpSession session =request.getSession();
    User user=(User)session.getAttribute("user_object");
    if(user!=null) {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String body = request.getParameter("body");
        String hoppy=request.getParameter("hoppy");
        String imageUrl=request.getParameter("imageUrl");
        Blog blog =new Blog(user,title,description,hoppy,body,imageUrl);
        user.addPublishedBlog(blog);
        // update user cause StackOverFlow error.
        //userService.updateUser(user);
        blogService.createBlog(blog);
        return "blogs";
    }

    else{
        return "login";
    }

    }
}
