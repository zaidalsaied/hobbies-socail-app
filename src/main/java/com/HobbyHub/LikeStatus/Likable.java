package com.HobbyHub.LikeStatus;


import com.HobbyHub.User.User;

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

