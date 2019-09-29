package com.project.dao;

import java.util.*;
import com.project.model.ResultVO;
import com.project.model.UserXrayVO;

public interface UserXrayDAO {
	public void uploadXray(UserXrayVO userXrayVO);
	public List viewResult(UserXrayVO userXrayVO);
}
