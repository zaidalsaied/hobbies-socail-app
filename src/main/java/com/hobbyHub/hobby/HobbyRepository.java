package com.hobbyHub.hobby;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HobbyRepository extends MongoRepository<Hobby, String> {
    Hobby findByName(String name);
}
