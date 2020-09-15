package com.hobbyHub.following;

import com.hobbyHub.user.User;
import com.hobbyHub.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/followingHobby")
public class FollowingHobbiesController {

    @Autowired
    private UserService userService;


    @RequestMapping("/{hobbyName}")
    public String followHobby(@PathVariable(name = "hobbyName") String hobbyName, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user_object");
        if (user != null){
            if (user.getHobbies().contains(hobbyName))
                user.removeHobby(hobbyName);
            else
                user.addHobby(hobbyName);
            userService.updateUser(user);
        }

        request.getSession().setAttribute("user_object", user);
        return "hobbies";
    }
}
