package com.myAlth.app.dao;

import java.util.List;

import com.myAlth.app.model.ModelBean;

public interface ModelDao {
	public abstract ModelBean findModelByID(String modelID);
	public abstract void saveModel(ModelBean modelBean);
	public abstract List<ModelBean> findAllModel();
}
