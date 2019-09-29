package com.project.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.DatasetDAO;
import com.project.model.DatasetVO;

@Service
public class DatasetService {
	@Autowired DatasetDAO datasetDAO;
	
	@Transactional
	public List searchDataset(DatasetVO datasetVO)
	{
	
		return datasetDAO.searchDataset(datasetVO);
	}

	@Transactional
	public void deleteDataset(DatasetVO datasetVO) {
		
		datasetDAO.deleteDataset(datasetVO);

	}

}
