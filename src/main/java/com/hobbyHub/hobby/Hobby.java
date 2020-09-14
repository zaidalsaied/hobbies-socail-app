package com.hobbyHub.hobby;


import com.hobbyHub.post.blog.Blog;
import com.hobbyHub.post.course.Course;
import com.hobbyHub.post.video.Video;
import com.hobbyHub.user.User;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.IndexDirection;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.List;

@Document(collection = "Hobbies")
public class Hobby {

    @Indexed(direction = IndexDirection.ASCENDING)
    @Id
    private String name; // could be called 'Id'
    private String description;
    private String imageUrl;
    private List<User> followers;
    private List<Blog> blogs;
    private List<Video> videos;
    private List<Course> courses;

    public Hobby(String name, String description, String imageUrl) {
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
        followers = new ArrayList<>();
        blogs = new ArrayList<>();
        videos = new ArrayList<>();
        courses = new ArrayList<>();
    }

    public String getId() { // The Id and name are the same
        return name;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void addFollower(User user) {
        followers.add(user);
    }

    public void removeFollower(User user) {
        followers.remove(user);
    }

    public List<User> getFollowers() {
        List<User> followers = new ArrayList<>();
        for (User follower : this.followers)
            followers.add(follower);
        return followers;
    }

    public void addBlog(Blog blog) {
        blogs.add(blog);
    }

    public void removeBlog(Blog blog) {
        blogs.remove(blog);
    }

    public List<Blog> getBlogs() {
        List<Blog> blogs = new ArrayList<>();
        for (Blog blog : this.blogs)
            blogs.add(blog);
        return blogs;
    }

    public void addVideo(Video video) {
        videos.add(video);
    }

    public void removeVideo(Video video) {
        videos.remove(video);
    }

    public List<Video> getVideos() {
        List<Video> videos = new ArrayList<>();
        for (Video video : this.videos)
            videos.add(video);
        return videos;
    }

    public void addCourse(Course course) {
        courses.add(course);
    }

    public void removeCourse(Course course) {
        courses.remove(course);
    }

    public List<Course> getCourses() {
        List<Course> courses = new ArrayList<>();
        for (Course course : this.courses) {
            courses.add(course);
        }
        return courses;
    }
}
