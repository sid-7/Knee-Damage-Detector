package com.project.dao;

import java.util.List;
import com.project.model.DatasetVO;

public interface DatasetDAO {
	public List searchDataset(DatasetVO datasetVO);
	public void deleteDataset(DatasetVO datasetVO);
}
