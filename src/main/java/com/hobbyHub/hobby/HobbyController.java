package com.hobbyHub.hobby;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/hobby")
public class HobbyController {
    @Autowired
    private HobbyService hobbyService;

    @RequestMapping(value = {"/{hobbyName}/about", "/{hobbyName}"})
    public String showHobby(@PathVariable(name = "hobbyName") String hobbyName, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Hobby hobby = hobbyService.findByName(hobbyName);
        session.setAttribute("hobby_object", hobby);
        return "hobby-view";
    }

}
