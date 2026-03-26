INSERT INTO client (id, name) VALUES ('e452c200', 'Horizon Tech Solutions');
INSERT INTO client (id, name) VALUES ('8030b136', 'Northbridge Financial Group');
INSERT INTO client (id, name) VALUES ('2e360c45', 'Evergreen Retail Holdings');
INSERT INTO client (id, name) VALUES ('5e03d5ad', 'Skyline Media & Communications');
INSERT INTO client (id, name) VALUES ('7c399358', 'Atlas Healthcare Systems');
INSERT INTO client (id, name) VALUES ('2e59fab9', 'BlueRiver Logistics Inc.');

INSERT INTO account_manager (id, name, email) VALUES ('cc9c143c8504', 'Avery Johnson', 'AveryJohnson@example.com');
INSERT INTO account_manager (id, name, email) VALUES ('82c3db4861ef', 'Hayden Harris', 'HaydenHarris@example.com');
INSERT INTO account_manager (id, name, email) VALUES ('611e1bad6fe4', 'Kendall Wilson', 'KendallWilson@example.com');
INSERT INTO account_manager (id, name, email) VALUES ('19aaa8f9d619', 'Morgan Martinez', 'MorganMartinez@example.com');
INSERT INTO account_manager (id, name, email) VALUES ('9747671af8f3', 'Nico Lee', 'NicoLee@example.com');
INSERT INTO account_manager (id, name, email) VALUES ('f95f6a2a1154', 'Sam Martinez', 'SamMartinez@example.com');

INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('b9e6-43a1', 'Business Analyst', 'Remote', '2022-05-27', '2023-12-17', 'e452c200', 'cc9c143c8504');
INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('4a54-4561', 'Data Engineer', 'SF', '2024-08-04', '2025-02-16', '8030b136', '82c3db4861ef');
INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('e7e8-4c40', 'Senior Software Engineer', 'SF', '2023-10-27', '2023-04-25', '2e360c45', '611e1bad6fe4');
INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('5071-4594', 'Software Engineer', 'Remote', '2024-04-01', '2024-07-02', '5e03d5ad', '19aaa8f9d619');
INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('c6bf-454f', 'Senior Software Engineer', 'Remote', '2023-03-12', '2025-10-19', '7c399358', '9747671af8f3');
INSERT INTO job_requisition (id, job_title, location, created_at, updated_at, client_id, account_manager_id) VALUES ('b1dd-4c2d', 'Data Engineer', 'SF', '2023-06-27', '2023-10-13', '2e59fab9', 'f95f6a2a1154');

INSERT INTO recruiter (id, name, seniority_level) VALUES ('2867addb', 'Reese Davis', 'Mid');
INSERT INTO recruiter (id, name, seniority_level) VALUES ('08bb4316', 'Drew Thomas', 'Lead');
INSERT INTO recruiter (id, name, seniority_level) VALUES ('53e3f830', 'Quinn Verma', 'Mid');
INSERT INTO recruiter (id, name, seniority_level) VALUES ('59a8242e', 'Hayden Wang', 'Mid');
INSERT INTO recruiter (id, name, seniority_level) VALUES ('da043ada', 'Casey Chen', 'Junior');
INSERT INTO recruiter (id, name, seniority_level) VALUES ('2ae758fe', 'Taylor Smith', 'Junior');

INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('14fb76dc', '2867addb', '2022-01-06 00:00:00', 'b9e6-43a1');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('5bc05899', '08bb4316', '2025-11-12 00:00:00', '5071-4594');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('69a23024', '2867addb', '2023-08-20 00:00:00', 'c6bf-454f');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('bcf3c119', '53e3f830', '2023-08-14 00:00:00', '4a54-4561');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('7a0b9d65', '59a8242e', '2025-12-10 00:00:00', 'c6bf-454f');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('14e43f44', 'da043ada', '2022-05-26 00:00:00', 'e7e8-4c40');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('69da6120', '2ae758fe', '2023-06-26 00:00:00', 'b1dd-4c2d');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('231e5247', '59a8242e', '2025-07-04 00:00:00', '4a54-4561');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('a59064a0', '2ae758fe', '2023-02-10 00:00:00', '5071-4594');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('c12cf46e', '2ae758fe', '2025-01-20 00:00:00', 'b1dd-4c2d');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('f57f704c', '53e3f830', '2022-11-02 00:00:00', 'e7e8-4c40');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('192205b6', 'da043ada', '2022-10-19 00:00:00', 'c6bf-454f');
INSERT INTO recruiter_assignment (id, recruiter_id, assigned_at, job_requisition_id) VALUES ('0cc5c2bf', '08bb4316', '2022-12-06 00:00:00', 'b9e6-43a1');

INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('98818bb0', 'Leila Martinez', '1999-11-18', 'Leila.Martinez@example.com', 3, '2022-10-03 00:00:00', '2023-06-26 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('641fbbf8', 'Leila Moore', '1991-02-10', 'Leila.Moore@example.com', 9, '2025-05-23 00:00:00', '2023-03-08 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('17a34e1d', 'Rowan Lopez', '1995-12-17', 'Rowan.Lopez@example.com', 8, '2022-04-15 00:00:00', '2022-07-09 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('e68fc474', 'Jordan Smith', '1992-06-25', 'Jordan.Smith@example.com', 4, '2025-07-28 00:00:00', '2023-06-21 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('dd71ab7f', 'Leila Verma', '1997-07-31', 'Leila.Verma@example.com', 0, '2022-08-18 00:00:00', '2022-06-04 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('12845a9e', 'Kai Moore', '1994-08-22', 'Kai.Moore@example.com', 4, '2022-03-27 00:00:00', '2023-09-24 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('3dc2e8cf', 'Blake Jackson', '2000-04-19', 'Blake.Jackson@example.com', 7, '2025-09-27 00:00:00', '2022-07-30 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('45133c73', 'Jamie Harris', '1988-08-24', 'Jamie.Harris@example.com', 5, '2024-04-24 00:00:00', '2022-02-20 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('8ecd39c9', 'Micah Harris', '1990-12-26', 'Micah.Harris@example.com', 5, '2025-12-07 00:00:00', '2022-08-10 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('1ee5d987', 'Jane White', '1989-06-23', 'Jane.White@example.com', 14, '2023-12-18 00:00:00', '2023-09-18 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('38108624', 'Sam Thomas', '1993-12-09', 'Sam.Thomas@example.com', 10, '2023-07-25 00:00:00', '2022-05-23 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('b7a15d55', 'Steve Ross', '2000-03-29', 'Steve.Ross@example.com', 10, '2022-02-26 00:00:00', '2022-08-25 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('cb0209d0', 'Rowan Lee', '1987-06-08', 'Rowan.Lee13@example.com', 13, '2023-12-09 00:00:00', '2023-10-05 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('d5345435', 'Kyle Robinson', '1997-12-07', 'Kyle.Robinson14@example.com', 6, '2023-06-06 00:00:00', '2022-04-01 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('75a24a0b', 'Vikram Thomas', '1993-03-03', 'Vikram.Thomas15@example.com', 13, '2022-05-24 00:00:00', '2025-09-22 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('a0b2304d', 'Avery Martinez', '1996-05-17', 'Avery.Martinez16@example.com', 9, '2025-09-27 00:00:00', '2024-04-16 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('331b7c19', 'Emerson Wilson', '1989-04-21', 'Emerson.Wilson17@example.com', 13, '2025-09-23 00:00:00', '2024-02-16 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('32e66d36', 'Jesse Smith', '1991-10-26', 'Jesse.Smith18@example.com', 9, '2023-03-07 00:00:00', '2024-05-30 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('e1d80291', 'Dallas Chandler', '2000-02-26', 'Dallas.chandler19@example.com', 6, '2024-11-12 00:00:00', '2024-08-27 00:00:00');
INSERT INTO candidate (id, name, dob, email, experience, created_at, updated_at) VALUES ('b9d03d15', 'Emerson Lopez', '1999-11-22', 'Emerson.Lopez20@example.com', 10, '2022-07-11 00:00:00', '2023-04-27 00:00:00');

INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('5fb3410a', 'd5345435', '2022-07-06 00:00:00', 'AngelList', '2867addb', 'b9e6-43a1');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('fecc0129', 'b9d03d15', '2023-10-20 00:00:00', 'LinkedIn', '08bb4316', '4a54-4561');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('973f02f1', 'd5345435', '2024-04-23 00:00:00', 'AngelList', '53e3f830', 'c6bf-454f');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('de45f84d', 'cb0209d0', '2025-01-31 00:00:00', 'LinkedIn', '2ae758fe', 'e7e8-4c40');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('cb0e3957', 'e1d80291', '2023-06-01 00:00:00', 'Referral', '2ae758fe', 'b9e6-43a1');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('a6120f7c', '331b7c19', '2024-11-19 00:00:00', 'LinkedIn', '53e3f830', '4a54-4561');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('699b4764', '17a34e1d', '2024-08-04 00:00:00', 'AngelList', 'da043ada', '5071-4594');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('845dc2a9', '98818bb0', '2024-01-11 00:00:00', 'Indeed', '53e3f830', 'c6bf-454f');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('d21cc6au', '17a34e1d', '2024-06-24 00:00:00', 'LinkedIn', '2867addb', 'b1dd-4c2d');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('76b0fa48', '45133c73', '2022-09-26 00:00:00', 'Referral', '59a8242e', 'e7e8-4c40');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('8740c501', '3dc2e8cf', '2024-09-19 00:00:00', 'LinkedIn', '2867addb', 'b9e6-43a1');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('bb6a262e', '38108624', '2023-05-06 00:00:00', 'Indeed', 'da043ada', '4a54-4561');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('4911795d', 'a0b2304d', '2025-02-05 00:00:00', 'Dice', '2ae758fe', '5071-4594');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('71c934ce', 'e68fc474', '2022-08-21 00:00:00', 'AngelList', '08bb4316', 'b1dd-4c2d');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('f6754e7d', '641fbbf8', '2022-11-12 00:00:00', 'AngelList', '59a8242e', '5071-4594');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('0a75daf7', '98818bb0', '2024-11-08 00:00:00', 'Referral', 'da043ada', 'b1dd-4c2d');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('ed555d87', 'b7a15d55', '2024-08-25 00:00:00', 'Indeed', '2867addb', 'c6bf-454f');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('aafd4d08', '12845a9e', '2024-02-25 00:00:00', 'Indeed', '53e3f830', 'e7e8-4c40');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('47e6a786', '8ecd39c9', '2022-10-07 00:00:00', 'LinkedIn', '2ae758fe', 'b9e6-43a1');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('cdbf3ca4', 'cb0209d0', '2024-04-29 00:00:00', 'Referral', '59a8242e', '4a54-4561');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('b7885174', '38108624', '2023-07-02 00:00:00', 'LinkedIn', '08bb4316', '5071-4594');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('69f9da66', '331b7c19', '2025-04-17 00:00:00', 'Dice', 'da043ada', 'c6bf-454f');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('a46e83d0', '641fbbf8', '2022-11-01 00:00:00', 'AngelList', '59a8242e', 'e7e8-4c40');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('13df4876', 'dd71ab7f', '2023-11-12 00:00:00', 'Dice', 'da043ada', 'c6bf-454f');
INSERT INTO sourcing_activity (id, candidate_id, sourced_at, source_platform, recruiter_id, job_requisition_id) VALUES ('81e5445b', '75a24a0b', '2024-07-21 00:00:00', 'Referral', '53e3f830', 'e7e8-4c40');


INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('81c90532', '17a34e1d', '2024-06-21 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('5fe852b2', '641fbbf8', '2024-01-18 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('186f402a', '45133c73', '2022-07-04 00:00:00', 'Fail');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('beda5c3b', '98818bb0', '2024-04-30 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('c79c5f10', 'fecc0129', '2022-09-28 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('c630d3a9', 'cb0209d0', '2024-01-20 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('510722df', 'b7a15d55', '2023-07-13 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('5b5171dc', '75a24a0b', '2024-09-13 00:00:00', 'Fail');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('24d66058', 'b9d03d15', '2023-11-25 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('f8385d12', '45133c73', '2022-06-04 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('63ee8885', '98818bb0', '2023-04-08 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('dbb56fe5', 'fecc0129', '2025-10-13 00:00:00', 'Fail');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('cf37864b', '8ecd39c9', '2025-02-15 00:00:00', 'Fail');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('f7d24c5b', 'cb0209d0', '2024-03-19 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('d90b9268', 'b7a15d55', '2025-01-03 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('714aba02', '38108624', '2024-01-25 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('13caecf3', '75a24a0b', '2025-10-08 00:00:00', 'Fail');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('3b6e1426', 'fecc0129', '2024-02-20 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('027ce99e', '98818bb0', '2022-08-10 00:00:00', 'Pending');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('5afa1ead', '45133c73', '2024-08-23 00:00:00', 'Pass');
INSERT INTO external_test (id, candidate_id, test_date, result) VALUES ('21af95f2', 'b9d03d15', '2025-02-23 00:00:00', 'Fail');


INSERT INTO panel_member (id, name) VALUES ('4bbe28a0', 'Morgan Chen');
INSERT INTO panel_member (id, name) VALUES ('807cd085', 'Steve White');
INSERT INTO panel_member (id, name) VALUES ('09b2db45', 'Jordan Hernandez');
INSERT INTO panel_member (id, name) VALUES ('a6b9e182', 'Sage Wang');
INSERT INTO panel_member (id, name) VALUES ('d34907b3', 'Sam Brown');
INSERT INTO panel_member (id, name) VALUES ('50f9cbc1', 'Jane Riaz');
INSERT INTO panel_member (id, name) VALUES ('a7e18085', 'Nico Davis');
INSERT INTO panel_member (id, name) VALUES ('959fc0d0', 'Patty Chen');
INSERT INTO panel_member (id, name) VALUES ('1f8a9b8f', 'Casey Martinez');
INSERT INTO panel_member (id, name) VALUES ('c433a27d', 'Harper Moore');


INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('b5d4c4de', '2024-04-27 00:00:00', '2023-11-26', 'Onsite', 'Rescheduled', 'Candidate request', '98818bb0', 'b9e6-43a1');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('c1e6a86b', '2023-10-03 00:00:00', '2024-05-24', 'Onsite', 'Cancelled', 'Other', '641fbbf8', '4a54-4561');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('c498a944', '2024-08-29 00:00:00', '2022-05-18', 'Phone', 'Scheduled', 'Candidate request', 'e68fc474', 'e7e8-4c40');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('6a979255', '2024-02-03 00:00:00', '2022-09-24', 'Video', 'Scheduled', 'Other', '98818bb0', '5071-4594');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('e2a5455b', '2024-04-21 00:00:00', '2023-12-26', 'Video', 'Rescheduled', 'Candidate request', '641fbbf8', 'b9e6-43a1');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('d9e03bfd', '2023-10-02 00:00:00', '2023-12-22', 'Phone', 'Completed', '', 'dd71ab7f', '4a54-4561');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('3c93c766', '2023-04-05 00:00:00', '2022-08-10', 'Onsite', 'Cancelled', 'Candidate request', '1ee5d987', 'e7e8-4c40');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('bced34b6', '2025-03-21 00:00:00', '2023-04-09', 'Onsite', 'Scheduled', 'Other', '98818bb0', 'c6bf-454f');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('2d4f8459', '2023-07-14 00:00:00', '2025-12-10', 'Onsite', 'Cancelled', 'Other', '641fbbf8', '5071-4594');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('9c9466a0', '2022-10-21 00:00:00', '2025-03-05', 'Video', 'Rescheduled', 'Candidate request', 'e68fc474', 'b9e6-43a1');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('344699a2', '2025-07-20 00:00:00', '2022-03-04', 'Phone', 'Completed', '', 'dd71ab7f', '4a54-4561');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('c066bda3', '2023-11-30 00:00:00', '2022-11-19', 'Onsite', 'Cancelled', 'Other', '98818bb0', 'e7e8-4c40');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('b7c67b2e', '2025-05-06 00:00:00', '2022-06-23', 'Phone', 'Completed', '', '641fbbf8', 'c6bf-454f');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('0e418701', '2022-04-12 00:00:00', '2025-10-12', 'Phone', 'Cancelled', 'Interviewer unavailable', 'e68fc474', 'b9e6-43a1');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('f8a8eb5d', '2024-09-21 00:00:00', '2025-05-28', 'Onsite', 'Rescheduled', 'Other', 'b7a15d55', '4a54-4561');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('ecd648e1', '2024-11-15 00:00:00', '2022-08-22', 'Onsite', 'Rescheduled', 'Candidate request', '75a24a0b', '5071-4594');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('c286fe3b', '2025-10-21 00:00:00', '2025-04-29', 'Onsite', 'Cancelled', 'Candidate request', 'a0b2304d', 'b1dd-4c2d');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('44b5a1fd', '2025-05-12 00:00:00', '2022-04-23', 'Phone', 'Completed', '', '17a34e1d', 'c6bf-454f');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('8cc30982', '2022-10-09 00:00:00', '2023-06-08', 'Onsite', 'Cancelled', 'Candidate request', '75a24a0b', 'b1dd-4c2d');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('7ac54f09', '2024-05-31 00:00:00', '2022-12-26', 'Phone', 'Rescheduled', 'Interviewer unavailable', '3dc2e8cf', 'e7e8-4c40');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('cc318050', '2025-09-30 00:00:00', '2023-12-27', 'Phone', 'Rescheduled', 'Candidate request', 'e68fc474', '5071-4594');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('789a349b', '2024-07-30 00:00:00', '2022-06-09', 'Onsite', 'Rescheduled', 'Interviewer unavailable', 'd5345435', 'b9e6-43a1');
INSERT INTO interview (id, scheduled_at, updated_at, interview_type, status, reschedule_reason, candidate_id, job_requisition_id) VALUES ('8744464d', '2024-05-05 00:00:00', '2023-08-16', 'Phone', 'Rescheduled', 'Candidate request', '641fbbf8', '4a54-4561');


INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('90b74fb2', '807cd085', '8744464d', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('9ee045a2', '4bbe28a0', 'f8a8eb5d', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('864e3798', '09b2db45', '9c9466a0', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('544f6dea', 'a6b9e182', 'd9e03bfd', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('468de41e', 'd34907b3', 'c1e6a86b', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('1f2ce1bc', '4bbe28a0', '8744464d', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('7a5790d3', '50f9cbc1', '344699a2', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('73f6f7f5', '807cd085', 'b5d4c4de', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('93461bdf', 'a6b9e182', 'f8a8eb5d', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('14a1d079', 'a7e18085', '7ac54f09', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('febce533', '959fc0d0', '2d4f8459', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('3c387034', '1f8a9b8f', '9c9466a0', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('695f5477', 'c433a27d', 'c1e6a86b', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('5890b022', '807cd085', 'd9e03bfd', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('94bc6b56', '09b2db45', '8744464d', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('f3af5a3a', 'a6b9e182', '344699a2', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('49634135', '1f8a9b8f', 'ecd648e1', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('b55b0469', '959fc0d0', '7ac54f09', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('09a24ce9', 'a7e18085', '9c9466a0', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('40ad1f26', '4bbe28a0', '2d4f8459', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('9aae164f', '807cd085', 'b5d4c4de', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('5e4ab812', '09b2db45', 'f8a8eb5d', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('d4f41049', '959fc0d0', '7ac54f09', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('b390c9a9', '09b2db45', 'd9e03bfd', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('e9ab7489', '1f8a9b8f', 'c1e6a86b', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('0c7d91b9', 'a6b9e182', '8744464d', 'Interviewer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('812cd658', 'c433a27d', '344699a2', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('ecb87424', '4bbe28a0', '2d4f8459', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('5d14860c', '807cd085', 'f8a8eb5d', 'Observer');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('33526f87', '09b2db45', 'f8a8eb5d', 'Chair');
INSERT INTO interview_panel (id, panel_member_id, interview_id, role) VALUES ('aeebfd96', '959fc0d0', 'b5d4c4de', 'Chair');



INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('10920ec2', '2023-05-17', 'Strong fit', 2.19, 'Proceed', '807cd085', 'b5d4c4de', '98818bb0');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('e4e5814d', '2025-11-11', 'Strong fit', 1.63, 'Hold', '959fc0d0', 'c1e6a86b', '641fbbf8');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('57deede0', '2024-09-18', 'Weak', 1.82, 'Reject', '1f8a9b8f', 'c498a944', 'e68fc474');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('400f56e3', '2022-10-22', 'Average', 4.45, 'Hold', 'c433a27d', '6a979255', '98818bb0');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('8fc8d241', '2023-12-09', 'Weak', 1.52, 'Hold', '807cd085', 'e2a5455b', '641fbbf8');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('adde1c33', '2024-11-20', 'No show', 1.42, 'Reject', '09b2db45', 'd9e03bfd', 'dd71ab7f');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('6feb209c', '2024-08-13', 'Strong fit', 2.07, 'Proceed', '4bbe28a0', '3c93c766', '1ee5d987');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('229a5e0a', '2022-10-16', 'Strong fit', 1.2, 'Proceed', '1f8a9b8f', 'bced34b6', '98818bb0');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('52b8d78d', '2025-06-14', 'Weak', 1.99, 'Reject', '09b2db45', '2d4f8459', '641fbbf8');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('6a1a138a', '2023-11-02', 'No show', 3.88, 'Hold', 'a6b9e182', '9c9466a0', 'e68fc474');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('96fd620e', '2022-11-23', 'Weak', 4.98, 'Hold', '50f9cbc1', '344699a2', 'dd71ab7f');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('71271fcd', '2024-10-18', 'Strong fit', 2.99, 'Proceed', 'a7e18085', 'c066bda3', '98818bb0');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('50fc3788', '2024-03-16', 'Strong fit', 2.83, 'Proceed', '959fc0d0', 'b7c67b2e', '641fbbf8');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('8ba7d395', '2023-03-17', 'Strong fit', 2.41, 'Proceed', '1f8a9b8f', '0e418701', 'e68fc474');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('0d50f410', '2023-07-31', 'Weak', 3.39, 'Reject', 'c433a27d', 'f8a8eb5d', 'b7a15d55');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('464dbcaf', '2025-10-09', 'Weak', 2.14, 'Reject', '4bbe28a0', 'ecd648e1', '75a24a0b');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('b6db94bd', '2022-08-09', 'No show', 1.54, 'Hold', '807cd085', 'c286fe3b', 'a0b2304d');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('65b549e3', '2024-01-20', 'No show', 2.46, 'Hold', '09b2db45', '44b5a1fd', '17a34e1d');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('ce7ceb0d', '2022-04-15', 'Average', 3.25, 'Proceed', 'a6b9e182', '8cc30982', '75a24a0b');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('e2a4c9ae', '2025-02-07', 'Weak', 1.29, 'Reject', 'd34907b3', 'cc318050', 'e68fc474');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('850ba41e', '2024-07-11', 'No show', 2.12, 'Reject', '50f9cbc1', '789a349b', 'd5345435');
INSERT INTO evaluation (id, evaluated_at, feedback, score, decision, panel_member_id, interview_id, candidate_id) VALUES ('c47f87d7', '2025-10-25', 'Strong fit', 1.48, 'Proceed', 'a7e18085', '8744464d', '641fbbf8');

INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('9b03a9a4', '641fbbf8', '641fbbf8', '2023-11-02', NULL, NULL, 'Withdrawn', 'Negotiation ongoing');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('31506a7a', '75a24a0b', 'e68fc474', '2024-05-08', NULL, NULL, 'Withdrawn', 'Competitive package');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('b50f5c95', 'e68fc474', 'e68fc474', '2025-08-06', '2025-08-06', NULL, 'Accepted', '');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('b9923560', 'e8d302e8-9b48-4742-90d1-0075b658ca16', '7fba9b30-65ba-40f7-8b18-b8b56d85b8cc', '2025-12-21', NULL, NULL, 'Withdrawn', 'Competitive package');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('bc4225dc', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '0625d70d-c920-46e5-880a-28dd71936595', '2024-02-21', NULL, '2024-02-21', 'Declined', 'Negotiation ongoing');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('af6b0095', 'ca186fef-9ae4-4289-814e-d47c577caab5', 'd84af4ef-e7e8-4c40-9213-0999b070a6fe', '2025-01-29', NULL, NULL, 'Withdrawn', '');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('bcf62030', '53309210-bbc7-478d-b29f-700c380b2b2e', '507a3f78-b6eb-43c2-a1d6-18bd902c713d', '2023-04-16', '2023-04-16', NULL, 'Accepted', 'Negotiation ongoing');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('dd969319', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '7991a782-2e92-43aa-aeb6-cf28e8843216', '2023-05-30', NULL, NULL, 'Pending', 'Competitive package');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('a3a20c48', '25f5af5e-c903-43bf-944c-908d32ed8a14', 'f64cc15a-45db-4ba5-8247-4ef798e3bad8', '2025-09-08', '2025-09-08', NULL, 'Accepted', 'Competitive package');
INSERT INTO offer (id, candidate_id, job_requisition_id, generated_at, accepted_at, declined_at, status, comments) VALUES ('44738211', 'ef14bbdc-5693-40d4-975e-3ae84a0d2568', '27d77499-357a-4abd-b970-cfc149e17adf', '2024-09-12', NULL, '2024-09-12', 'Declined', '');


INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('59aad71c', 'e728170b-8a58-4880-9cb1-eddceb4197be', '2022-07-17 00:00:00', 'Completed', '2d3ee9f1-2eb8-43c4-96b0-eb54916929ad');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('91d1c0a4', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '2023-05-09 00:00:00', 'Started', 'bc4225dc-b7f9-4624-a790-5b129f39288a');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('21d58a41', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '2024-12-14 00:00:00', 'Pending', 'b4e7a5a2-ae37-43cf-8857-9b25752f4df7');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('934093d4', '1f526662-4163-4477-be4c-2a767473fca3', '2023-12-27 00:00:00', 'Pending', 'f8a07f67-ccdd-4dcb-a666-13fdd52fbdc9');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('1c170350', '98818bb0-1db9-4993-984c-c13ff009a8f2', '2024-03-23 00:00:00', 'Started', '83f85e07-db1a-4d00-b909-af198e7fc681');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('46cc88eb', '704db74e-1f7e-462f-ab1c-86d11244f155', '2024-04-11 00:00:00', 'Pending', 'c3ef7f9a-783d-40eb-b181-5dd83c3b5dcf');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('bee150de', 'e1d80291-d05d-4bf3-a084-a238b7c5bd9f', '2023-05-14 00:00:00', 'Completed', 'e3f2e65c-f04e-4712-be88-855eedc9d7b1');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('b9e8893b', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '2023-09-07 00:00:00', 'Completed', 'dd969319-a313-4bd2-894e-7d77881705be');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('c2d0e282', '1f526662-4163-4477-be4c-2a767473fca3', '2022-06-15 00:00:00', 'Completed', 'f8a07f67-ccdd-4dcb-a666-13fdd52fbdc9');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('acc771ec', '98818bb0-1db9-4993-984c-c13ff009a8f2', '2025-08-23 00:00:00', 'Started', 'ccf43aee-b44f-4055-8607-d235e7994a7c');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('8923b72c', 'b9d03d15-5ded-4625-a265-b8f57760369b', '2024-04-10 00:00:00', 'Pending', 'b50f5c95-21a7-4567-bf98-a941622a6ee1');
INSERT INTO onboarding (id, candidate_id, start_date, status, offer_id) VALUES ('71745a54', '8946b4a0-d1df-4da5-98f6-4bd0b1001f07', '2025-07-28 00:00:00', 'Started', '31506a7a-4f09-48f0-b82d-c01b8544c11d');


INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('5d6ea8fe', '507a3f78-b6eb-43c2-a1d6-18bd902c713d', '2025-06-11 00:00:00', '2023-02-09 00:00:00', '2024-07-09 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('afccc219', 'da1c59fa-f456-40e4-a4a9-9ff1b20e1a92', '2024-05-29 00:00:00', '2024-03-07 00:00:00', '2022-01-10 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('b3686805', '0a38a28d-e7fa-4dae-8666-1c8c130239c7', '2023-03-16 00:00:00', '2023-02-26 00:00:00', '2023-07-25 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('48a28ae3', 'f64cc15a-45db-4ba5-8247-4ef798e3bad8', '2025-12-12 00:00:00', '2022-05-09 00:00:00', '2025-03-28 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('70ead74c', 'de71fc34-5071-4594-a369-65bd2c4ae21c', '2025-01-04 00:00:00', '2023-01-18 00:00:00', '2024-01-20 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('9b27b9d8', 'deae4536-b7e5-4e23-822d-a0c295751f98', '2023-02-08 00:00:00', '2024-07-26 00:00:00', '2022-08-22 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('80ed90d8', '53ad13da-61a4-4b08-8a52-72f237b73b4f', '2025-10-05 00:00:00', '2024-09-29 00:00:00', '2024-12-16 00:00:00');
INSERT INTO sow (id, job_requisition_id, start_date, end_date, approved_at) VALUES ('e8d20a21', '57de6d64-d04e-4585-ab5a-bf30b2439d81', '2023-10-04 00:00:00', '2025-05-07 00:00:00', '2024-03-06 00:00:00');




