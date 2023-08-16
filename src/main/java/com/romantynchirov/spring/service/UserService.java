package com.romantynchirov.spring.service;

import com.romantynchirov.spring.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    void saveUser(User user);

    User getUser(int id);

    void deleteUser(int id);

    void updateUser(User user);
}
