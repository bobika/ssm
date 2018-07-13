package com.myAlth.app.dao;
import com.myAlth.app.model.Good;

public interface GoodDao {
	public abstract Good findByGoodid(String id);
}
