CREATE INDEX idx_candidate_email ON candidate(email);
CREATE INDEX idx_recruiter_seniority ON recruiter(seniority_level);
CREATE INDEX idx_jobreq_client ON job_requisition(client_id);
CREATE INDEX idx_jobreq_manager ON job_requisition(account_manager_id);
CREATE INDEX idx_account_manager_email ON account_manager(email);
CREATE INDEX idx_sourcing_recruiter ON sourcing_activity(recruiter_id);
CREATE INDEX idx_sourcing_jobreq ON sourcing_activity(job_requisition_id);
CREATE INDEX idx_sourcing_platform ON sourcing_activity(source_platform);

CREATE INDEX idx_rec_assign_recruiter ON recruiter_assignment(recruiter_id);
CREATE INDEX idx_rec_assign_jobreq ON recruiter_assignment(job_requisition_id);

CREATE INDEX idx_jobstatus_jobreq ON job_status_history(job_requisition_id);
CREATE INDEX idx_jobstatus_status ON job_status_history(status);
CREATE INDEX idx_interview_candidate ON interview(candidate_id);
CREATE INDEX idx_interview_jobreq ON interview(job_requisition_id);
CREATE INDEX idx_interview_status ON interview(status);

CREATE INDEX idx_intpanel_interview ON interview_panel(interview_id);
CREATE INDEX idx_exttest_candidate ON external_test(candidate_id);
CREATE INDEX idx_eval_candidate ON evaluation(candidate_id);
CREATE INDEX idx_eval_interview ON evaluation(interview_id);

CREATE INDEX idx_offer_candidate ON offer(candidate_id);
CREATE INDEX idx_offer_jobreq ON offer(job_requisition_id);
CREATE INDEX idx_offer_status ON offer(status);

CREATE INDEX idx_onboarding_candidate ON onboarding(candidate_id);
CREATE INDEX idx_onboarding_offer ON onboarding(offer_id);

CREATE INDEX idx_sow_client ON sow(client_id);
