package com.guardon.workflow;

import java.util.ArrayList;
import java.util.Map;

import com.guardon.workflow.domain.Workflow;

public interface WorkflowService {
	public void insertWorkflow(Workflow workflow) throws Exception;
	
	public ArrayList<Workflow> getWorkflowList(String userId) throws Exception;
	
	public String getStep(Map<String, String> map) throws Exception;
	

}
