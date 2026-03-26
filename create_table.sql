-- =======================
-- CANDIDATE
-- =======================
CREATE TABLE candidate (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255),
    dob DATE,
    email VARCHAR(255),
    experience INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- =======================
-- EXTERNAL TEST
-- =======================
CREATE TABLE external_test (
    id VARCHAR(50) PRIMARY KEY,
    candidate_id VARCHAR(50),
    test_date TIMESTAMP,
    result VARCHAR(255),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id)
);

-- =======================
-- RECRUITER
-- =======================
CREATE TABLE recruiter (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255),
    seniority_level VARCHAR(255)
);

-- =======================
-- RECRUITER ASSIGNMENT
-- =======================
CREATE TABLE recruiter_assignment (
    id VARCHAR(50) PRIMARY KEY,
    recruiter_id VARCHAR(50),
    assigned_at TIMESTAMP,
    job_requisition_id VARCHAR(50),
    FOREIGN KEY (recruiter_id) REFERENCES recruiter(id)
);

-- =======================
-- SOURCING ACTIVITY
-- =======================
CREATE TABLE sourcing_activity (
    id VARCHAR(50) PRIMARY KEY,
    candidate_id VARCHAR(50),
    sourced_at TIMESTAMP,
    source_platform VARCHAR(255),
    recruiter_id VARCHAR(50),
    job_requisition_id VARCHAR(50),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id),
    FOREIGN KEY (recruiter_id) REFERENCES recruiter(id)
);

-- =======================
-- CLIENT
-- =======================
CREATE TABLE client (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255)
);

-- =======================
-- ACCOUNT MANAGER
-- =======================
CREATE TABLE account_manager (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- =======================
-- JOB REQUISITION
-- =======================
CREATE TABLE job_requisition (
    id VARCHAR(50) PRIMARY KEY,
    job_title VARCHAR(255),
    location VARCHAR(255),
    created_at DATE,
    updated_at DATE,
    client_id VARCHAR(50),
    account_manager_id VARCHAR(50),
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (account_manager_id) REFERENCES account_manager(id)
);

-- =======================
-- JOB STATUS HISTORY
-- =======================
CREATE TABLE job_status_history (
    id VARCHAR(50) PRIMARY KEY,
    job_requisition_id VARCHAR(50),
    status VARCHAR(255),
    changed_at TIMESTAMP,
    reason VARCHAR(255),
    FOREIGN KEY (job_requisition_id) REFERENCES job_requisition(id)
);

-- =======================
-- OFFER
-- =======================
CREATE TABLE offer (
    id VARCHAR(50) PRIMARY KEY,
    candidate_id VARCHAR(50),
    job_requisition_id VARCHAR(50),
    generated_at DATE,
    accepted_at DATE,
    declined_at DATE,
    status VARCHAR(255),
    comments VARCHAR(255),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id),
    FOREIGN KEY (job_requisition_id) REFERENCES job_requisition(id)
);

-- =======================
-- ONBOARDING
-- =======================
CREATE TABLE onboarding (
    id VARCHAR(50) PRIMARY KEY,
    candidate_id VARCHAR(50),
    start_date TIMESTAMP,
    status VARCHAR(255),
    offer_id VARCHAR(50),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id),
    FOREIGN KEY (offer_id) REFERENCES offer(id)
);




-- =======================
-- STATEMENT OF WORK (SOW)
-- =======================
CREATE TABLE sow (
    id VARCHAR(50) PRIMARY KEY,
    job_requisition_id VARCHAR(50),
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    approved_at TIMESTAMP,
    FOREIGN KEY (job_requisition_id) REFERENCES job_requisition(id)
);

-- =======================
-- INTERVIEW
-- =======================
CREATE TABLE interview (
    id VARCHAR(50) PRIMARY KEY,
    scheduled_at DATE,
    updated_at DATE,
    interview_type VARCHAR(255),
    status VARCHAR(255),
    reschedule_reason VARCHAR(255),
    candidate_id VARCHAR(50),
    job_requisition_id VARCHAR(50),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id),
    FOREIGN KEY (job_requisition_id) REFERENCES job_requisition(id)
);

-- =======================
-- PANEL MEMBER
-- =======================
CREATE TABLE panel_member (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255)
);

-- =======================
-- INTERVIEW PANEL (Bridge Table)
-- =======================
CREATE TABLE interview_panel (
    id VARCHAR(50) PRIMARY KEY,
    panel_member_id VARCHAR(50),
    interview_id VARCHAR(50),
    role VARCHAR(255),
    FOREIGN KEY (panel_member_id) REFERENCES panel_member(id),
    FOREIGN KEY (interview_id) REFERENCES interview(id)
);

-- =======================
-- EVALUATION
-- =======================
CREATE TABLE evaluation (
    id VARCHAR(50) PRIMARY KEY,
    evaluated_at DATE,
    feedback VARCHAR(255),
    score FLOAT,
    decision VARCHAR(255),
    panel_member_id VARCHAR(50),
    interview_id VARCHAR(50),
    candidate_id VARCHAR(50),
    FOREIGN KEY (panel_member_id) REFERENCES panel_member(id),
    FOREIGN KEY (interview_id) REFERENCES interview(id),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id)
);
