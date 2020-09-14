package com.hobbyHub.user;

import com.hobbyHub.hobby.Hobby;
import com.hobbyHub.post.blog.Blog;
import com.hobbyHub.post.course.Course;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.IndexDirection;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Document(collection = "Users")
public class User implements UserCreation {

    @Indexed(direction = IndexDirection.ASCENDING)
    private String firstName;
    @Indexed(direction = IndexDirection.ASCENDING)
    private String lastName;
    @Id
    private String username; // could be called ID
    private String email;
    private String password;
    private String imageUrl;
    private Date dateCreated;
    private List<Blog> publishedBlogs;
    private List<Blog> favoriteBlogs;
    private List<User> followings;
    private List<User> followers;
    private List<Hobby> hobbies;
    private List<Course> takenCourses;
    private List<Course> ownedCourses;


    public User() {
        publishedBlogs = new ArrayList<>();
        favoriteBlogs = new ArrayList<>();
        followings = new ArrayList<>();
        followers = new ArrayList<>();
        hobbies = new ArrayList<>();
        takenCourses = new ArrayList<>();
        ownedCourses = new ArrayList<>();
        dateCreated = new Date();
    }

    public User(String firstName, String lastName, String username, String email, String password, String imageUrl) {
        this();
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.email = email;
        this.password = password;
        this.imageUrl = imageUrl;
    }

    public String getId() {
        return username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public User getCreator() {
        return this;
    }

    @Override
    public Date getDateCreated() {
        return dateCreated;
    }

    public List<Blog> getPublishedBlogs() {
        List<Blog> publishedBlogs = new ArrayList<>();
        for (Blog blog : this.publishedBlogs)
            publishedBlogs.add(blog);
        return publishedBlogs;
    }

    public List<Blog> getFavoriteBlogs() {
        List<Blog> favoriteBlogs = new ArrayList<>();
        for (Blog blog : this.favoriteBlogs)
            favoriteBlogs.add(blog);
        return favoriteBlogs;
    }

    public List<User> getFollowings() {
        ArrayList<User> followings = new ArrayList<>();
        for (User user : this.followings)
            followings.add(user);
        return followings;
    }

    public List<User> getFollowers() {
        ArrayList<User> followers = new ArrayList<>();
        for (User user : this.followers)
            followers.add(user);
        return followers;
    }

    public List<Hobby> getHobbies() {
        List<Hobby> hobbies = new ArrayList<>();
        for (Hobby hobby : this.hobbies)
            hobbies.add(hobby);
        return hobbies;
    }

    public List<Course> getTakenCourses() {
        List<Course> takenCourses = new ArrayList<>();
        for (Course course : this.takenCourses)
            takenCourses.add(course);
        return takenCourses;
    }

    public List<Course> getOwnedCourses() {
        List<Course> ownedCourses = new ArrayList<>();
        for (Course course : this.ownedCourses)
            ownedCourses.add(course);
        return takenCourses;
    }

    public void addPublishedBlog(Blog blog) {
        publishedBlogs.add(blog);
    }

    public void addFavoriteBlog(Blog blog) {
        favoriteBlogs.add(blog);
    }

    public void follow(User user) {
        followings.add(user);
    }

    public void addFollowers(User user) {
        followers.add(user);
    }

    public void addHobby(Hobby hobby) {
        hobbies.add(hobby);
    }

    public void takeCourse(Course course) {
        takenCourses.add(course);
    }

    public void ownCourse(Course course) {
        ownedCourses.add(course);
    }

    public void removePublishedBlog(Blog blog) {
        publishedBlogs.remove(blog);
    }

    public void removeBlogFromFavorite(Blog blog) {
        favoriteBlogs.remove(blog);
    }

    public void removeUserFromFollowings(User user) {
        followings.remove(user);
    }

    public void removeUserFromFollowers(User user) {
        followers.remove(user);
    }

    public void removeHobby(Hobby hobby) {
        hobbies.remove(hobby);
    }

    public void removeTakenCourse(Course course) {
        takenCourses.remove(course);
    }

    public void removeOwnedCourse(Course course) {
        ownedCourses.remove(course);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return username.equals(user.username);
    }

    @Override
    public int hashCode() {
        return Objects.hash(username);
    }
}
