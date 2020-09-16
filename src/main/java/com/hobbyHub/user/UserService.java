package com.hobbyHub.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public boolean createUser(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");
        if (isExist(user)) {
            System.out.println(user.getUsername() + " username is already used in the database");
            return false;
        }
        userRepository.insert(user);
        return true;
    }

    public boolean updateUser(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");
        if (!isExist(user)) {
            System.out.println(user.getUsername() + " username is not used in the database");
            return false;
        }
        userRepository.save(user);
        return true;
    }

    public User findByUsername(String username) {
        if (username == null)
            throw new NullPointerException("User name value is null");
        User user = userRepository.findByUsername(username);
        if (user == null)
            throw new IllegalAccessError(" username is not used in the database");

        return user;
    }


    public boolean isExist(User user) {
        if (user == null)
            throw new NullPointerException("User value is null");
        return userRepository.findByUsername(user.getUsername()) != null;
    }

    public boolean isExist(String username) {
        if (username == null)
            throw new NullPointerException("Username value is null");
        return userRepository.findByUsername(username) != null;
    }

}
