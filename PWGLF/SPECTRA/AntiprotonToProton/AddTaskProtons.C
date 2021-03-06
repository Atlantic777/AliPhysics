AliAnalysisTaskProtons *AddTaskProtons(Bool_t kAnalyzeMC = kFALSE,
				       const char *analysisType="Hybrid",
				       const char *pidMode="Bayesian")
{
  // Creates a proton analysis task and adds it to the analysis manager.
  
  // Get the pointer to the existing analysis manager via the static access method.
  //==============================================================================
  AliAnalysisManager *mgr = AliAnalysisManager::GetAnalysisManager();
  if (!mgr) {
    ::Error("AddTaskProtons", "No analysis manager to connect to.");
    return NULL;
  }   
  
  // Check the analysis type using the event handlers connected to the analysis manager.
  //==============================================================================
  if (!mgr->GetInputEventHandler()) {
    ::Error("AddTaskProtons", "This task requires an input event handler");
    return NULL;
  }   
  TString type = mgr->GetInputEventHandler()->GetDataType(); // can be "ESD" or "AOD"
  gROOT->LoadMacro("$ALICE_ROOT/PWG2/SPECTRA/macros/configProtonAnalysis.C");
  AliProtonAnalysis *pa = 0;
  if (type=="ESD") pa = GetProtonAnalysisObject("ESD", kAnalyzeMC, 
						analysisType, pidMode);
  else if (type=="AOD") pa = GetProtonAnalysisObject("AOD", kAnalyzeMC, 
						     analysisType, pidMode);
  else pa = GetProtonAnalysisObject("MC", analysisType, kAnalyzeMC, pidMode);

  // Create the task, add it to manager and configure it.
  //===========================================================================
  AliAnalysisTaskProtons *taskproton = new AliAnalysisTaskProtons("TaskProtons");
  mgr->AddTask(taskproton);
  taskproton->SetAnalysisObject(pa);

  // Create ONLY the output containers for the data produced by the task.
  // Get and connect other common input/output containers via the manager as below
  //==============================================================================
  TString outputFileName = AliAnalysisManager::GetCommonFileName();
  outputFileName += ":PWG2BaryonRatioAnalysis";
  AliAnalysisDataContainer *cout_proton = mgr->CreateContainer("outputList", TList::Class(),AliAnalysisManager::kOutputContainer,outputFileName.Data());
  AliAnalysisDataContainer *cout_proton_QA = mgr->CreateContainer("outputQAList", TList::Class(),AliAnalysisManager::kOutputContainer,outputFileName.Data());

  mgr->ConnectInput(taskproton, 0, mgr->GetCommonInputContainer());
  mgr->ConnectOutput(taskproton, 0, cout_proton);
  mgr->ConnectOutput(taskproton, 1, cout_proton_QA);
  
  // Return task pointer at the end
  return taskproton;
}
