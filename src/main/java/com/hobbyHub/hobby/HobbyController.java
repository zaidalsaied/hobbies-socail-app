package com.hobbyHub.hobby;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hobby")
public class HobbyController {
    @Autowired
    private HobbyRepository hobbyRepository;
    // ToDo

}
