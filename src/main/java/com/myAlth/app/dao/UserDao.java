package com.myAlth.app.dao;

import com.myAlth.app.domain.User;

public interface UserDao {
    public abstract User findByUsername(String username);
}
