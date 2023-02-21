package com.example.usermanager.dao;

import com.example.usermanager.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    List<User> findUserByCountry(String country);
//    List<User> findUserInName(String name);

    List<User> sortByName(List<User> userList);
    List<User> sortByCountry(List<User> userList);
}
