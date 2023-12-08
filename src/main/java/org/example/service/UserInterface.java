package org.example.service;


import org.example.dto.RegisterDto;
import org.example.model.UserEntity;

public interface UserInterface  {
    void saveUser(RegisterDto registrationDto);
    UserEntity findByEmail(String email);
    UserEntity findByUsername(String username);
}
