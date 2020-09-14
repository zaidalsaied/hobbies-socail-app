package com.hobbyHub.likeable;


import com.hobbyHub.user.User;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class LikesStatus {
    private Set<User> usersWhoLiked;
    private Set<User> usersWhoDisliked;

    public LikesStatus() {
        usersWhoLiked = new HashSet<>();
        usersWhoDisliked = new HashSet<>();
    }

    public void addUserWhoLiked(User user) {
        usersWhoLiked.add(user);
    }

    public void removeUserWhoLiked(User user) {
        usersWhoLiked.remove(user);
    }

    public void addUserWhoDisliked(User user) {
        usersWhoDisliked.add(user);
    }

    public void removeUserWhoDisliked(User user) {
        usersWhoDisliked.remove(user);
    }

    public List<User> getUsersWhoLiked() {
        List<User> usersWhoLiked = new ArrayList<>();
        for (User user : this.usersWhoLiked)
            usersWhoLiked.add(user);
        return usersWhoLiked;
    }

    public List<User> getUsersWhoDisliked() {
        List<User> usersWhoDisliked = new ArrayList<>();
        for (User user : this.usersWhoDisliked)
            usersWhoDisliked.add(user);
        return usersWhoDisliked;
    }

    public int getNumberOfLikes() {
        return usersWhoLiked.size();
    }

    public int getNumberOfDislikes() {
        return usersWhoDisliked.size();
    }
}
