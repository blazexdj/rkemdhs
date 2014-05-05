package com.guardon.workflow.impl;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

import com.guardon.workflow.WorkflowDAO;
import com.guardon.workflow.WorkflowService;
import com.guardon.workflow.domain.Workflow;

@Service("workflowService")
public class WorkflowServiceImpl implements WorkflowService{
	
	@Inject
	@Named("workflowDAO")
	WorkflowDAO workflowDAO;
	
	@Override
	public void insertWorkflow(Workflow workflow) throws Exception {
		workflowDAO.insertWorkflow(workflow);
	}

}
