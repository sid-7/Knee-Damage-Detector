package com.project.dao;

import java.util.*;
import com.project.model.ResultVO;

public interface DoctorXrayDAO {
	public void uploadXray(ResultVO resultVO);
	public List viewResult(ResultVO resultVO);
}
