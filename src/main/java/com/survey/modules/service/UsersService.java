package com.survey.modules.service;

import java.util.List;

import com.survey.modules.model.Users;

 
public interface UsersService {
 
	Users findByUserName(String username);
	public void addUser(Users user);
    public void updateUser(Users user);
    public List<Users> listUsers();
    public void removeUser(String username);
    
}