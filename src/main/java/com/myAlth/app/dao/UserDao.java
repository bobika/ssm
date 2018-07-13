package com.myAlth.app.dao;

import com.myAlth.app.model.User;

public interface UserDao {
    public abstract User findByUsername(String username);
}
