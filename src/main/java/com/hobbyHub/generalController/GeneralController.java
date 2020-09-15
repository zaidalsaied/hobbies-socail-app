package com.hobbyHub.generalController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController {

    @RequestMapping("/browse")
    public String browse() {
        return "hobbies";
    }

    @RequestMapping("/about")
    public String about() {
        return "about-hobbyhub";
    }
}
