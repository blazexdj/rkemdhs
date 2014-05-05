package com.guardon.workflow;

import com.guardon.workflow.domain.Workflow;

public interface WorkflowDAO {
	
	public void insertWorkflow(Workflow workflow) throws Exception;

}
