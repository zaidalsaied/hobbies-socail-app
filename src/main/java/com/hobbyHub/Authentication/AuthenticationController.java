package com.hobbyHub.Authentication;


import com.hobbyHub.user.User;
import com.hobbyHub.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Random;

@Controller
public class AuthenticationController { // WORK! please

    @Autowired
    private UserService userService;

    @RequestMapping("/main")
    public String main() { //for testing js and cs with jsp and html files
        return "main";
    }


    @RequestMapping("/loginForm")
    public String loginForm() {
        return "login";
    }

    @RequestMapping("/registerForm")
    public String registerForm() {
        return "register";
    }

    @PostMapping("/processRegister")
    public String register(HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String registerError = null;
        clearAttributes(request);

        if (firstName == null || lastName == null || username == null || email == null || password == null) {
            System.out.println(firstName + " " + lastName + " " + username + " " + email + " " + password);
            registerError = "can't read some values, make sure to fill all information!";
            request.setAttribute("registerError", registerError);
            return "register";
        }

        if (firstName.length() == 0 || lastName.length() == 0 || username.length() == 0 || email.length() == 0 || password.length() == 0) {
            registerError = "Fill all information!";
            request.setAttribute("registerError", registerError);
            return "register";
        }
        if (!password.equals(confirmPassword))
            registerError = "The two passwords are not equal!";

        if (password.length() < 6)
            registerError = "Password length is less than 6 characters!";

        if (firstName.length() < 3)
            registerError = "First name length is less that 3 characters!";

        if (lastName.length() < 3)
            registerError = "last name length is less that 3 characters!";

        if (username.length() < 3)
            registerError = "Username length is less that 3 characters!";

        if (userService.isExist(username))
            registerError = "This username is already used!";

        if (registerError != null) {
            request.setAttribute("registerError", registerError);
            return "register";
        }
        User user = new User(firstName, lastName, username, email, encryptPassword(password), pickRandomPic());
        userService.createUser(user);

        HttpSession session = request.getSession();
        session.setAttribute("user_username", username);
        session.setAttribute("user_first_name", firstName);
        session.setAttribute("user_last_name", lastName);
        session.setAttribute("user_email", email);
        session.setAttribute("user_id", user.getId());
        session.setAttribute("user_imageUrl", user.getImageUrl());
        return "about-hobbyhub";
    }

    @PostMapping("/processLogin")
    public String login(HttpServletRequest request) {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String loginError = null;
        clearAttributes(request);

        if (username == null || password == null) {
            loginError = "can't read some values, make sure to fill all information!";
            request.setAttribute("loginError", loginError);
            return "login";
        }

        if (username.length() == 0 || password.length() == 0) {
            loginError = "Fill all information!";
            request.setAttribute("loginError", loginError);
            return "login";
        }


        if (!userService.isExist(username)) {
            loginError = "This username is not registered!";
            request.setAttribute("loginError", loginError);
            return "login";
        }
        User user = userService.findByUsername(username);

        if (!user.getPassword().equals(encryptPassword(password))) {
            loginError = "Wrong password entered!";
            request.setAttribute("loginError", loginError);
            return "login";
        }

        HttpSession session = request.getSession();
        session.setAttribute("user_username", user.getUsername());
        session.setAttribute("user_first_name", user.getFirstName());
        session.setAttribute("user_last_name", user.getLastName());
        session.setAttribute("user_email", user.getEmail());
        session.setAttribute("user_id", user.getId());
        session.setAttribute("user_imageUrl", user.getImageUrl());

        return "about-hobbyhub";
    }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }


    private void clearAttributes(HttpServletRequest request) {
        Enumeration<String> attributes = request.getAttributeNames();
        while (attributes.hasMoreElements()) {
            String ele = attributes.nextElement();
            System.out.println(ele);
            request.removeAttribute(ele);
        }
    }


    private String pickRandomPic() {
        Random random = new Random(System.nanoTime());
        switch (random.nextInt(4)) { // CATS
            case 0 :
                return "https://c4.wallpaperflare.com/wallpaper/779/809/175/black-and-white-cat-with-colored-glasses-gray-scale-photo-of-cat-wearing-round-sunglasses-wallpaper-preview.jpg";
            case 1 :
                return "https://c4.wallpaperflare.com/wallpaper/547/217/266/cat-glasses-animals-selective-coloring-wallpaper-preview.jpg";
            case 2 :
                return "https://c4.wallpaperflare.com/wallpaper/690/720/866/nyan-cat-cat-glasses-digital-art-wallpaper-preview.jpg";
            default :
                return "https://c4.wallpaperflare.com/wallpaper/1020/921/305/artwork-digital-art-cat-glasses-wallpaper-preview.jpg";
        }
    }

    private String encryptPassword(String password) {
        if (password == null)
            throw new NullPointerException("password value is null!");

        try {
            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");

            // digest() method is called to calculate message digest
            //  of an input digest() return array of byte
            byte[] messageDigest = md.digest(password.getBytes());

            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);

            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }

        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

    }
}
