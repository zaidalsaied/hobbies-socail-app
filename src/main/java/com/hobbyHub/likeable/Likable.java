package com.hobbyHub.likeable;


import com.hobbyHub.user.User;

import java.util.List;

public interface Likable {
    void addUserWhoLiked(User user);

    void removeUserWhoLiked(User user);

    void addUserWhoDisliked(User user);

    void removeUserWhoDisliked(User user);

    List<User> getUsersWhoLiked();

    List<User> getUsersWhoDisliked();

    int getNumberOfLikes();

    int getNumberOfDislikes();
}

