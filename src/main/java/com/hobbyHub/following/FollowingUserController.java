package com.hobbyHub.following;

import com.hobbyHub.user.User;
import com.hobbyHub.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class FollowingUserController {
    @Autowired
    UserService userService;

    @RequestMapping("/{username}/follow")
    public String followHobby(@PathVariable(name = "username")String username, HttpServletRequest request, HttpServletResponse response) {
        User user = (User) request.getSession().getAttribute("user_object");
        if (user != null)
            {
           User followdUser = userService.findByUsername(username);
           if(followdUser==null)
              return "about-hobbyhub";

               if( user.getFollowings().contains(followdUser))
                   return "user-profile";
           user.follow(followdUser);

           userService.updateUser(user);

            }
            else
                try {
                    response.sendRedirect(request.getContextPath()+"/main");
                }
                catch (IOException e){
                    e.printStackTrace();
                }

        request.getSession().setAttribute("user_object", user);
        return "hobbies";

    }


}
