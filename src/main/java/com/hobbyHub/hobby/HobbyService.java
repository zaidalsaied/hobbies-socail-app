package com.hobbyHub.hobby;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HobbyService {

    @Autowired
    private HobbyRepository hobbyRepository;

    public Hobby findByName(String name) {
        if (name == null)
            throw new NullPointerException("Hobby name value is null");
        Hobby hobby = hobbyRepository.findByName(name);
        if (hobby == null)
            throw new IllegalAccessError(name + " name is not used in the database");
        return hobby;
    }


    public void updateHobby(Hobby hobby) {
        hobbyRepository.save(hobby);
    }
}
