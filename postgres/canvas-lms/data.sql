--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: abstract_courses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.abstract_courses (id, sis_source_id, sis_batch_id, account_id, root_account_id, short_name, name, created_at, updated_at, enrollment_term_id, workflow_state, stuck_sis_fields) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.users (id, name, sortable_name, workflow_state, time_zone, uuid, created_at, updated_at, avatar_image_url, avatar_image_source, avatar_image_updated_at, phone, school_name, school_position, short_name, deleted_at, show_user_services, gender, page_views_count, reminder_time_for_due_dates, reminder_time_for_grading, storage_quota, visible_inbox_types, last_user_note, subscribe_to_emails, features_used, preferences, avatar_state, locale, browser_locale, unread_conversations_count, stuck_sis_fields, public, birthdate, otp_secret_key_enc, otp_secret_key_salt, otp_communication_channel_id, initial_enrollment_type, crocodoc_id, last_logged_out, lti_context_id, turnitin_id, lti_id, pronouns) FROM stdin;
1	User	User	registered	\N	5moEmNBt8a4eAwHhD7XPdjCV8eOVfsPLfmol7mFb	2020-02-13 12:40:09.441771	2020-02-13 12:40:11.232673	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	0	172800	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	name,sortable_name	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5dead7f7-78b9-41f3-9364-4ca8aa3f0b29	\N
\.


--
-- Data for Name: access_tokens; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.access_tokens (id, developer_key_id, user_id, last_used_at, expires_at, purpose, created_at, updated_at, crypted_token, token_hint, scopes, remember_access, crypted_refresh_token, workflow_state) FROM stdin;
\.


--
-- Data for Name: usage_rights; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.usage_rights (id, context_id, context_type, use_justification, license, legal_copyright) FROM stdin;
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.attachments (id, context_id, context_type, size, folder_id, content_type, filename, uuid, display_name, created_at, updated_at, workflow_state, user_id, locked, file_state, deleted_at, "position", lock_at, unlock_at, could_be_locked, root_attachment_id, cloned_item_id, migration_id, namespace, media_entry_id, md5, encoding, need_notify, upload_error_message, replacement_attachment_id, usage_rights_id, modified_at, viewed_at, instfs_uuid) FROM stdin;
\.


--
-- Data for Name: brand_configs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.brand_configs (md5, variables, share, name, created_at, js_overrides, css_overrides, mobile_js_overrides, mobile_css_overrides, parent_md5) FROM stdin;
a1f113321fa024e7a14cb0948597a2a4	---\nic-brand-primary: "#E66135"\nic-brand-button--primary-bgd: "#4A90E2"\nic-link-color: "#4A90E2"\nic-brand-global-nav-bgd: "#4A90E2"\nic-brand-global-nav-logo-bgd: "#3B73B4"\n	t	K12 Theme	2020-02-13 11:20:15.566832	\N	\N	\N	\N	\N
3f38c01c65835e7de842d709a89ec3e8	---\nic-brand-primary: "#2773e2"\nic-brand-button--secondary-bgd: "#4d4d4d"\nic-link-color: "#1d6adb"\nic-brand-global-nav-bgd: "#f2f2f2"\nic-brand-global-nav-ic-icon-svg-fill: "#444444"\nic-brand-global-nav-menu-item__text-color: "#444444"\nic-brand-global-nav-avatar-border: "#444444"\nic-brand-global-nav-logo-bgd: "#4d4d4d"\nic-brand-watermark-opacity: '1'\nic-brand-Login-body-bgd-color: "#f2f2f2"\nic-brand-Login-body-bgd-shadow-color: "#f2f2f2"\nic-brand-Login-Content-bgd-color: "#ffffff"\nic-brand-Login-Content-border-color: "#efefef"\nic-brand-Login-Content-label-text-color: "#444444"\nic-brand-Login-Content-password-text-color: "#444444"\nic-brand-Login-Content-button-bgd: "#2773e2"\nic-brand-Login-footer-link-color: "#2773e2"\nic-brand-Login-instructure-logo: "#aaaaaa"\n	t	Minimalist Theme	2020-02-13 11:20:16.118189	\N	\N	\N	\N	\N
7845907c6e76db998e5f24d63aca97b5	---\nic-brand-primary: "#d12e2e"\nic-link-color: "#b52828"\nic-brand-global-nav-bgd: "#262626"\nic-brand-global-nav-ic-icon-svg-fill: "#d43c3c"\nic-brand-global-nav-menu-item__text-color--active: "#d12e2e"\nic-brand-global-nav-menu-item__badge-bgd: "#128812"\nic-brand-global-nav-logo-bgd: "#d12e2e"\nic-brand-watermark-opacity: '1'\nic-brand-Login-body-bgd-color: "#d12e2e"\nic-brand-Login-body-bgd-shadow-color: "#d12e2e"\nic-brand-Login-Content-bgd-color: "#262626"\nic-brand-Login-Content-border-color: "#262626"\nic-brand-Login-Content-password-text-color: "#dddddd"\nic-brand-Login-Content-button-bgd: "#d12e2e"\nic-brand-Login-footer-link-color: "#dddddd"\nic-brand-Login-footer-link-color-hover: "#cccccc"\nic-brand-Login-instructure-logo: "#cccccc"\n	t	State U. Theme	2020-02-13 11:20:16.146428	\N	\N	\N	\N	\N
\.


--
-- Data for Name: outcome_imports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.outcome_imports (id, workflow_state, context_id, context_type, user_id, attachment_id, progress, ended_at, created_at, updated_at, data) FROM stdin;
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.accounts (id, name, created_at, updated_at, workflow_state, deleted_at, parent_account_id, sis_source_id, sis_batch_id, current_sis_batch_id, root_account_id, last_successful_sis_batch_id, membership_types, default_time_zone, external_status, storage_quota, default_storage_quota, enable_user_notes, allowed_services, turnitin_pledge, turnitin_comments, turnitin_account_id, turnitin_salt, turnitin_crypted_secret, show_section_name_as_course_name, allow_sis_import, equella_endpoint, settings, uuid, default_locale, stuck_sis_fields, default_user_storage_quota, lti_guid, default_group_storage_quota, turnitin_host, integration_id, lti_context_id, brand_config_md5, turnitin_originality, latest_outcome_import_id) FROM stdin;
2	Site Admin	2020-02-13 12:36:56.804447	2020-02-13 12:36:56.804447	active	\N	\N	\N	\N	\N	\N	\N	\N	\N	active	\N	\N	f	\N	\N	\N	\N	\N	\N	f	t	\N	\N	lL8kfpWCuRHnpCzj3fqKG0t5WshRub1CjKak6vwD	\N	name	\N	lL8kfpWCuRHnpCzj3fqKG0t5WshRub1CjKak6vwD:canvas-lms	\N	\N	\N	\N	\N	\N	\N
1	Priwsma	2020-02-13 12:36:56.439206	2020-02-13 12:40:18.911471	active	\N	\N	\N	\N	\N	\N	\N	\N	\N	active	\N	\N	f	\N	\N	\N	\N	\N	\N	f	t	\N	\N	qiTsoTw6rl2gUZSDAVKegsDGNyxXt83i1aOnCgVy	\N	name	\N	qiTsoTw6rl2gUZSDAVKegsDGNyxXt83i1aOnCgVy:canvas-lms	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: account_notifications; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_notifications (id, subject, icon, message, account_id, user_id, start_at, end_at, created_at, updated_at, required_account_service, months_in_display_cycle, domain_specific, send_message, messages_sent_at) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.roles (id, name, base_role_type, account_id, workflow_state, created_at, updated_at, deleted_at, root_account_id) FROM stdin;
1	AccountAdmin	AccountAdmin	\N	built_in	2020-02-13 11:20:13.803588	2020-02-13 11:20:13.803588	\N	\N
2	AccountMembership	AccountMembership	\N	built_in	2020-02-13 11:20:13.81137	2020-02-13 11:20:13.81137	\N	\N
3	StudentEnrollment	StudentEnrollment	\N	built_in	2020-02-13 11:20:13.818863	2020-02-13 11:20:13.818863	\N	\N
4	TeacherEnrollment	TeacherEnrollment	\N	built_in	2020-02-13 11:20:13.824832	2020-02-13 11:20:13.824832	\N	\N
5	TaEnrollment	TaEnrollment	\N	built_in	2020-02-13 11:20:13.829963	2020-02-13 11:20:13.829963	\N	\N
6	DesignerEnrollment	DesignerEnrollment	\N	built_in	2020-02-13 11:20:13.834816	2020-02-13 11:20:13.834816	\N	\N
7	ObserverEnrollment	ObserverEnrollment	\N	built_in	2020-02-13 11:20:13.840232	2020-02-13 11:20:13.840232	\N	\N
8	NoPermissions	NoPermissions	\N	built_in	2020-02-13 11:20:13.84564	2020-02-13 11:20:13.84564	\N	\N
\.


--
-- Data for Name: account_notification_roles; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_notification_roles (id, account_notification_id, role_id) FROM stdin;
\.


--
-- Data for Name: account_reports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_reports (id, user_id, message, account_id, attachment_id, workflow_state, report_type, progress, created_at, updated_at, parameters, current_line, total_lines, start_at, end_at) FROM stdin;
\.


--
-- Data for Name: account_report_runners; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_report_runners (id, account_report_id, workflow_state, batch_items, created_at, updated_at, started_at, ended_at) FROM stdin;
\.


--
-- Data for Name: account_report_rows; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_report_rows (id, account_report_id, account_report_runner_id, row_number, "row", created_at, file) FROM stdin;
\.


--
-- Data for Name: account_users; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.account_users (id, account_id, user_id, created_at, updated_at, role_id, workflow_state, sis_batch_id) FROM stdin;
1	2	1	2020-02-13 12:40:11.070681	2020-02-13 12:40:11.070681	1	active	\N
2	1	1	2020-02-13 12:40:11.209929	2020-02-13 12:40:11.209929	1	active	\N
\.


--
-- Data for Name: alerts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.alerts (id, context_id, context_type, recipients, repetition, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: alert_criteria; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.alert_criteria (id, alert_id, criterion_type, threshold) FROM stdin;
\.


--
-- Data for Name: cloned_items; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.cloned_items (id, original_item_id, original_item_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.wikis (id, title, created_at, updated_at, front_page_url, has_no_front_page) FROM stdin;
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.courses (id, name, account_id, group_weighting_scheme, workflow_state, uuid, start_at, conclude_at, grading_standard_id, is_public, allow_student_wiki_edits, created_at, updated_at, show_public_context_messages, syllabus_body, allow_student_forum_attachments, default_wiki_editing_roles, wiki_id, allow_student_organized_groups, course_code, default_view, abstract_course_id, root_account_id, enrollment_term_id, sis_source_id, sis_batch_id, open_enrollment, storage_quota, tab_configuration, allow_wiki_comments, turnitin_comments, self_enrollment, license, indexed, restrict_enrollments_to_course_dates, template_course_id, locale, settings, replacement_course_id, stuck_sis_fields, public_description, self_enrollment_code, self_enrollment_limit, integration_id, time_zone, lti_context_id, turnitin_id, show_announcements_on_home_page, home_page_announcement_limit, latest_outcome_import_id, grade_passback_setting) FROM stdin;
\.


--
-- Data for Name: grading_period_groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.grading_period_groups (id, course_id, account_id, created_at, updated_at, workflow_state, title, weighted, display_totals_for_all_grading_periods) FROM stdin;
\.


--
-- Data for Name: enrollment_terms; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.enrollment_terms (id, root_account_id, name, term_code, sis_source_id, sis_batch_id, start_at, end_at, accepting_enrollments, can_manually_enroll, created_at, updated_at, workflow_state, stuck_sis_fields, integration_id, grading_period_group_id) FROM stdin;
1	1	Default Term	\N	\N	\N	\N	\N	\N	\N	2020-02-13 12:36:56.521171	2020-02-13 12:36:56.521171	active	name	\N	\N
2	2	Default Term	\N	\N	\N	\N	\N	\N	\N	2020-02-13 12:36:56.820198	2020-02-13 12:36:56.820198	active	name	\N	\N
\.


--
-- Data for Name: sis_batches; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.sis_batches (id, account_id, ended_at, workflow_state, data, created_at, updated_at, attachment_id, progress, processing_errors, processing_warnings, batch_mode, batch_mode_term_id, options, user_id, started_at, diffing_data_set_identifier, diffing_remaster, generated_diff_id, errors_attachment_id, change_threshold) FROM stdin;
\.


--
-- Data for Name: course_sections; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.course_sections (id, sis_source_id, sis_batch_id, course_id, root_account_id, enrollment_term_id, name, default_section, accepting_enrollments, can_manually_enroll, start_at, end_at, created_at, updated_at, workflow_state, restrict_enrollments_to_section_dates, nonxlist_course_id, stuck_sis_fields, integration_id) FROM stdin;
\.


--
-- Data for Name: group_categories; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.group_categories (id, context_id, context_type, name, role, deleted_at, self_signup, group_limit, auto_leader, created_at, updated_at, sis_source_id, root_account_id, sis_batch_id) FROM stdin;
\.


--
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assignments (id, title, description, due_at, unlock_at, lock_at, points_possible, min_score, max_score, mastery_score, grading_type, submission_types, workflow_state, context_id, context_type, assignment_group_id, grading_standard_id, created_at, updated_at, group_category, submissions_downloads, peer_review_count, peer_reviews_due_at, peer_reviews_assigned, peer_reviews, automatic_peer_reviews, all_day, all_day_date, could_be_locked, cloned_item_id, context_code, "position", migration_id, grade_group_students_individually, anonymous_peer_reviews, time_zone_edited, turnitin_enabled, allowed_extensions, turnitin_settings, muted, group_category_id, freeze_on_copy, copied, only_visible_to_overrides, post_to_sis, integration_id, integration_data, turnitin_id, moderated_grading, grades_published_at, omit_from_final_grade, vericite_enabled, intra_group_peer_reviews, lti_context_id, anonymous_instructor_annotations, duplicate_of_id, anonymous_grading, graders_anonymous_to_graders, grader_count, grader_comments_visible_to_graders, grader_section_id, final_grader_id, grader_names_visible_to_final_grader, duplication_started_at, importing_started_at, allowed_attempts, root_account_id, sis_source_id, migrate_from_id, settings) FROM stdin;
\.


--
-- Data for Name: canvadocs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.canvadocs (id, document_id, process_state, attachment_id, created_at, updated_at, has_annotations) FROM stdin;
\.


--
-- Data for Name: context_external_tools; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.context_external_tools (id, context_id, context_type, domain, url, shared_secret, consumer_key, name, description, settings, workflow_state, created_at, updated_at, migration_id, cloned_item_id, tool_id, not_selectable, app_center_id, allow_membership_service_access, developer_key_id, root_account_id) FROM stdin;
\.


--
-- Data for Name: grading_periods; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.grading_periods (id, weight, start_date, end_date, created_at, updated_at, title, workflow_state, grading_period_group_id, close_date) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.groups (id, name, workflow_state, created_at, updated_at, context_id, context_type, category, max_membership, is_public, account_id, wiki_id, deleted_at, join_level, default_view, migration_id, storage_quota, uuid, root_account_id, sis_source_id, sis_batch_id, stuck_sis_fields, group_category_id, description, avatar_attachment_id, leader_id, lti_context_id) FROM stdin;
\.


--
-- Data for Name: media_objects; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.media_objects (id, user_id, context_id, context_type, workflow_state, user_type, title, user_entered_title, media_id, media_type, duration, max_size, root_account_id, data, created_at, updated_at, attachment_id, total_size, old_media_id) FROM stdin;
\.


--
-- Data for Name: quizzes; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quizzes (id, title, description, quiz_data, points_possible, context_id, context_type, assignment_id, workflow_state, shuffle_answers, show_correct_answers, time_limit, allowed_attempts, scoring_policy, quiz_type, created_at, updated_at, lock_at, unlock_at, deleted_at, could_be_locked, cloned_item_id, access_code, migration_id, unpublished_question_count, due_at, question_count, last_assignment_id, published_at, last_edited_at, anonymous_submissions, assignment_group_id, hide_results, ip_filter, require_lockdown_browser, require_lockdown_browser_for_results, one_question_at_a_time, cant_go_back, show_correct_answers_at, hide_correct_answers_at, require_lockdown_browser_monitor, lockdown_browser_monitor_data, only_visible_to_overrides, one_time_results, show_correct_answers_last_attempt) FROM stdin;
\.


--
-- Data for Name: quiz_submissions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submissions (id, quiz_id, quiz_version, user_id, submission_data, submission_id, score, kept_score, quiz_data, started_at, end_at, finished_at, attempt, workflow_state, created_at, updated_at, fudge_points, quiz_points_possible, extra_attempts, temporary_user_code, extra_time, manually_unlocked, manually_scored, validation_token, score_before_regrade, was_preview, has_seen_results, question_references_fixed) FROM stdin;
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.submissions (id, body, url, attachment_id, grade, score, submitted_at, assignment_id, user_id, submission_type, workflow_state, created_at, updated_at, group_id, attachment_ids, processed, grade_matches_current_submission, published_score, published_grade, graded_at, student_entered_score, grader_id, media_comment_id, media_comment_type, quiz_submission_id, submission_comments_count, attempt, context_code, media_object_id, turnitin_data, cached_due_date, excused, graded_anonymously, late_policy_status, points_deducted, grading_period_id, seconds_late_override, lti_user_id, anonymous_id, last_comment_at, extra_attempts, posted_at, cached_quiz_lti) FROM stdin;
\.


--
-- Data for Name: anonymous_or_moderation_events; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.anonymous_or_moderation_events (id, assignment_id, user_id, submission_id, canvadoc_id, event_type, payload, created_at, updated_at, context_external_tool_id, quiz_id) FROM stdin;
\.


--
-- Data for Name: appointment_group_contexts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.appointment_group_contexts (id, appointment_group_id, context_code, context_id, context_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: appointment_group_sub_contexts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.appointment_group_sub_contexts (id, appointment_group_id, sub_context_id, sub_context_type, sub_context_code, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: appointment_groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.appointment_groups (id, title, description, location_name, location_address, context_code, sub_context_code, workflow_state, created_at, updated_at, start_at, end_at, participants_per_appointment, max_appointments_per_participant, min_appointments_per_participant, participant_visibility) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2020-02-13 12:36:13.205508	2020-02-13 12:36:13.205508
\.


--
-- Data for Name: assessment_question_bank_users; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assessment_question_bank_users (id, assessment_question_bank_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: assessment_question_banks; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assessment_question_banks (id, context_id, context_type, title, workflow_state, deleted_at, created_at, updated_at, migration_id) FROM stdin;
\.


--
-- Data for Name: assessment_questions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assessment_questions (id, name, question_data, context_id, context_type, workflow_state, created_at, updated_at, assessment_question_bank_id, deleted_at, migration_id, "position") FROM stdin;
\.


--
-- Data for Name: rubrics; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.rubrics (id, user_id, rubric_id, context_id, context_type, data, points_possible, title, description, created_at, updated_at, reusable, public, read_only, association_count, free_form_criterion_comments, context_code, migration_id, hide_score_total, workflow_state) FROM stdin;
\.


--
-- Data for Name: rubric_associations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.rubric_associations (id, rubric_id, association_id, association_type, use_for_grading, created_at, updated_at, title, summary_data, purpose, url, context_id, context_type, hide_score_total, bookmarked, context_code, hide_points, hide_outcome_results) FROM stdin;
\.


--
-- Data for Name: assessment_requests; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assessment_requests (id, rubric_assessment_id, user_id, asset_id, asset_type, assessor_asset_id, assessor_asset_type, workflow_state, created_at, updated_at, uuid, rubric_association_id, assessor_id) FROM stdin;
\.


--
-- Data for Name: asset_user_accesses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.asset_user_accesses (id, asset_code, asset_group_code, user_id, context_id, context_type, last_access, created_at, updated_at, asset_category, view_score, participate_score, action_level, display_name, membership_type) FROM stdin;
\.


--
-- Data for Name: assignment_configuration_tool_lookups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assignment_configuration_tool_lookups (id, assignment_id, tool_id, tool_type, subscription_id, tool_product_code, tool_vendor_code, tool_resource_type_code, context_type) FROM stdin;
\.


--
-- Data for Name: assignment_groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assignment_groups (id, name, rules, default_assignment_name, "position", assignment_weighting_scheme, group_weight, context_id, context_type, workflow_state, created_at, updated_at, cloned_item_id, context_code, migration_id, sis_source_id, integration_data) FROM stdin;
\.


--
-- Data for Name: assignment_overrides; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assignment_overrides (id, created_at, updated_at, assignment_id, assignment_version, set_type, set_id, title, workflow_state, due_at_overridden, due_at, all_day, all_day_date, unlock_at_overridden, unlock_at, lock_at_overridden, lock_at, quiz_id, quiz_version) FROM stdin;
\.


--
-- Data for Name: assignment_override_students; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.assignment_override_students (id, created_at, updated_at, assignment_id, assignment_override_id, user_id, quiz_id, workflow_state) FROM stdin;
\.


--
-- Data for Name: attachment_associations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.attachment_associations (id, attachment_id, context_id, context_type) FROM stdin;
\.


--
-- Data for Name: attachment_upload_statuses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.attachment_upload_statuses (id, attachment_id, error, created_at) FROM stdin;
\.


--
-- Data for Name: authentication_providers; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.authentication_providers (id, account_id, auth_port, auth_host, auth_base, auth_username, auth_crypted_password, auth_password_salt, auth_type, auth_over_tls, created_at, updated_at, log_in_url, log_out_url, identifier_format, certificate_fingerprint, entity_id, auth_filter, requested_authn_context, last_timeout_failure, login_attribute, idp_entity_id, "position", parent_registration, workflow_state, jit_provisioning, metadata_uri, settings) FROM stdin;
1	1	\N	\N	\N	\N	\N	\N	canvas	start_tls	2020-02-13 12:36:56.711314	2020-02-13 12:36:56.711314	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	f	active	f	\N	{"federated_attributes":{}}
2	2	\N	\N	\N	\N	\N	\N	canvas	start_tls	2020-02-13 12:36:56.832465	2020-02-13 12:36:56.832465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	f	active	f	\N	{"federated_attributes":{}}
\.


--
-- Data for Name: bookmarks_bookmarks; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.bookmarks_bookmarks (id, user_id, name, url, "position", json) FROM stdin;
\.


--
-- Data for Name: calendar_events; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.calendar_events (id, title, description, location_name, location_address, start_at, end_at, context_id, context_type, workflow_state, created_at, updated_at, user_id, all_day, all_day_date, deleted_at, cloned_item_id, context_code, migration_id, time_zone_edited, parent_calendar_event_id, effective_context_code, participants_per_appointment, override_participants_per_appointment, comments, timetable_code) FROM stdin;
\.


--
-- Data for Name: canvadocs_submissions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.canvadocs_submissions (id, canvadoc_id, crocodoc_document_id, submission_id) FROM stdin;
\.


--
-- Data for Name: collaborations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.collaborations (id, collaboration_type, document_id, user_id, context_id, context_type, url, uuid, data, created_at, updated_at, description, title, workflow_state, deleted_at, context_code, type) FROM stdin;
\.


--
-- Data for Name: collaborators; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.collaborators (id, user_id, collaboration_id, created_at, updated_at, authorized_service_user_id, group_id) FROM stdin;
\.


--
-- Data for Name: communication_channels; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.communication_channels (id, path, path_type, "position", user_id, pseudonym_id, bounce_count, workflow_state, confirmation_code, created_at, updated_at, build_pseudonym_on_confirm, last_bounce_at, last_bounce_details, last_suppression_bounce_at, last_transient_bounce_at, last_transient_bounce_details, confirmation_code_expires_at, confirmation_sent_count) FROM stdin;
1	pantharshit00@gmail.com	email	1	1	\N	0	active	zuJQLlRLEg71E1T0XcRSK5ofR	2020-02-13 12:40:10.904311	2020-02-13 12:40:10.904311	\N	\N	\N	\N	\N	\N	\N	0
\.


--
-- Data for Name: content_exports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_exports (id, user_id, attachment_id, export_type, settings, progress, workflow_state, created_at, updated_at, content_migration_id, context_type, context_id, global_identifiers) FROM stdin;
\.


--
-- Data for Name: master_courses_master_templates; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_master_templates (id, course_id, full_course, workflow_state, created_at, updated_at, active_migration_id, default_restrictions, use_default_restrictions_by_type, default_restrictions_by_type) FROM stdin;
\.


--
-- Data for Name: master_courses_child_subscriptions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_child_subscriptions (id, master_template_id, child_course_id, workflow_state, use_selective_copy, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: content_migrations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_migrations (id, context_id, user_id, workflow_state, migration_settings, started_at, finished_at, created_at, updated_at, progress, context_type, attachment_id, overview_attachment_id, exported_attachment_id, source_course_id, migration_type, child_subscription_id) FROM stdin;
\.


--
-- Data for Name: content_participation_counts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_participation_counts (id, content_type, context_type, context_id, user_id, unread_count, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: content_participations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_participations (id, content_type, content_id, user_id, workflow_state) FROM stdin;
\.


--
-- Data for Name: content_shares; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_shares (id, name, created_at, updated_at, user_id, content_export_id, sender_id, read_state, type) FROM stdin;
\.


--
-- Data for Name: context_modules; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.context_modules (id, context_id, context_type, name, "position", prerequisites, completion_requirements, created_at, updated_at, workflow_state, deleted_at, unlock_at, migration_id, require_sequential_progress, cloned_item_id, completion_events, requirement_count) FROM stdin;
\.


--
-- Data for Name: learning_outcomes; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.learning_outcomes (id, context_id, context_type, short_description, context_code, description, data, workflow_state, created_at, updated_at, migration_id, vendor_guid, low_grade, high_grade, display_name, calculation_method, calculation_int, vendor_guid_2, migration_id_2, outcome_import_id) FROM stdin;
\.


--
-- Data for Name: content_tags; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.content_tags (id, content_id, content_type, context_id, context_type, title, tag, url, created_at, updated_at, comments, tag_type, context_module_id, "position", indent, migration_id, learning_outcome_id, context_code, mastery_score, rubric_association_id, workflow_state, cloned_item_id, associated_asset_id, associated_asset_type, new_tab) FROM stdin;
\.


--
-- Data for Name: context_external_tool_assignment_lookups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.context_external_tool_assignment_lookups (id, assignment_id, context_external_tool_id) FROM stdin;
\.


--
-- Data for Name: context_external_tool_placements; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.context_external_tool_placements (id, placement_type, context_external_tool_id) FROM stdin;
\.


--
-- Data for Name: context_module_progressions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.context_module_progressions (id, context_module_id, user_id, requirements_met, workflow_state, created_at, updated_at, collapsed, current_position, completed_at, current, lock_version, evaluated_at, incomplete_requirements) FROM stdin;
\.


--
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.conversations (id, private_hash, has_attachments, has_media_objects, tags, root_account_ids, subject, context_type, context_id, updated_at) FROM stdin;
\.


--
-- Data for Name: conversation_messages; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.conversation_messages (id, conversation_id, author_id, created_at, generated, body, forwarded_message_ids, media_comment_id, media_comment_type, context_id, context_type, asset_id, asset_type, attachment_ids, has_attachments, has_media_objects) FROM stdin;
\.


--
-- Data for Name: conversation_batches; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.conversation_batches (id, workflow_state, user_id, recipient_ids, root_conversation_message_id, conversation_message_ids, tags, created_at, updated_at, context_type, context_id, subject, "group", generate_user_note) FROM stdin;
\.


--
-- Data for Name: conversation_message_participants; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.conversation_message_participants (id, conversation_message_id, conversation_participant_id, tags, user_id, workflow_state, deleted_at) FROM stdin;
\.


--
-- Data for Name: conversation_participants; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.conversation_participants (id, conversation_id, user_id, last_message_at, subscribed, workflow_state, last_authored_at, has_attachments, has_media_objects, message_count, label, tags, visible_last_authored_at, root_account_ids, private_hash, updated_at) FROM stdin;
\.


--
-- Data for Name: course_account_associations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.course_account_associations (id, course_id, account_id, depth, created_at, updated_at, course_section_id) FROM stdin;
\.


--
-- Data for Name: crocodoc_documents; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.crocodoc_documents (id, uuid, process_state, attachment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: csp_domains; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.csp_domains (id, account_id, domain, workflow_state, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: custom_data; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.custom_data (id, data, namespace, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: custom_gradebook_columns; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.custom_gradebook_columns (id, title, "position", workflow_state, course_id, created_at, updated_at, teacher_notes, read_only) FROM stdin;
\.


--
-- Data for Name: custom_gradebook_column_data; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.custom_gradebook_column_data (id, content, user_id, custom_gradebook_column_id) FROM stdin;
\.


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.delayed_jobs (id, priority, attempts, handler, last_error, queue, run_at, locked_at, failed_at, locked_by, created_at, updated_at, tag, max_attempts, strand, next_in_strand, shard_id, source, max_concurrent, expires_at) FROM stdin;
1	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::BackfillNulls'\nmethod: :run\nargs:\n- !ruby/class 'Assignment'\n- :anonymous_grading\n- :default_value: false\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 11:20:21.639695	\N	\N	\N	2020-02-13 11:20:21.639744	2020-02-13 11:20:21.639744	DataFixup::BackfillNulls.run	1	long_datafixups	t	\N	\N	1	\N
2	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddPseudonymToStudentViewStudents'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:22.933264	\N	\N	\N	2020-02-13 12:36:22.933337	2020-02-13 12:36:22.933337	DataFixup::AddPseudonymToStudentViewStudents.run	1	\N	t	\N	\N	1	\N
3	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveExtraneousConversationTags'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.001984	\N	\N	\N	2020-02-13 12:36:23.002042	2020-02-13 12:36:23.002042	DataFixup::RemoveExtraneousConversationTags.run	1	\N	t	\N	\N	1	\N
4	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ResetUngradedCounts'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.080864	\N	\N	\N	2020-02-13 12:36:23.080907	2020-02-13 12:36:23.080907	DataFixup::ResetUngradedCounts.run	1	\N	t	\N	\N	1	\N
5	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RecomputeUnreadConversationsCount'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.102357	\N	\N	\N	2020-02-13 12:36:23.102423	2020-02-13 12:36:23.102423	DataFixup::RecomputeUnreadConversationsCount.run	1	\N	t	\N	\N	1	\N
6	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MoveContentExportNotificationsToMigrationCategory'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.141856	\N	\N	\N	2020-02-13 12:36:23.141919	2020-02-13 12:36:23.141919	DataFixup::MoveContentExportNotificationsToMigrationCategory.run	1	\N	t	\N	\N	1	\N
7	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateConversationMessageProperties'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.360986	\N	\N	\N	2020-02-13 12:36:23.361059	2020-02-13 12:36:23.361059	DataFixup::PopulateConversationMessageProperties.run	1	\N	t	\N	\N	1	\N
8	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RegenerateUserThumbnails'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.485848	\N	\N	\N	2020-02-13 12:36:23.485913	2020-02-13 12:36:23.485913	DataFixup::RegenerateUserThumbnails.run	1	\N	t	\N	\N	1	\N
9	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveBogusEnrollmentAssociatedUserIds'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.509687	\N	\N	\N	2020-02-13 12:36:23.509756	2020-02-13 12:36:23.509756	DataFixup::RemoveBogusEnrollmentAssociatedUserIds.run	1	\N	t	\N	\N	1	\N
10	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixBulkMessageAttachments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.543448	\N	\N	\N	2020-02-13 12:36:23.543497	2020-02-13 12:36:23.543497	DataFixup::FixBulkMessageAttachments.run	1	\N	t	\N	\N	1	\N
11	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixRootOutcomeGroupTitles'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.586313	\N	\N	\N	2020-02-13 12:36:23.586359	2020-02-13 12:36:23.586359	DataFixup::FixRootOutcomeGroupTitles.run	1	\N	t	\N	\N	1	\N
12	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateConversationMessageParticipantUserIds'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.678048	\N	\N	\N	2020-02-13 12:36:23.678103	2020-02-13 12:36:23.678103	DataFixup::PopulateConversationMessageParticipantUserIds.run	1	\N	t	\N	\N	1	\N
13	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::PopulateConversationParticipantRootAccountIds'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.699425	\N	\N	\N	2020-02-13 12:36:23.699468	2020-02-13 12:36:23.699468	DataFixup::PopulateConversationParticipantRootAccountIds.run	1	\N	t	\N	\N	1	\N
14	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::PopulateConversationParticipantPrivateHash'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.718034	\N	\N	\N	2020-02-13 12:36:23.718076	2020-02-13 12:36:23.718076	DataFixup::PopulateConversationParticipantPrivateHash.run	1	\N	t	\N	\N	1	\N
15	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RecalculateCourseAccountAssociations'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.810588	\N	\N	\N	2020-02-13 12:36:23.810647	2020-02-13 12:36:23.810647	DataFixup::RecalculateCourseAccountAssociations.run	1	\N	t	\N	\N	1	\N
16	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MigrateIgnores'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.831148	\N	\N	\N	2020-02-13 12:36:23.831197	2020-02-13 12:36:23.831197	DataFixup::MigrateIgnores.run	1	\N	t	\N	\N	1	\N
17	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::CopyRoleOverrides'\nmethod: :run\nargs:\n- :manage_grades\n- :manage_rubrics\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.85329	\N	\N	\N	2020-02-13 12:36:23.853346	2020-02-13 12:36:23.853346	DataFixup::CopyRoleOverrides.run	1	\N	t	\N	\N	1	\N
18	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SetAccountLtiOpaqueIds'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.885661	\N	\N	\N	2020-02-13 12:36:23.88573	2020-02-13 12:36:23.88573	DataFixup::SetAccountLtiOpaqueIds.run	1	\N	t	\N	\N	1	\N
19	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixMediaRecordingSubmissionTypes'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.910653	\N	\N	\N	2020-02-13 12:36:23.910715	2020-02-13 12:36:23.910715	DataFixup::FixMediaRecordingSubmissionTypes.run	1	\N	t	\N	\N	1	\N
20	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::CopyRoleOverrides'\nmethod: :run\nargs:\n- :manage_account_settings\n- :manage_storage_quotas\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.945263	\N	\N	\N	2020-02-13 12:36:23.945317	2020-02-13 12:36:23.945317	DataFixup::CopyRoleOverrides.run	1	\N	t	\N	\N	1	\N
21	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixBrokenFileLinksInAssignments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.96521	\N	\N	\N	2020-02-13 12:36:23.965269	2020-02-13 12:36:23.965269	DataFixup::FixBrokenFileLinksInAssignments.run	1	\N	t	\N	\N	1	\N
22	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AttachDissociatedDiscussionTopics'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:23.995663	\N	\N	\N	2020-02-13 12:36:23.995721	2020-02-13 12:36:23.995721	DataFixup::AttachDissociatedDiscussionTopics.run	1	\N	t	\N	\N	1	\N
23	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::UnifyActiveAssignmentWorkflowStates'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:24.432821	\N	\N	\N	2020-02-13 12:36:24.432879	2020-02-13 12:36:24.432879	DataFixup::UnifyActiveAssignmentWorkflowStates.run	1	\N	t	\N	\N	1	\N
24	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::InitializeSubmissionCachedDueDate'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:24.508179	\N	\N	\N	2020-02-13 12:36:24.508279	2020-02-13 12:36:24.508279	DataFixup::InitializeSubmissionCachedDueDate.run	1	DataFixup:InitializeSubmissionCachedDueDate:default	t	\N	\N	1	\N
25	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixImportedWikiPageWorkflow'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:24.886286	\N	\N	\N	2020-02-13 12:36:24.886355	2020-02-13 12:36:24.886355	DataFixup::FixImportedWikiPageWorkflow.run	1	\N	t	\N	\N	1	\N
26	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ResanitizeAssignmentsAllowedExtensions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:25.288648	\N	\N	\N	2020-02-13 12:36:25.288705	2020-02-13 12:36:25.288705	DataFixup::ResanitizeAssignmentsAllowedExtensions.run	1	\N	t	\N	\N	1	\N
27	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixOutOfSyncOutcomeAlignments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.254549	\N	\N	\N	2020-02-13 12:36:26.254605	2020-02-13 12:36:26.254605	DataFixup::FixOutOfSyncOutcomeAlignments.run	1	\N	t	\N	\N	1	\N
28	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixImportedWikiFrontPages'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.364594	\N	\N	\N	2020-02-13 12:36:26.36465	2020-02-13 12:36:26.36465	DataFixup::FixImportedWikiFrontPages.run	1	\N	t	\N	\N	1	\N
29	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateSubmissionVersions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.753752	\N	\N	\N	2020-02-13 12:36:26.753819	2020-02-13 12:36:26.753819	DataFixup::PopulateSubmissionVersions.run	1	long_datafixups	f	\N	\N	1	\N
30	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveOrphanedContextModuleProgressions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.78091	\N	\N	\N	2020-02-13 12:36:26.780968	2020-02-13 12:36:26.780968	DataFixup::RemoveOrphanedContextModuleProgressions.run	1	\N	t	\N	\N	1	\N
31	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::UndeleteSomeOutcomeAlignments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.819627	\N	\N	\N	2020-02-13 12:36:26.819698	2020-02-13 12:36:26.819698	DataFixup::UndeleteSomeOutcomeAlignments.run	1	\N	t	\N	\N	1	\N
32	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::ChangeGradedSurveySubmissionsToNotNeedGrading'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:26.944373	\N	\N	\N	2020-02-13 12:36:26.944417	2020-02-13 12:36:26.944417	DataFixup::ChangeGradedSurveySubmissionsToNotNeedGrading.run	1	\N	t	\N	\N	1	\N
33	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteEmptyConversations'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:27.000886	\N	\N	\N	2020-02-13 12:36:27.00093	2020-02-13 12:36:27.00093	DataFixup::DeleteEmptyConversations.run	1	\N	t	\N	\N	1	\N
34	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeprecateHideFromStudentsOnWikiPages'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:27.298827	\N	\N	\N	2020-02-13 12:36:27.29887	2020-02-13 12:36:27.29887	DataFixup::DeprecateHideFromStudentsOnWikiPages.run	1	\N	t	\N	\N	1	\N
35	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SanitizeCompletionRequirements'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:27.397179	\N	\N	\N	2020-02-13 12:36:27.397248	2020-02-13 12:36:27.397248	DataFixup::SanitizeCompletionRequirements.run	1	\N	t	\N	\N	1	\N
36	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SanitizeEportfolios'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:27.425044	\N	\N	\N	2020-02-13 12:36:27.425106	2020-02-13 12:36:27.425106	DataFixup::SanitizeEportfolios.run	1	\N	t	\N	\N	1	\N
37	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ConvertHighContrastSettingToFeatureFlag'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.048133	\N	\N	\N	2020-02-13 12:36:28.048178	2020-02-13 12:36:28.048178	DataFixup::ConvertHighContrastSettingToFeatureFlag.run	1	\N	t	1	\N	1	\N
38	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateGroupCategoryOnDiscussionTopics'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.466067	\N	\N	\N	2020-02-13 12:36:28.466129	2020-02-13 12:36:28.466129	DataFixup::PopulateGroupCategoryOnDiscussionTopics.run	1	\N	t	1	\N	1	\N
39	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixIncorrectPublishedStatesOnQuizzesAndAssignments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.499665	\N	\N	\N	2020-02-13 12:36:28.499709	2020-02-13 12:36:28.499709	DataFixup::FixIncorrectPublishedStatesOnQuizzesAndAssignments.run	1	\N	t	1	\N	1	\N
40	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixInvalidCourseIdsOnEnrollments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.528262	\N	\N	\N	2020-02-13 12:36:28.528309	2020-02-13 12:36:28.528309	DataFixup::FixInvalidCourseIdsOnEnrollments.run	1	\N	t	1	\N	1	\N
41	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ClearFeatureFlags'\nmethod: :run\nargs:\n- new_styles\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.603726	\N	\N	\N	2020-02-13 12:36:28.603767	2020-02-13 12:36:28.603767	DataFixup::ClearFeatureFlags.run	1	DataFixup::ClearFeatureFlags:new_styles:production	t	1	\N	1	\N
42	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixContentTagsWithoutContent'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.771743	\N	\N	\N	2020-02-13 12:36:28.771803	2020-02-13 12:36:28.771803	DataFixup::FixContentTagsWithoutContent.run	1	\N	t	1	\N	1	\N
43	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RegenerateUserThumbnails'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:28.844572	\N	\N	\N	2020-02-13 12:36:28.844616	2020-02-13 12:36:28.844616	DataFixup::RegenerateUserThumbnails.run	1	\N	t	1	\N	1	\N
44	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixIncorrectAttachmentFileState'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.086092	\N	\N	\N	2020-02-13 12:36:29.086137	2020-02-13 12:36:29.086137	DataFixup::FixIncorrectAttachmentFileState.run	1	\N	t	1	\N	1	\N
45	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ResetUngradedCounts'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.150608	\N	\N	\N	2020-02-13 12:36:29.150679	2020-02-13 12:36:29.150679	DataFixup::ResetUngradedCounts.run	1	\N	t	1	\N	1	\N
46	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::LinkMissingSisObserverEnrollments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.185449	\N	\N	\N	2020-02-13 12:36:29.18551	2020-02-13 12:36:29.18551	DataFixup::LinkMissingSisObserverEnrollments.run	1	\N	t	1	\N	1	\N
47	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveOrphanedSubmissionVersions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.232641	\N	\N	\N	2020-02-13 12:36:29.232712	2020-02-13 12:36:29.232712	DataFixup::RemoveOrphanedSubmissionVersions.run	1	\N	t	1	\N	1	\N
48	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixGroupDiscussionSubmissions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.36759	\N	\N	\N	2020-02-13 12:36:29.367635	2020-02-13 12:36:29.367635	DataFixup::FixGroupDiscussionSubmissions.run	1	\N	t	1	\N	1	\N
49	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :manage_account_memberships\n- :view_quiz_answer_audits\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.393993	\N	\N	\N	2020-02-13 12:36:29.394058	2020-02-13 12:36:29.394058	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
50	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :manage_account_memberships\n- :manage_catalog\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.427579	\N	\N	\N	2020-02-13 12:36:29.427636	2020-02-13 12:36:29.427636	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
51	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteFacebookChannels'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.493144	\N	\N	\N	2020-02-13 12:36:29.493209	2020-02-13 12:36:29.493209	DataFixup::DeleteFacebookChannels.run	1	\N	t	1	\N	1	\N
52	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveInvalidObservers'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.518757	\N	\N	\N	2020-02-13 12:36:29.518822	2020-02-13 12:36:29.518822	DataFixup::RemoveInvalidObservers.run	1	\N	t	1	\N	1	\N
53	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SetWikiHasNoFrontPage'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.686585	\N	\N	\N	2020-02-13 12:36:29.686632	2020-02-13 12:36:29.686632	DataFixup::SetWikiHasNoFrontPage.run	1	\N	t	1	\N	1	\N
54	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::FixCorruptAssessmentQuestionsFromCnvs19292'\nmethod: :run\nargs:\n- - calculated_question\n  - numerical_question\n  - matching_question\n  - multiple_dropdowns_question\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.810955	\N	\N	\N	2020-02-13 12:36:29.810998	2020-02-13 12:36:29.810998	DataFixup::FixCorruptAssessmentQuestionsFromCnvs19292.run	1	\N	t	1	\N	1	\N
55	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixInvalidPseudonymAccountIds'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.948639	\N	\N	\N	2020-02-13 12:36:29.948683	2020-02-13 12:36:29.948683	DataFixup::FixInvalidPseudonymAccountIds.run	1	\N	t	1	\N	1	\N
56	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddLtiMessageHandlerIdToLtiResourcePlacements'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:29.997941	\N	\N	\N	2020-02-13 12:36:29.997995	2020-02-13 12:36:29.997995	DataFixup::AddLtiMessageHandlerIdToLtiResourcePlacements.run	1	\N	t	1	\N	1	\N
57	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateStreamItemNotificationCategory'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.033887	\N	\N	\N	2020-02-13 12:36:30.033953	2020-02-13 12:36:30.033953	DataFixup::PopulateStreamItemNotificationCategory.run	1	long_datafixups	f	1	\N	1	\N
58	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SisAppUrlAccountSetting'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.057976	\N	\N	\N	2020-02-13 12:36:30.05804	2020-02-13 12:36:30.05804	DataFixup::SisAppUrlAccountSetting.run	1	\N	t	1	\N	1	\N
59	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AssignmentOverrideTitleChange'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.131257	\N	\N	\N	2020-02-13 12:36:30.131332	2020-02-13 12:36:30.131332	DataFixup::AssignmentOverrideTitleChange.run	1	\N	t	1	\N	1	\N
60	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::CreateCanvadocsSubmissionsRecords'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.154313	\N	\N	\N	2020-02-13 12:36:30.15436	2020-02-13 12:36:30.15436	DataFixup::CreateCanvadocsSubmissionsRecords.run	1	\N	t	1	\N	1	\N
61	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixUnresolvedLinksInQuizzes'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.179757	\N	\N	\N	2020-02-13 12:36:30.179822	2020-02-13 12:36:30.179822	DataFixup::FixUnresolvedLinksInQuizzes.run	1	long_datafixups	f	1	\N	1	\N
62	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ReevaluateIncompleteProgressions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.220003	\N	\N	\N	2020-02-13 12:36:30.220069	2020-02-13 12:36:30.220069	DataFixup::ReevaluateIncompleteProgressions.run	1	long_datafixups	f	1	\N	1	\N
63	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixImportedQuestionMediaComments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.251685	\N	\N	\N	2020-02-13 12:36:30.251754	2020-02-13 12:36:30.251754	DataFixup::FixImportedQuestionMediaComments.run	1	long_datafixups	f	1	\N	1	\N
64	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::CopyRoleOverrides'\nmethod: :run\nargs:\n- :manage_account_settings\n- :moderate_grades\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.405178	\N	\N	\N	2020-02-13 12:36:30.405247	2020-02-13 12:36:30.405247	DataFixup::CopyRoleOverrides.run	1	\N	t	1	\N	1	\N
65	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :manage_account_memberships\n- :reset_any_mfa\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.535083	\N	\N	\N	2020-02-13 12:36:30.535127	2020-02-13 12:36:30.535127	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
66	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :read_forum\n- :read_announcements\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.615078	\N	\N	\N	2020-02-13 12:36:30.615142	2020-02-13 12:36:30.615142	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
67	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AssociateGradedDiscussionAttachments'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.663808	\N	\N	\N	2020-02-13 12:36:30.663925	2020-02-13 12:36:30.663925	DataFixup::AssociateGradedDiscussionAttachments.run	1	long_datafixups	f	1	\N	1	\N
68	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixFolderNames'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.729467	\N	\N	\N	2020-02-13 12:36:30.729521	2020-02-13 12:36:30.729521	DataFixup::FixFolderNames.run	1	long_datafixups	f	1	\N	1	\N
69	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddNewDefaultReport'\nmethod: :run\nargs:\n- course_storage_csv\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:30.870079	\N	\N	\N	2020-02-13 12:36:30.870123	2020-02-13 12:36:30.870123	DataFixup::AddNewDefaultReport.run	1	\N	t	1	\N	1	\N
70	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateSubmissionCommentDraftField'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.031765	\N	\N	\N	2020-02-13 12:36:31.031818	2020-02-13 12:36:31.031818	DataFixup::PopulateSubmissionCommentDraftField.run	1	populate_submission_comment_draft_field_fixup_production	t	1	\N	1	\N
71	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MultipleGradingPeriodsDataMigration'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.060739	\N	\N	\N	2020-02-13 12:36:31.060782	2020-02-13 12:36:31.060782	DataFixup::MultipleGradingPeriodsDataMigration.run	1	multiple_grading_periods_data_migration	t	1	\N	1	\N
72	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MigrateVersionsToPartitions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.081389	\N	\N	\N	2020-02-13 12:36:31.081436	2020-02-13 12:36:31.081436	DataFixup::MigrateVersionsToPartitions.run	1	partition_versions:production	t	1	\N	1	\N
73	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixOldSubmissionVersionYAML'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.106531	\N	\N	\N	2020-02-13 12:36:31.106603	2020-02-13 12:36:31.106603	DataFixup::FixOldSubmissionVersionYAML.run	1	\N	t	1	\N	1	\N
74	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ResetNegativeUnreadCounts'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.264548	\N	\N	\N	2020-02-13 12:36:31.264605	2020-02-13 12:36:31.264605	DataFixup::ResetNegativeUnreadCounts.run	1	\N	t	1	\N	1	\N
75	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DiscussionTopic'\nmethod: :touch_all_records\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.313804	\N	\N	\N	2020-02-13 12:36:31.313877	2020-02-13 12:36:31.313877	DiscussionTopic.touch_all_records	1	\N	t	1	\N	1	\N
76	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixDeletedEnrollmentStates'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.585542	\N	\N	\N	2020-02-13 12:36:31.585588	2020-02-13 12:36:31.585588	DataFixup::FixDeletedEnrollmentStates.run	1	\N	t	1	\N	1	\N
77	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixNullRubricTitles'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.619394	\N	\N	\N	2020-02-13 12:36:31.619438	2020-02-13 12:36:31.619438	DataFixup::FixNullRubricTitles.run	1	\N	t	1	\N	1	\N
78	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixImportedAssignmentTurnitin'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.657215	\N	\N	\N	2020-02-13 12:36:31.657259	2020-02-13 12:36:31.657259	DataFixup::FixImportedAssignmentTurnitin.run	1	long_datafixups	f	1	\N	1	\N
79	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::EnsureRootAttachmentFilename'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.681647	\N	\N	\N	2020-02-13 12:36:31.681712	2020-02-13 12:36:31.681712	DataFixup::EnsureRootAttachmentFilename.run	1	\N	t	1	\N	1	\N
80	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MoveCanvadocsSubmissionsToAttachmentShard'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.704832	\N	\N	\N	2020-02-13 12:36:31.704889	2020-02-13 12:36:31.704889	DataFixup::MoveCanvadocsSubmissionsToAttachmentShard.run	1	\N	t	1	\N	1	\N
81	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixDoubleYamlizedQuestionData'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:31.770527	\N	\N	\N	2020-02-13 12:36:31.77059	2020-02-13 12:36:31.77059	DataFixup::FixDoubleYamlizedQuestionData.run	1	long_datafixups	f	1	\N	1	\N
82	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixOverwrittenFileModuleItems'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.69995	\N	\N	\N	2020-02-13 12:36:51.700006	2020-02-13 12:36:51.700006	DataFixup::FixOverwrittenFileModuleItems.run	1	\N	t	1	\N	1	\N
83	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ClearFeatureFlags'\nmethod: :run\nargs:\n- multiple_grading_periods\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.728574	\N	\N	\N	2020-02-13 12:36:51.728617	2020-02-13 12:36:51.728617	DataFixup::ClearFeatureFlags.run	1	DataFixup::ClearFeatureFlags:multiple_grading_periods:production	t	1	\N	1	\N
84	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixNanGroupWeights'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.784722	\N	\N	\N	2020-02-13 12:36:51.784771	2020-02-13 12:36:51.784771	DataFixup::FixNanGroupWeights.run	1	data_fixups:production	t	1	\N	1	\N
85	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteEmptyProgressions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.808413	\N	\N	\N	2020-02-13 12:36:51.808455	2020-02-13 12:36:51.808455	DataFixup::DeleteEmptyProgressions.run	1	\N	t	1	\N	1	\N
86	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ClearFeatureFlags'\nmethod: :run\nargs:\n- all_grading_periods_totals\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.836917	\N	\N	\N	2020-02-13 12:36:51.836957	2020-02-13 12:36:51.836957	DataFixup::ClearFeatureFlags.run	1	DataFixup::ClearFeatureFlags:all_grading_periods_totals:production	t	1	\N	1	\N
87	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteDuplicateNotificationEndpoints'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.856063	\N	\N	\N	2020-02-13 12:36:51.856104	2020-02-13 12:36:51.856104	DataFixup::DeleteDuplicateNotificationEndpoints.run	1	\N	t	1	\N	1	\N
88	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::UpdateDeveloperKeyAccessTokenCounts'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:51.901905	\N	\N	\N	2020-02-13 12:36:51.901965	2020-02-13 12:36:51.901965	DataFixup::UpdateDeveloperKeyAccessTokenCounts.run	1	\N	t	1	\N	1	\N
89	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::InitializeSubmissionCachedDueDate'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.413302	\N	\N	\N	2020-02-13 12:36:52.413396	2020-02-13 12:36:52.413396	DataFixup::InitializeSubmissionCachedDueDate.run	1	DataFixup:InitializeSubmissionCachedDueDate:1	t	1	\N	1	\N
90	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateAccountReportDateTimes'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.47168	\N	\N	\N	2020-02-13 12:36:52.47172	2020-02-13 12:36:52.47172	DataFixup::PopulateAccountReportDateTimes.run	1	\N	t	1	\N	1	\N
91	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixPointsPossibleSumsInQuizzes'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.49589	\N	\N	\N	2020-02-13 12:36:52.495967	2020-02-13 12:36:52.495967	DataFixup::FixPointsPossibleSumsInQuizzes.run	1	fix_points_possible_sums:production	t	1	\N	1	\N
92	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixPlannerOverridesMarkedCompleteData'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.532787	\N	\N	\N	2020-02-13 12:36:52.532829	2020-02-13 12:36:52.532829	DataFixup::FixPlannerOverridesMarkedCompleteData.run	1	\N	t	1	\N	1	\N
93	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateScoresCourseScore'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.689382	\N	\N	\N	2020-02-13 12:36:52.689423	2020-02-13 12:36:52.689423	DataFixup::PopulateScoresCourseScore.run	1	populate_scores_course_score_production	t	1	\N	1	\N
94	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::CreateLtiLinksForLegacyLtiToolSettings'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.722942	\N	\N	\N	2020-02-13 12:36:52.72301	2020-02-13 12:36:52.72301	DataFixup::CreateLtiLinksForLegacyLtiToolSettings.run	1	long_datafixups	f	1	\N	1	\N
95	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MoveMasterImportResults'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:52.770536	\N	\N	\N	2020-02-13 12:36:52.770577	2020-02-13 12:36:52.770577	DataFixup::MoveMasterImportResults.run	1	long_datafixups	f	1	\N	1	\N
96	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ClearFeatureFlags'\nmethod: :run\nargs:\n- new_gradebook_history\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.059918	\N	\N	\N	2020-02-13 12:36:53.059973	2020-02-13 12:36:53.059973	DataFixup::ClearFeatureFlags.run	1	DataFixup::ClearFeatureFlags:new_gradebook_history:production	t	1	\N	1	\N
97	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteInvalidCommunicationChannels'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.082784	\N	\N	\N	2020-02-13 12:36:53.082836	2020-02-13 12:36:53.082836	DataFixup::DeleteInvalidCommunicationChannels.run	1	long_datafixups	f	1	\N	1	\N
98	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::DeleteExtraPlaceholderSubmissions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.230008	\N	\N	\N	2020-02-13 12:36:53.23008	2020-02-13 12:36:53.23008	DataFixup::DeleteExtraPlaceholderSubmissions.run	1	DataFixup:DeleteExtraPlaceholderSubmissions:Migration	t	1	\N	1	\N
99	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::FixAssignmentPeerReviewJobs'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.263742	\N	\N	\N	2020-02-13 12:36:53.263786	2020-02-13 12:36:53.263786	DataFixup::FixAssignmentPeerReviewJobs.run	1	\N	t	1	\N	1	\N
100	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateRootAccountIdForGroupCategories'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.343666	\N	\N	\N	2020-02-13 12:36:53.34371	2020-02-13 12:36:53.34371	DataFixup::PopulateRootAccountIdForGroupCategories.run	1	long_datafixups	f	1	\N	1	\N
101	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateScoresAndMetadataForAssignmentGroupsAndTeacherView'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.414969	\N	\N	\N	2020-02-13 12:36:53.415017	2020-02-13 12:36:53.415017	DataFixup::PopulateScoresAndMetadataForAssignmentGroupsAndTeacherView.run	1	DataFixup::PopulateScoresAndMetadataForAssignmentGroupsAndTeacherView::Migration	t	1	\N	1	\N
102	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/class 'DataFixup::FixDiscussionTopicMaterializedViews'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.437219	\N	\N	\N	2020-02-13 12:36:53.437285	2020-02-13 12:36:53.437285	DataFixup::FixDiscussionTopicMaterializedViews.run	1	long_datafixups	f	1	\N	1	\N
103	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulatePointsForAllScores'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.4606	\N	\N	\N	2020-02-13 12:36:53.460668	2020-02-13 12:36:53.460668	DataFixup::PopulatePointsForAllScores.run	1	DataFixup::PopulatePointsForAllScores::Migration	t	1	\N	1	\N
104	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixupGroupOriginalityReports'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.51381	\N	\N	\N	2020-02-13 12:36:53.51385	2020-02-13 12:36:53.51385	DataFixup::FixupGroupOriginalityReports.run	1	DataFixup::FixupGroupOriginalityReports:production	t	1	\N	1	\N
105	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddNewDefaultReport'\nmethod: :run\nargs:\n- outcome_export_csv\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.53526	\N	\N	\N	2020-02-13 12:36:53.535296	2020-02-13 12:36:53.535296	DataFixup::AddNewDefaultReport.run	1	\N	t	1	\N	1	\N
106	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::BackfillNulls'\nmethod: :run\nargs:\n- !ruby/class 'Assignment'\n- :graders_anonymous_to_graders: false\n  :grader_comments_visible_to_graders: false\n  :grader_names_visible_to_final_grader: false\n  :grader_count: 0\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.639773	\N	\N	\N	2020-02-13 12:36:53.639822	2020-02-13 12:36:53.639822	DataFixup::BackfillNulls.run	1	long_datafixups	f	1	\N	1	\N
107	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::UpdateGradingStandardsToFullRange'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.660481	\N	\N	\N	2020-02-13 12:36:53.660524	2020-02-13 12:36:53.660524	DataFixup::UpdateGradingStandardsToFullRange.run	1	DataFixup::UpdateGradingStandardsToFullRange::Migration:production	t	1	\N	1	\N
108	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::BackfillDevKeyAccountBindings'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.965355	\N	\N	\N	2020-02-13 12:36:53.965415	2020-02-13 12:36:53.965415	DataFixup::BackfillDevKeyAccountBindings.run	1	long_datafixups	f	1	\N	1	\N
109	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::BackfillDevKeyAccountBindingsForDeletedKeys'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:53.983149	\N	\N	\N	2020-02-13 12:36:53.9832	2020-02-13 12:36:53.9832	DataFixup::BackfillDevKeyAccountBindingsForDeletedKeys.run	1	long_datafixups	f	1	\N	1	\N
110	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SetExistingBindingState'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.004777	\N	\N	\N	2020-02-13 12:36:54.004867	2020-02-13 12:36:54.004867	DataFixup::SetExistingBindingState.run	1	long_datafixups	f	1	\N	1	\N
111	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixGraderVisibilityData'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.054853	\N	\N	\N	2020-02-13 12:36:54.054915	2020-02-13 12:36:54.054915	DataFixup::FixGraderVisibilityData.run	1	DataFixup::FixGraderVisibilityData/production	t	1	\N	1	\N
112	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::RemoveOrphanedAssignmentOverrideStudents'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.110164	\N	\N	\N	2020-02-13 12:36:54.110219	2020-02-13 12:36:54.110219	DataFixup::RemoveOrphanedAssignmentOverrideStudents.run	1	long_datafixups	f	1	\N	1	\N
113	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::UpdateAnonymousGradingSettings'\nmethod: :destroy_allowed_and_off_flags\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.19284	\N	\N	\N	2020-02-13 12:36:54.192882	2020-02-13 12:36:54.192882	DataFixup::UpdateAnonymousGradingSettings.destroy_allowed_and_off_flags	1	DataFixup::UpdateAnonymousGradingSettings/production	t	1	\N	1	\N
114	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :manage_grades\n- :select_final_grade\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.251126	\N	\N	\N	2020-02-13 12:36:54.251184	2020-02-13 12:36:54.251184	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
115	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddRoleOverridesForNewPermission'\nmethod: :run\nargs:\n- :manage_account_settings\n- :view_audit_trail\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.266674	\N	\N	\N	2020-02-13 12:36:54.266737	2020-02-13 12:36:54.266737	DataFixup::AddRoleOverridesForNewPermission.run	1	\N	t	1	\N	1	\N
116	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixSelectFinalGradeForExistingAccounts'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.290793	\N	\N	\N	2020-02-13 12:36:54.290854	2020-02-13 12:36:54.290854	DataFixup::FixSelectFinalGradeForExistingAccounts.run	1	long_datafixups	f	1	\N	1	\N
117	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SetExistingBindingState'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.525685	\N	\N	\N	2020-02-13 12:36:54.525784	2020-02-13 12:36:54.525784	DataFixup::SetExistingBindingState.run	1	long_datafixups	f	1	\N	1	\N
118	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::ReinsertAssessmentQuestionFileVerifiers'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.542903	\N	\N	\N	2020-02-13 12:36:54.542947	2020-02-13 12:36:54.542947	DataFixup::ReinsertAssessmentQuestionFileVerifiers.run	1	long_datafixups	f	1	\N	1	\N
119	50	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::MigrateMessagesToPartitions'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.560022	\N	\N	\N	2020-02-13 12:36:54.560065	2020-02-13 12:36:54.560065	DataFixup::MigrateMessagesToPartitions.run	1	partition_messages:production	t	1	\N	1	\N
120	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::AddLtiIdToUsers'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.593642	\N	\N	\N	2020-02-13 12:36:54.593683	2020-02-13 12:36:54.593683	DataFixup::AddLtiIdToUsers.run	1	add_lti_id_datafixup/production	t	1	\N	1	\N
121	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::FixReinsertedVerifierQuestionYaml'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.627818	\N	\N	\N	2020-02-13 12:36:54.627911	2020-02-13 12:36:54.627911	DataFixup::FixReinsertedVerifierQuestionYaml.run	1	long_datafixups	f	1	\N	1	\N
122	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateFinalGradeOverrideCourseSetting'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.737803	\N	\N	\N	2020-02-13 12:36:54.737844	2020-02-13 12:36:54.737844	DataFixup::PopulateFinalGradeOverrideCourseSetting.run	1	DataFixup::PopulateFinalGradeOverrideCourseSetting/production	t	1	\N	1	\N
123	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::PopulateMediaTracksWebVttContent'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.763791	\N	\N	\N	2020-02-13 12:36:54.763836	2020-02-13 12:36:54.763836	DataFixup::PopulateMediaTracksWebVttContent.run	1	DataFixup::PopulateMediaTracksWebVttContent:production	t	1	\N	1	\N
124	20	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/module 'DataFixup::SetPostingNotificationFrequency'\nmethod: :run\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:36:54.977937	\N	\N	\N	2020-02-13 12:36:54.977983	2020-02-13 12:36:54.977983	DataFixup::SetPostingNotificationFrequency.run	1	DataFixup::SetPostingNotificationFrequency/production	t	1	\N	1	\N
125	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/ActiveRecord:User 1\nmethod: :update_account_associations\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:40:11.16586	\N	\N	\N	2020-02-13 12:40:11.165943	2020-02-13 12:40:11.165943	User#update_account_associations	1	\N	t	\N	\N	1	\N
126	10	0	--- !ruby/struct:Delayed::PerformableMethod\nobject: !ruby/ActiveRecord:User 1\nmethod: :update_account_associations\nargs: []\nfail_cb: \npermanent_fail_cb: \n	\N	canvas_queue	2020-02-13 12:40:11.227276	\N	\N	\N	2020-02-13 12:40:11.227319	2020-02-13 12:40:11.227319	User#update_account_associations	1	\N	t	\N	\N	1	\N
\.


--
-- Data for Name: notification_policies; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.notification_policies (id, notification_id, communication_channel_id, frequency, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: delayed_messages; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.delayed_messages (id, notification_id, notification_policy_id, context_id, context_type, communication_channel_id, frequency, workflow_state, batched_at, created_at, updated_at, send_at, link, name_of_topic, summary, root_account_id) FROM stdin;
\.


--
-- Data for Name: delayed_notifications; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.delayed_notifications (id, notification_id, asset_id, asset_type, recipient_keys, workflow_state, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: developer_key_account_bindings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.developer_key_account_bindings (id, account_id, developer_key_id, workflow_state, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: developer_keys; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.developer_keys (id, api_key, email, user_name, account_id, created_at, updated_at, user_id, name, redirect_uri, icon_url, sns_arn, trusted, force_token_reuse, workflow_state, replace_tokens, auto_expire_tokens, redirect_uris, notes, access_token_count, vendor_code, visible, scopes, require_scopes, test_cluster_only, public_jwk, internal_service, oidc_initiation_url, public_jwk_url, is_lti_key, allow_includes) FROM stdin;
\.


--
-- Data for Name: external_feeds; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.external_feeds (id, user_id, context_id, context_type, consecutive_failures, failures, refresh_at, title, url, header_match, created_at, updated_at, verbosity, migration_id) FROM stdin;
\.


--
-- Data for Name: discussion_topics; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_topics (id, title, message, context_id, context_type, type, user_id, workflow_state, last_reply_at, created_at, updated_at, delayed_post_at, posted_at, assignment_id, attachment_id, deleted_at, root_topic_id, could_be_locked, cloned_item_id, context_code, "position", migration_id, old_assignment_id, subtopics_refreshed_at, last_assignment_id, external_feed_id, editor_id, podcast_enabled, podcast_has_student_posts, require_initial_post, discussion_type, lock_at, pinned, locked, group_category_id, allow_rating, only_graders_can_rate, sort_by_rating, todo_date, is_section_specific) FROM stdin;
\.


--
-- Data for Name: discussion_entries; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_entries (id, message, discussion_topic_id, user_id, parent_id, created_at, updated_at, attachment_id, workflow_state, deleted_at, migration_id, editor_id, root_entry_id, depth, rating_count, rating_sum) FROM stdin;
\.


--
-- Data for Name: discussion_entry_participants; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_entry_participants (id, discussion_entry_id, user_id, workflow_state, forced_read_state, rating) FROM stdin;
\.


--
-- Data for Name: discussion_topic_materialized_views; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_topic_materialized_views (discussion_topic_id, json_structure, participants_array, entry_ids_array, created_at, updated_at, generation_started_at) FROM stdin;
\.


--
-- Data for Name: discussion_topic_participants; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_topic_participants (id, discussion_topic_id, user_id, unread_entry_count, workflow_state, subscribed) FROM stdin;
\.


--
-- Data for Name: discussion_topic_section_visibilities; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.discussion_topic_section_visibilities (id, discussion_topic_id, course_section_id, created_at, updated_at, workflow_state) FROM stdin;
\.


--
-- Data for Name: enrollment_dates_overrides; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.enrollment_dates_overrides (id, enrollment_term_id, enrollment_type, context_id, context_type, start_at, end_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.enrollments (id, user_id, course_id, type, uuid, workflow_state, created_at, updated_at, associated_user_id, sis_batch_id, start_at, end_at, course_section_id, root_account_id, completed_at, self_enrolled, grade_publishing_status, last_publish_attempt_at, stuck_sis_fields, grade_publishing_message, limit_privileges_to_course_section, last_activity_at, total_activity_time, role_id, graded_at, sis_pseudonym_id, last_attended_at) FROM stdin;
\.


--
-- Data for Name: enrollment_states; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.enrollment_states (enrollment_id, state, state_is_current, state_started_at, state_valid_until, restricted_access, access_is_current, lock_version, updated_at) FROM stdin;
\.


--
-- Data for Name: eportfolios; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.eportfolios (id, user_id, name, public, created_at, updated_at, uuid, workflow_state, deleted_at, spam_status) FROM stdin;
\.


--
-- Data for Name: eportfolio_categories; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.eportfolio_categories (id, eportfolio_id, name, "position", slug, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: eportfolio_entries; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.eportfolio_entries (id, eportfolio_id, eportfolio_category_id, "position", name, allow_comments, show_comments, slug, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: epub_exports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.epub_exports (id, content_export_id, course_id, user_id, workflow_state, created_at, updated_at, type) FROM stdin;
\.


--
-- Data for Name: error_reports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.error_reports (id, backtrace, url, message, comments, user_id, created_at, updated_at, email, during_tests, user_agent, request_method, http_env, subject, request_context_id, account_id, zendesk_ticket_id, data, category) FROM stdin;
\.


--
-- Data for Name: event_stream_failures; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.event_stream_failures (id, operation, event_stream, record_id, payload, exception, backtrace, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: external_feed_entries; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.external_feed_entries (id, user_id, external_feed_id, title, message, source_name, source_url, posted_at, workflow_state, url, author_name, author_email, author_url, asset_id, asset_type, uuid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: external_integration_keys; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.external_integration_keys (id, context_id, context_type, key_value, key_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.failed_jobs (id, priority, attempts, handler, last_error, queue, run_at, locked_at, failed_at, locked_by, created_at, updated_at, tag, max_attempts, strand, shard_id, original_job_id, source, expires_at) FROM stdin;
\.


--
-- Data for Name: favorites; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.favorites (id, user_id, context_id, context_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: feature_flags; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.feature_flags (id, context_id, context_type, feature, state, created_at, updated_at, visibility, manipulate) FROM stdin;
1	1	User	new_user_tutorial_on_off	on	2020-02-13 12:40:09.519594	2020-02-13 12:40:09.519594	\N	\N
\.


--
-- Data for Name: folders; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.folders (id, name, full_name, context_id, context_type, parent_folder_id, workflow_state, created_at, updated_at, deleted_at, locked, lock_at, unlock_at, cloned_item_id, "position", submission_context_code, unique_type) FROM stdin;
\.


--
-- Data for Name: progresses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.progresses (id, context_id, context_type, user_id, tag, completion, delayed_job_id, workflow_state, created_at, updated_at, message, cache_key_context, results) FROM stdin;
\.


--
-- Data for Name: gradebook_csvs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.gradebook_csvs (id, user_id, attachment_id, progress_id, course_id) FROM stdin;
\.


--
-- Data for Name: gradebook_uploads; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.gradebook_uploads (id, created_at, updated_at, course_id, user_id, progress_id, gradebook) FROM stdin;
\.


--
-- Data for Name: grading_standards; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.grading_standards (id, title, data, context_id, context_type, created_at, updated_at, user_id, usage_count, context_code, workflow_state, migration_id, version) FROM stdin;
\.


--
-- Data for Name: group_memberships; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.group_memberships (id, group_id, workflow_state, created_at, updated_at, user_id, uuid, sis_batch_id, moderator) FROM stdin;
\.


--
-- Data for Name: ignores; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.ignores (id, asset_type, asset_id, user_id, purpose, permanent, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: late_policies; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.late_policies (id, course_id, missing_submission_deduction_enabled, missing_submission_deduction, late_submission_deduction_enabled, late_submission_deduction, late_submission_interval, late_submission_minimum_percent_enabled, late_submission_minimum_percent, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: learning_outcome_groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.learning_outcome_groups (id, context_id, context_type, title, learning_outcome_group_id, root_learning_outcome_group_id, workflow_state, description, created_at, updated_at, migration_id, vendor_guid, low_grade, high_grade, vendor_guid_2, migration_id_2, outcome_import_id) FROM stdin;
\.


--
-- Data for Name: learning_outcome_question_results; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.learning_outcome_question_results (id, learning_outcome_result_id, learning_outcome_id, associated_asset_id, associated_asset_type, score, possible, mastery, percent, attempt, title, original_score, original_possible, original_mastery, assessed_at, created_at, updated_at, submitted_at) FROM stdin;
\.


--
-- Data for Name: learning_outcome_results; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.learning_outcome_results (id, context_id, context_type, context_code, association_id, association_type, content_tag_id, learning_outcome_id, mastery, user_id, score, created_at, updated_at, attempt, possible, original_score, original_possible, original_mastery, artifact_id, artifact_type, assessed_at, title, percent, associated_asset_id, associated_asset_type, submitted_at, hide_points, hidden) FROM stdin;
\.


--
-- Data for Name: live_assessments_assessments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.live_assessments_assessments (id, key, title, context_id, context_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: live_assessments_results; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.live_assessments_results (id, user_id, assessor_id, assessment_id, passed, assessed_at) FROM stdin;
\.


--
-- Data for Name: live_assessments_submissions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.live_assessments_submissions (id, user_id, assessment_id, possible, score, assessed_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: lti_resource_links; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_resource_links (id, resource_link_id, created_at, updated_at, context_external_tool_id, workflow_state) FROM stdin;
\.


--
-- Data for Name: lti_line_items; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_line_items (id, score_maximum, label, resource_id, tag, lti_resource_link_id, assignment_id, created_at, updated_at, client_id, workflow_state, extensions) FROM stdin;
\.


--
-- Data for Name: lti_links; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_links (id, resource_link_id, vendor_code, product_code, resource_type_code, linkable_id, linkable_type, custom_parameters, resource_url, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: lti_product_families; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_product_families (id, vendor_code, product_code, vendor_name, vendor_description, website, vendor_email, root_account_id, created_at, updated_at, developer_key_id) FROM stdin;
\.


--
-- Data for Name: lti_tool_proxies; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_tool_proxies (id, shared_secret, guid, product_version, lti_version, product_family_id, context_id, workflow_state, raw_data, created_at, updated_at, context_type, name, description, update_payload, registration_url) FROM stdin;
\.


--
-- Data for Name: lti_resource_handlers; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_resource_handlers (id, resource_type_code, placements, name, description, icon_info, tool_proxy_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: lti_message_handlers; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_message_handlers (id, message_type, launch_path, capabilities, parameters, resource_handler_id, created_at, updated_at, tool_proxy_id) FROM stdin;
\.


--
-- Data for Name: lti_resource_placements; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_resource_placements (id, placement, created_at, updated_at, message_handler_id) FROM stdin;
\.


--
-- Data for Name: lti_results; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_results (id, result_score, result_maximum, comment, activity_progress, grading_progress, lti_line_item_id, submission_id, user_id, created_at, updated_at, workflow_state, extensions) FROM stdin;
\.


--
-- Data for Name: lti_tool_configurations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_tool_configurations (id, developer_key_id, settings, created_at, updated_at, disabled_placements, privacy_level) FROM stdin;
\.


--
-- Data for Name: lti_tool_consumer_profiles; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_tool_consumer_profiles (id, services, capabilities, uuid, developer_key_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: lti_tool_proxy_bindings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_tool_proxy_bindings (id, context_id, context_type, tool_proxy_id, created_at, updated_at, enabled) FROM stdin;
\.


--
-- Data for Name: lti_tool_settings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.lti_tool_settings (id, tool_proxy_id, context_id, context_type, resource_link_id, custom, created_at, updated_at, product_code, vendor_code, resource_type_code, custom_parameters, resource_url) FROM stdin;
\.


--
-- Data for Name: master_courses_child_content_tags; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_child_content_tags (id, child_subscription_id, content_type, content_id, downstream_changes, migration_id) FROM stdin;
\.


--
-- Data for Name: master_courses_master_migrations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_master_migrations (id, master_template_id, user_id, export_results, exports_started_at, imports_queued_at, workflow_state, created_at, updated_at, imports_completed_at, comment, send_notification, migration_settings) FROM stdin;
\.


--
-- Data for Name: master_courses_master_content_tags; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_master_content_tags (id, master_template_id, content_type, content_id, current_migration_id, restrictions, migration_id, use_default_restrictions) FROM stdin;
\.


--
-- Data for Name: master_courses_migration_results; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.master_courses_migration_results (id, master_migration_id, content_migration_id, child_subscription_id, import_type, state, results) FROM stdin;
\.


--
-- Data for Name: media_tracks; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.media_tracks (id, user_id, media_object_id, kind, locale, content, created_at, updated_at, webvtt_content) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.messages (id, "to", "from", subject, body, delay_for, dispatch_at, sent_at, workflow_state, transmission_errors, is_bounced, notification_id, communication_channel_id, context_id, context_type, user_id, created_at, updated_at, notification_name, url, path_type, from_name, to_email, html_body, root_account_id, reply_to_name) FROM stdin;
\.


--
-- Data for Name: messages_2020_07; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.messages_2020_07 (id, "to", "from", cc, bcc, subject, body, delay_for, dispatch_at, sent_at, workflow_state, transmission_errors, is_bounced, notification_id, communication_channel_id, context_id, context_type, asset_context_id, asset_context_type, user_id, created_at, updated_at, notification_name, url, path_type, from_name, asset_context_code, notification_category, to_email, html_body, root_account_id, reply_to_name) FROM stdin;
\.


--
-- Data for Name: messages_2020_08; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.messages_2020_08 (id, "to", "from", cc, bcc, subject, body, delay_for, dispatch_at, sent_at, workflow_state, transmission_errors, is_bounced, notification_id, communication_channel_id, context_id, context_type, asset_context_id, asset_context_type, user_id, created_at, updated_at, notification_name, url, path_type, from_name, asset_context_code, notification_category, to_email, html_body, root_account_id, reply_to_name) FROM stdin;
\.


--
-- Data for Name: messages_2020_09; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.messages_2020_09 (id, "to", "from", cc, bcc, subject, body, delay_for, dispatch_at, sent_at, workflow_state, transmission_errors, is_bounced, notification_id, communication_channel_id, context_id, context_type, asset_context_id, asset_context_type, user_id, created_at, updated_at, notification_name, url, path_type, from_name, asset_context_code, notification_category, to_email, html_body, root_account_id, reply_to_name) FROM stdin;
\.


--
-- Data for Name: migration_issues; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.migration_issues (id, content_migration_id, description, workflow_state, fix_issue_html_url, issue_type, error_report_id, error_message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: moderated_grading_provisional_grades; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.moderated_grading_provisional_grades (id, grade, score, graded_at, scorer_id, submission_id, created_at, updated_at, final, source_provisional_grade_id, graded_anonymously) FROM stdin;
\.


--
-- Data for Name: moderated_grading_selections; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.moderated_grading_selections (id, assignment_id, student_id, selected_provisional_grade_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: moderation_graders; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.moderation_graders (id, anonymous_id, assignment_id, user_id, created_at, updated_at, slot_taken) FROM stdin;
\.


--
-- Data for Name: notification_endpoints; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.notification_endpoints (id, access_token_id, token, arn, created_at, updated_at, workflow_state) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.notifications (id, workflow_state, name, subject, category, delay_for, created_at, updated_at, main_link) FROM stdin;
1	active	New File Added	No Subject	Files	120	2020-02-13 11:20:09.117103	2020-02-13 11:20:09.117103	\N
2	active	New Files Added	No Subject	Files	120	2020-02-13 11:20:09.123608	2020-02-13 11:20:09.123608	\N
3	active	Assignment Due Date Override Changed	No Subject	Due Date	120	2020-02-13 11:20:09.648625	2020-02-13 11:20:09.648625	\N
5	active	Quiz Regrade Finished	No Subject	Grading	0	2020-02-13 11:20:11.43918	2020-02-13 11:20:11.43918	\N
4	active	Submission Needs Grading	No Subject	All Submissions	0	2020-02-13 11:20:11.334575	2020-02-13 11:20:11.334575	\N
6	active	Peer Review Invitation	No Subject	Invitation	0	2020-02-13 11:20:13.483834	2020-02-13 11:20:13.483834	\N
7	active	Conversation Created	No Subject	Conversation Created	0	2020-02-13 11:20:14.061408	2020-02-13 11:20:14.061408	\N
8	active	Announcement Created By You	No Subject	Announcement Created By You	0	2020-02-13 11:20:14.073954	2020-02-13 11:20:14.073954	\N
9	active	Announcement Reply	No Subject	Announcement Created By You	0	2020-02-13 11:20:14.079932	2020-02-13 11:20:14.079932	\N
10	active	Web Conference Recording Ready	No Subject	Recording Ready	0	2020-02-13 11:20:15.158324	2020-02-13 11:20:15.158324	\N
11	active	Pseudonym Registration Done	No Subject	Registration	0	2020-02-13 11:20:18.296903	2020-02-13 11:20:18.296903	\N
12	active	Blueprint Content Added	No Subject	Blueprint	0	2020-02-13 11:20:19.799605	2020-02-13 11:20:19.799605	\N
13	active	Blueprint Sync Complete	No Subject	Blueprint	0	2020-02-13 11:20:19.806311	2020-02-13 11:20:19.806311	\N
15	active	Submission Posted	No Subject	Grading	0	2020-02-13 11:20:24.287352	2020-02-13 11:20:24.287352	\N
16	active	Submissions Posted	No Subject	Grading	0	2020-02-13 11:20:24.330645	2020-02-13 11:20:24.330645	\N
18	active	Manually Created Access Token Created	No Subject	Registration	0	2020-02-13 11:20:24.595442	2020-02-13 11:20:24.595442	\N
19	active	Enrollment Accepted	No Subject	Other	0	2020-02-13 12:36:54.502532	2020-02-13 12:36:54.502532	\N
20	active	Added To Conversation	No Subject	Added To Conversation	0	2020-02-13 12:40:30.000252	2020-02-13 12:40:30.000252	\N
21	active	Alert	No Subject	Alert	0	2020-02-13 12:40:30.017495	2020-02-13 12:40:30.017495	\N
22	active	Assignment Submitted	No Subject	All Submissions	0	2020-02-13 12:40:30.026457	2020-02-13 12:40:30.026457	\N
23	active	Assignment Resubmitted	No Subject	All Submissions	0	2020-02-13 12:40:30.03637	2020-02-13 12:40:30.03637	\N
24	active	New Announcement	No Subject	Announcement	0	2020-02-13 12:40:30.052331	2020-02-13 12:40:30.052331	\N
25	active	Appointment Group Published	No Subject	Appointment Availability	0	2020-02-13 12:40:30.075288	2020-02-13 12:40:30.075288	\N
26	active	Appointment Group Updated	No Subject	Appointment Availability	0	2020-02-13 12:40:30.084614	2020-02-13 12:40:30.084614	\N
27	active	Appointment Deleted For User	No Subject	Appointment Cancelations	0	2020-02-13 12:40:30.09457	2020-02-13 12:40:30.09457	\N
28	active	Appointment Group Deleted	No Subject	Appointment Cancelations	0	2020-02-13 12:40:30.105401	2020-02-13 12:40:30.105401	\N
29	active	Appointment Reserved For User	No Subject	Appointment Signups	0	2020-02-13 12:40:30.115203	2020-02-13 12:40:30.115203	\N
30	active	New Event Created	No Subject	Calendar	0	2020-02-13 12:40:30.122845	2020-02-13 12:40:30.122845	\N
31	active	Event Date Changed	No Subject	Calendar	900	2020-02-13 12:40:30.131235	2020-02-13 12:40:30.131235	\N
32	active	Conversation Message	No Subject	Conversation Message	0	2020-02-13 12:40:30.140633	2020-02-13 12:40:30.140633	\N
33	active	Assignment Changed	No Subject	Course Content	1800	2020-02-13 12:40:30.149863	2020-02-13 12:40:30.149863	\N
34	active	Updated Wiki Page	No Subject	Course Content	900	2020-02-13 12:40:30.16422	2020-02-13 12:40:30.16422	\N
35	active	Assignment Publishing Reminder	No Subject	DEPRECATED - Reminder	0	2020-02-13 12:40:30.174879	2020-02-13 12:40:30.174879	\N
36	active	Assignment Grading Reminder	No Subject	DEPRECATED - Reminder	0	2020-02-13 12:40:30.184072	2020-02-13 12:40:30.184072	\N
37	active	Assignment Due Date Reminder	No Subject	DEPRECATED - Reminder	0	2020-02-13 12:40:30.192667	2020-02-13 12:40:30.192667	\N
38	active	New Discussion Topic	No Subject	Discussion	0	2020-02-13 12:40:30.202014	2020-02-13 12:40:30.202014	\N
39	active	New Discussion Entry	No Subject	DiscussionEntry	0	2020-02-13 12:40:30.211039	2020-02-13 12:40:30.211039	\N
40	active	Assignment Due Date Changed	No Subject	Due Date	300	2020-02-13 12:40:30.218775	2020-02-13 12:40:30.218775	\N
41	active	Assignment Created	No Subject	Due Date	0	2020-02-13 12:40:30.227551	2020-02-13 12:40:30.227551	\N
42	active	Assignment Graded	No Subject	Grading	900	2020-02-13 12:40:30.258437	2020-02-13 12:40:30.258437	\N
43	active	Assignment Unmuted	No Subject	Grading	0	2020-02-13 12:40:30.266933	2020-02-13 12:40:30.266933	\N
44	active	Submission Graded	No Subject	Grading	3600	2020-02-13 12:40:30.276936	2020-02-13 12:40:30.276936	\N
45	active	Submission Grade Changed	No Subject	Grading	300	2020-02-13 12:40:30.287079	2020-02-13 12:40:30.287079	\N
46	active	Grade Weight Changed	No Subject	Grading Policies	300	2020-02-13 12:40:30.31686	2020-02-13 12:40:30.31686	\N
47	active	Collaboration Invitation	No Subject	Invitation	0	2020-02-13 12:40:30.326397	2020-02-13 12:40:30.326397	\N
48	active	Web Conference Invitation	No Subject	Invitation	0	2020-02-13 12:40:30.336293	2020-02-13 12:40:30.336293	\N
49	active	New Context Group Membership Invitation	No Subject	Invitation	0	2020-02-13 12:40:30.345733	2020-02-13 12:40:30.345733	\N
50	active	Rubric Assessment Submission Reminder	No Subject	Invitation	0	2020-02-13 12:40:30.354687	2020-02-13 12:40:30.354687	\N
51	active	Rubric Assessment Invitation	No Subject	Invitation	0	2020-02-13 12:40:30.364437	2020-02-13 12:40:30.364437	\N
52	active	Rubric Association Created	No Subject	Invitation	0	2020-02-13 12:40:30.374855	2020-02-13 12:40:30.374855	\N
53	active	Assignment Submitted Late	No Subject	Late Grading	0	2020-02-13 12:40:30.392783	2020-02-13 12:40:30.392783	\N
54	active	Group Assignment Submitted Late	No Subject	Late Grading	0	2020-02-13 12:40:30.400823	2020-02-13 12:40:30.400823	\N
55	active	New Context Group Membership	No Subject	Membership Update	0	2020-02-13 12:40:30.408652	2020-02-13 12:40:30.408652	\N
56	active	Group Membership Accepted	No Subject	Membership Update	0	2020-02-13 12:40:30.417345	2020-02-13 12:40:30.417345	\N
57	active	Group Membership Rejected	No Subject	Membership Update	0	2020-02-13 12:40:30.426916	2020-02-13 12:40:30.426916	\N
58	active	Migration Export Ready	No Subject	Migration	0	2020-02-13 12:40:30.436712	2020-02-13 12:40:30.436712	\N
59	active	Migration Import Finished	No Subject	Migration	0	2020-02-13 12:40:30.446552	2020-02-13 12:40:30.446552	\N
60	active	Migration Import Failed	No Subject	Migration	0	2020-02-13 12:40:30.455966	2020-02-13 12:40:30.455966	\N
61	active	Content Export Finished	No Subject	Migration	0	2020-02-13 12:40:30.464303	2020-02-13 12:40:30.464303	\N
62	active	Content Export Failed	No Subject	Migration	0	2020-02-13 12:40:30.472982	2020-02-13 12:40:30.472982	\N
63	active	New Account User	No Subject	Other	0	2020-02-13 12:40:30.481234	2020-02-13 12:40:30.481234	\N
64	active	New Course	No Subject	Other	0	2020-02-13 12:40:30.48897	2020-02-13 12:40:30.48897	\N
65	active	Report Generated	No Subject	Other	0	2020-02-13 12:40:30.498765	2020-02-13 12:40:30.498765	\N
66	active	Report Generation Failed	No Subject	Other	0	2020-02-13 12:40:30.508289	2020-02-13 12:40:30.508289	\N
17	active	Account Notification	No Subject	Account Notification	\N	2020-02-13 11:20:24.410065	2020-02-13 12:40:30.7401	\N
67	active	New User	No Subject	Other	0	2020-02-13 12:40:30.517019	2020-02-13 12:40:30.517019	\N
68	active	New Student Organized Group	No Subject	Other	0	2020-02-13 12:40:30.526841	2020-02-13 12:40:30.526841	\N
69	active	Confirm Email Communication Channel	No Subject	Registration	0	2020-02-13 12:40:30.542727	2020-02-13 12:40:30.542727	\N
70	active	Merge Email Communication Channel	No Subject	Registration	0	2020-02-13 12:40:30.551923	2020-02-13 12:40:30.551923	\N
71	active	Confirm SMS Communication Channel	No Subject	Registration	0	2020-02-13 12:40:30.560636	2020-02-13 12:40:30.560636	\N
72	active	Pseudonym Registration	No Subject	Registration	0	2020-02-13 12:40:30.570801	2020-02-13 12:40:30.570801	\N
73	active	Confirm Registration	No Subject	Registration	0	2020-02-13 12:40:30.586498	2020-02-13 12:40:30.586498	\N
74	active	Forgot Password	No Subject	Registration	0	2020-02-13 12:40:30.595048	2020-02-13 12:40:30.595048	\N
75	active	Account User Registration	No Subject	Registration	0	2020-02-13 12:40:30.604007	2020-02-13 12:40:30.604007	\N
76	active	Account User Notification	No Subject	Registration	0	2020-02-13 12:40:30.614565	2020-02-13 12:40:30.614565	\N
77	active	Enrollment Invitation	No Subject	Registration	0	2020-02-13 12:40:30.623807	2020-02-13 12:40:30.623807	\N
78	active	Enrollment Registration	No Subject	Registration	0	2020-02-13 12:40:30.633109	2020-02-13 12:40:30.633109	\N
79	active	Enrollment Notification	No Subject	Registration	0	2020-02-13 12:40:30.643235	2020-02-13 12:40:30.643235	\N
80	active	Appointment Canceled By User	No Subject	Student Appointment Signups	0	2020-02-13 12:40:30.663505	2020-02-13 12:40:30.663505	\N
81	active	Appointment Reserved By User	No Subject	Student Appointment Signups	0	2020-02-13 12:40:30.674392	2020-02-13 12:40:30.674392	\N
82	active	Submission Comment	No Subject	Submission Comment	0	2020-02-13 12:40:30.684533	2020-02-13 12:40:30.684533	\N
83	active	Submission Comment For Teacher	No Subject	Submission Comment	0	2020-02-13 12:40:30.694043	2020-02-13 12:40:30.694043	\N
84	active	Summaries	No Subject	Summaries	0	2020-02-13 12:40:30.703043	2020-02-13 12:40:30.703043	\N
14	active	Content Link Error	No Subject	Content Link Error	\N	2020-02-13 11:20:23.443358	2020-02-13 12:40:30.731317	\N
\.


--
-- Data for Name: oauth_requests; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.oauth_requests (id, token, secret, user_secret, return_url, workflow_state, user_id, original_host_with_port, service, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: observer_alert_thresholds; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.observer_alert_thresholds (id, alert_type, threshold, workflow_state, created_at, updated_at, user_id, observer_id) FROM stdin;
\.


--
-- Data for Name: observer_alerts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.observer_alerts (id, observer_alert_threshold_id, context_type, context_id, alert_type, workflow_state, action_date, title, created_at, updated_at, user_id, observer_id) FROM stdin;
\.


--
-- Data for Name: observer_pairing_codes; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.observer_pairing_codes (id, user_id, code, expires_at, workflow_state, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: one_time_passwords; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.one_time_passwords (id, user_id, code, used, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: originality_reports; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.originality_reports (id, attachment_id, originality_score, originality_report_attachment_id, originality_report_url, originality_report_lti_url, created_at, updated_at, submission_id, workflow_state, link_id, error_message, submission_time) FROM stdin;
\.


--
-- Data for Name: outcome_import_errors; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.outcome_import_errors (id, outcome_import_id, message, created_at, updated_at, "row", failure) FROM stdin;
\.


--
-- Data for Name: outcome_proficiencies; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.outcome_proficiencies (id, account_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: outcome_proficiency_ratings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.outcome_proficiency_ratings (id, outcome_proficiency_id, description, points, mastery, color, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: page_comments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.page_comments (id, message, page_id, page_type, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: page_views; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.page_views (request_id, session_id, user_id, url, context_id, context_type, asset_id, asset_type, controller, action, interaction_seconds, created_at, updated_at, developer_key_id, user_request, render_time, user_agent, asset_user_access_id, participated, summarized, account_id, real_user_id, http_method, remote_ip) FROM stdin;
\.


--
-- Data for Name: parallel_importers; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.parallel_importers (id, sis_batch_id, workflow_state, index, batch_size, created_at, updated_at, started_at, ended_at, importer_type, attachment_id, rows_processed) FROM stdin;
\.


--
-- Data for Name: planner_notes; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.planner_notes (id, todo_date, title, details, user_id, course_id, workflow_state, created_at, updated_at, linked_object_type, linked_object_id) FROM stdin;
\.


--
-- Data for Name: planner_overrides; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.planner_overrides (id, plannable_type, plannable_id, user_id, workflow_state, marked_complete, deleted_at, created_at, updated_at, dismissed) FROM stdin;
\.


--
-- Data for Name: plugin_settings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.plugin_settings (id, name, settings, created_at, updated_at, disabled) FROM stdin;
\.


--
-- Data for Name: polling_polls; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.polling_polls (id, question, description, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: polling_poll_choices; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.polling_poll_choices (id, text, is_correct, poll_id, created_at, updated_at, "position") FROM stdin;
\.


--
-- Data for Name: polling_poll_sessions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.polling_poll_sessions (id, is_published, has_public_results, course_id, course_section_id, poll_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: polling_poll_submissions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.polling_poll_submissions (id, poll_id, poll_choice_id, user_id, created_at, updated_at, poll_session_id) FROM stdin;
\.


--
-- Data for Name: post_policies; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.post_policies (id, post_manually, course_id, assignment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.profiles (id, root_account_id, context_type, context_id, title, path, description, data, visibility, "position") FROM stdin;
\.


--
-- Data for Name: pseudonyms; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.pseudonyms (id, user_id, account_id, workflow_state, unique_id, crypted_password, password_salt, persistence_token, single_access_token, perishable_token, login_count, failed_login_count, last_request_at, last_login_at, current_login_at, last_login_ip, current_login_ip, reset_password_token, "position", created_at, updated_at, password_auto_generated, deleted_at, sis_batch_id, sis_user_id, sis_ssha, communication_channel_id, sis_communication_channel_id, stuck_sis_fields, integration_id, authentication_provider_id) FROM stdin;
1	1	2	active	pantharshit00@gmail.com	4000$8$1$61d88d352fb0f5402625f56c75b1406e55819f8af2d8f22891d5bc0c9bc11e55$bc50aeba3f0f9ad16ce0769e20c18802367b0b326e8d919e35f7aab12803f64f	aSeFR5cLW-ErMad81CFn	c8f41a71a543bac852376643d48406e156fb22ede11e665e1ea3da80479358e9fe7e1c65ea1eba56c8a43965d7beb622d80dcf89ed923e623a471efb6fe93440	b9oyQ84JC90nPSbEzOev	d-aQLFPGCrr0n_f6VLxS	0	0	\N	\N	\N	\N	\N		1	2020-02-13 12:40:09.846771	2020-02-13 12:40:11.003002	f	\N	\N	\N	\N	\N	\N	unique_id	\N	\N
\.


--
-- Data for Name: purgatories; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.purgatories (id, attachment_id, deleted_by_user_id, created_at, updated_at, workflow_state, old_filename, old_display_name, old_content_type, new_instfs_uuid) FROM stdin;
\.


--
-- Data for Name: quiz_groups; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_groups (id, quiz_id, name, pick_count, question_points, "position", created_at, updated_at, migration_id, assessment_question_bank_id) FROM stdin;
\.


--
-- Data for Name: quiz_questions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_questions (id, quiz_id, quiz_group_id, assessment_question_id, question_data, assessment_question_version, "position", created_at, updated_at, migration_id, workflow_state, duplicate_index) FROM stdin;
\.


--
-- Data for Name: quiz_regrades; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_regrades (id, user_id, quiz_id, quiz_version, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: quiz_question_regrades; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_question_regrades (id, quiz_regrade_id, quiz_question_id, regrade_option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: quiz_regrade_runs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_regrade_runs (id, quiz_regrade_id, started_at, finished_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: quiz_statistics; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_statistics (id, quiz_id, includes_all_versions, anonymous, created_at, updated_at, report_type, includes_sis_ids) FROM stdin;
\.


--
-- Data for Name: quiz_submission_events; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submission_events (id, attempt, event_type, quiz_submission_id, event_data, created_at, client_timestamp) FROM stdin;
\.


--
-- Data for Name: quiz_submission_events_2020_2; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submission_events_2020_2 (id, attempt, event_type, quiz_submission_id, event_data, created_at, client_timestamp) FROM stdin;
\.


--
-- Data for Name: quiz_submission_events_2020_3; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submission_events_2020_3 (id, attempt, event_type, quiz_submission_id, event_data, created_at, client_timestamp) FROM stdin;
\.


--
-- Data for Name: quiz_submission_events_2020_4; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submission_events_2020_4 (id, attempt, event_type, quiz_submission_id, event_data, created_at, client_timestamp) FROM stdin;
\.


--
-- Data for Name: quiz_submission_snapshots; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.quiz_submission_snapshots (id, quiz_submission_id, attempt, data, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: report_snapshots; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.report_snapshots (id, report_type, data, created_at, updated_at, account_id) FROM stdin;
1	counts_detailed	{"generated_at":1581551940000,"id":1,"name":"Priwsma","external_status":"active","courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}	2020-02-12 23:59:00	2020-02-13 12:40:29.929338	1
2	counts_progressive_detailed	{"yearly":[{"year":2020,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"monthly":[{"year":2020,"month":2,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"weekly":[{"year":2020,"month":2,"week":7,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"generated_at":1581551940000}	2020-02-12 23:59:00	2020-02-13 12:40:29.939345	1
3	counts_detailed	{"generated_at":1581551940000,"id":2,"name":"Site Admin","external_status":"active","courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}	2020-02-12 23:59:00	2020-02-13 12:40:29.956261	2
4	counts_progressive_detailed	{"yearly":[{"year":2020,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"monthly":[{"year":2020,"month":2,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"weekly":[{"year":2020,"month":2,"week":7,"institutions":null,"courses":0,"teachers":0,"students":0,"users":0,"files":0,"files_size":0,"media_files":0,"media_files_size":0}],"generated_at":1581551940000}	2020-02-12 23:59:00	2020-02-13 12:40:29.964131	2
\.


--
-- Data for Name: role_overrides; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.role_overrides (id, permission, enabled, locked, context_id, context_type, created_at, updated_at, applies_to_self, applies_to_descendants, role_id) FROM stdin;
\.


--
-- Data for Name: rubric_assessments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.rubric_assessments (id, user_id, rubric_id, rubric_association_id, score, data, comments, created_at, updated_at, artifact_id, artifact_type, assessment_type, assessor_id, artifact_attempt, hide_points) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.schema_migrations (version) FROM stdin;
20101201000008
20101210192618
20101216224513
20120402054554
20120402054921
20120417133444
20120422213535
20120425180934
20120501160019
20120502144730
20120502190901
20120505003400
20120510004759
20120511173314
20120514215405
20120515055355
20120516152445
20120516185217
20120517150920
20120517222224
20120518154752
20120518212446
20120522145514
20120522163145
20120523145010
20120523153500
20120525174337
20120530201701
20120530213835
20120531150712
20120531183543
20120531221324
20120601195648
20120607164022
20120607181141
20120607195540
20120608165313
20120608191051
20120620171523
20120629215700
20120630213457
20120702185313
20120709180215
20120710190752
20120711215013
20120716204625
20120717140514
20120717140515
20120717202155
20120718161934
20120724172904
20120802163230
20120802204119
20120810212309
20120813165554
20120814205244
20120820141609
20120820215005
20120917230202
20120921155127
20120921203351
20120924171046
20120924181235
20120924205209
20120927184213
20121001190034
20121003200645
20121017124430
20121017165813
20121018205505
20121029182508
20121112230145
20121113002813
20121115205740
20121115220718
20121120180117
20121127174920
20121127212421
20121129230914
20121206040918
20121206201052
20121207193355
20121210154140
20121212050526
20121218215625
20121228182649
20130103191206
20130110212740
20130114214749
20130115163556
20130118000423
20130118162201
20130121212107
20130124203149
20130128221236
20130130195248
20130130202130
20130221052614
20130226233029
20130227205659
20130307214055
20130310212252
20130312231026
20130313141722
20130319120204
20130320190243
20130325204913
20130401031740
20130401032003
20130411031858
20130416190214
20130419193229
20130422191502
20130422205650
20130423162205
20130425230856
20130430215057
20130502200753
20130506191104
20130508214241
20130509173346
20130516174336
20130521161315
20130521223335
20130528204902
20130603181545
20130603213307
20130604174602
20130605211012
20130606170924
20130610204053
20130611194212
20130612201431
20130620041526
20130624174549
20130626220656
20130628215434
20130701193624
20130701210202
20130702104734
20130703165456
20130719192808
20130724222101
20130726205640
20130726230550
20130730162545
20130730163939
20130730164252
20130802164854
20130807194322
20130823204503
20130826215926
20130905190311
20130918193333
20130924153118
20130924163929
20131001193112
20131003202023
20131014185902
20131022192816
20131023154151
20131023205614
20131106171153
20131111221538
20131202173569
20131205162354
20131216190859
20131230182437
20131230213011
20140115230951
20140116220413
20140120201847
20140131164925
20140204180348
20140204235601
20140303160957
20140311223045
20140312232054
20140314220629
20140319223606
20140401224701
20140402204820
20140404162351
20140410164417
20140414230423
20140417143325
20140417220141
20140418210000
20140418211204
20140423003242
20140423034044
20140505211339
20140505215131
20140506200812
20140509161648
20140512180015
20140512213941
20140516160845
20140516215613
20140519163623
20140519221522
20140520152745
20140522190519
20140522231727
20140523142858
20140523175853
20140527170951
20140529220933
20140530195058
20140603193939
20140604180158
20140606184901
20140606220920
20140609195358
20140613194434
20140617211933
20140710211240
20140722151057
20140723165513
20140723220226
20140728202458
20140806161233
20140819210933
20140821130508
20140822192941
20140825163916
20140825200057
20140903152155
20140903164913
20140903191721
20140904193057
20140904214619
20140915174918
20140916195352
20140919170019
20140930123844
20141001211428
20141008201112
20141015083228
20141015132218
20141022192431
20141023120911
20141024045542
20141024155909
20141029163245
20141104213722
20141106213431
20141109202906
20141110133207
20141112204534
20141114205319
20141125212000
20141202202750
20141204222243
20141205172247
20141209081016
20141210062449
20141210112542
20150113222342
20150119204052
20150203174534
20150204210125
20150206165423
20150207205406
20150210172230
20150225205638
20150305223647
20150305225732
20150305234725
20150306193021
20150306193257
20150306193436
20150306204948
20150402170409
20150402190950
20150408191716
20150409141430
20150415191548
20150416203853
20150416231745
20150423192500
20150507024232
20150507151545
20150513155145
20150514193537
20150518201834
20150519205506
20150520141519
20150526214834
20150528180152
20150603171347
20150604155956
20150608173758
20150610163001
20150618143738
20150618183919
20150623192542
20150708170103
20150708170104
20150709205405
20150713165815
20150715215932
20150728222354
20150730170646
20150730222557
20150806172319
20150807133223
20150811155403
20150818172939
20150819165426
20150826200628
20150828210853
20150831164121
20150902191222
20150903204436
20150910191348
20150910205710
20150910215720
20150914171551
20150914201058
20150914201159
20150915185129
20151006220031
20151007154224
20151008204341
20151012151746
20151012222050
20151022203907
20151103222602
20151123210429
20151201200312
20151203144731
20151203162845
20151204224305
20151210162949
20151216170559
20160104220433
20160105202518
20160120201216
20160129144155
20160210153643
20160218011039
20160222035553
20160301180730
20160303173627
20160310205719
20160314171341
20160317193020
20160411201107
20160411222238
20160412154238
20160413183434
20160419155551
20160426183801
20160426211019
20160509131527
20160509164754
20160510152226
20160517153405
20160518175241
20160519221937
20160520035902
20160520172057
20160523163311
20160601192206
20160617221055
20160623201104
20160705191447
20160708195849
20160715170252
20160803212417
20160824211046
20160902165823
20160919175208
20160929151753
20160930163249
20161021195906
20161026192632
20161028181120
20161102152118
20161102160847
20161104170317
20161104180752
20161108204808
20161116173824
20161116211024
20161117194401
20161117205800
20161118195821
20161122174824
20161128200025
20161128205000
20161130223353
20161206230329
20161206230608
20161212012659
20161216183242
20161220193846
20161229165819
20170103170627
20170104171600
20170112160146
20170119203540
20170207200626
20170207211201
20170207211526
20170208195519
20170217081027
20170302210529
20170307135135
20170314143945
20170320212242
20170322213721
20170323183550
20170323205406
20170324212128
20170327150955
20170330061014
20170406193540
20170406221124
20170407231137
20170413154928
20170421160506
20170425160326
20170425160758
20170505142033
20170505142836
20170508170608
20170508170918
20170508214002
20170509022829
20170511215654
20170512013055
20170512184911
20170516023721
20170517162828
20170522211608
20170524215805
20170530142129
20170530170614
20170609221544
20170612163744
20170621223249
20170624070039
20170628141007
20170705191526
20170705191531
20170707210332
20170711212839
20170714191148
20170716050447
20170717222046
20170719210808
20170815164619
20170815211443
20170818154348
20170822223328
20170828143250
20170905204151
20170911132849
20170926164927
20170926165524
20171002170904
20171003181703
20171005424242
20171011200626
20171017211555
20171102215205
20171107201656
20171107224337
20171127224037
20171204191806
20171206203022
20171208202812
20171212160050
20171218182205
20171218212419
20171221144707
20180108182028
20180117012629
20180117235949
20180122181625
20180122184002
20180123191425
20180124230733
20180124233814
20180125172528
20180128072635
20180131191744
20180201160908
20180201212937
20180207044504
20180207044934
20180207045041
20180213235146
20180217040011
20180222152531
20180224031729
20180224031730
20180226212914
20180226221155
20180227050308
20180228195553
20180228212612
20180301192608
20180302202825
20180307163411
20180308162114
20180312105008
20180312105009
20180312105010
20180312105011
20180312105012
20180312165129
20180319193700
20180320183422
20180323210340
20180326211022
20180327092614
20180327092617
20180327092618
20180327092619
20180327092620
20180406140718
20180406151719
20180408212014
20180413213456
20180413213542
20180415192615
20180419201618
20180420174800
20180420184406
20180420184544
20180423235216
20180424184856
20180424211010
20180430165227
20180430220730
20180502184537
20180503142113
20180514142421
20180516171715
20180521211614
20180521220334
20180523214000
20180529143959
20180531164616
20180601153016
20180607180124
20180802214712
20180806135534
20180810135126
20180810202105
20180821193008
20180822193756
20180828192739
20180830195158
20180910151722
20180910162447
20180920160456
20181001164732
20181001182233
20181005184917
20181030155958
20181031235006
20181101160456
20181101160457
20181107181656
20181115142446
20181115181442
20181115181722
20181203213109
20181207192502
20181217155351
20181219205220
20181220170044
20190103180752
20190109210111
20190111172821
20190116161525
20190116215736
20190205030245
20190212220903
20190214060931
20190304161148
20190308200717
20190325205830
20190401210314
20190402162707
20190403131808
20190403143946
20190419162825
20190429145838
20190503151652
20190515205026
20190528220036
20190529045512
20190530154451
20190603215658
20190611172144
20190614230624
20190614230625
20190618130310
20190619151634
20190620215202
20190702101937
20190702111937
20190703134306
20190705193712
20190726124504
20190726154743
20190729032941
20190729062410
20190729133359
20190801215707
20190806214554
20190806231413
20190820224919
20190828164410
20190829161540
20190904204849
20190911182555
20190916193616
20190927152242
20191001164744
20191004221732
20191004230937
20191007191957
20191016224038
20191017041727
20191021165856
20191028234905
20191029013820
20191031154616
20191115191320
20191209194226
20191210021541
20191212163805
20200106210312
839184435922331766
20120404151043
20120404230916
20120425161928
20120425201730
20120427162634
20120430164933
20120501213908
20120502212620
20120518160716
20120603222842
20120604223644
20120613214030
20120615012036
20120619203203
20120619203536
20120620184804
20120620185247
20120620190441
20120621214317
20120626174816
20120702212634
20120705144244
20120711214917
20120723201110
20120723201410
20120723201957
20120727145852
20120817191623
20120918220940
20120920154904
20121016230032
20121017165823
20121019185800
20121029214423
20121115210333
20121119201743
20121126224708
20121129175438
20130114214157
20130114215024
20130121212340
20130122193536
20130123035558
20130125234216
20130128192930
20130128220410
20130128221237
20130130203358
20130215164701
20130220000433
20130310213118
20130312024749
20130313162706
20130326210659
20130405213030
20130416170936
20130417153307
20130429190927
20130429201937
20130511131825
20130516204101
20130516205837
20130520205654
20130521163706
20130521181413
20130523162832
20130524164516
20130531135600
20130531140200
20130603211207
20130606170923
20130610174505
20130613174529
20130617152008
20130624174615
20130701160407
20130701160408
20130708201319
20130712230314
20130807165221
20130813195331
20130813195454
20130816182601
20130820202205
20130820210303
20130820210746
20130822214514
20130828191910
20130911191937
20130916174630
20130916192409
20130917194106
20130917194107
20131003195758
20131003221953
20131003222037
20131023221034
20131025153323
20131105175802
20131105230615
20131105232029
20131105234428
20131106161158
20131111224434
20131112184904
20131115165908
20131115221720
20131206221858
20131224010801
20131231182558
20131231182559
20131231194442
20140110201409
20140117195133
20140124163739
20140124173117
20140127203558
20140127204017
20140128205246
20140131163737
20140131231659
20140205171002
20140206203334
20140224212704
20140227171812
20140228201739
20140318150809
20140322132112
20140403213959
20140428182624
20140505215510
20140505223637
20140507204231
20140515163333
20140519221523
20140521183128
20140523164418
20140530195059
20140616202420
20140628015850
20140707221306
20140710153035
20140717183855
20140722150150
20140805194100
20140806162559
20140809142615
20140815192313
20140818134232
20140818144041
20140821171612
20140905171322
20140917205347
20140925153437
20141008142620
20141010172524
20141023050715
20141023164759
20141023171507
20141106211024
20141113211810
20141119233751
20141125133305
20141125180700
20141212134557
20141216202750
20141217222534
20141226194222
20150105210803
20150113222309
20150204033531
20150209173933
20150213193129
20150213195207
20150213200336
20150223211234
20150303073748
20150306215054
20150306223518
20150312155754
20150403145930
20150415152143
20150417193318
20150429143151
20150505173732
20150506164227
20150507024319
20150514194536
20150518165116
20150518202838
20150519205726
20150520143503
20150603165824
20150623232112
20150702221117
20150707202413
20150713214318
20150714162127
20150716154914
20150810175815
20150811162518
20150815071039
20150817134210
20150818031808
20150819165427
20150825233217
20150828114628
20150828171113
20150828215400
20150902140556
20150902192436
20150922142651
20150925063254
20150926232040
20151006222126
20151202171705
20151214203145
20151216161426
20151221185407
20160108163429
20160115234310
20160119170221
20160122192633
20160127184059
20160208133729
20160209163458
20160212204337
20160216135203
20160216165757
20160304205401
20160308200031
20160308215715
20160309135747
20160310141551
20160310225521
20160317134930
20160322204834
20160323121515
20160413190732
20160419220532
20160428140746
20160504154220
20160504164017
20160510211116
20160520172354
20160601141539
20160601195833
20160607214646
20160609195031
20160616151853
20160627183800
20160707203448
20160713185410
20160730111234
20160803022917
20160805163609
20160810134616
20160811164248
20160811164532
20160811172850
20160816165844
20160817170539
20160818202512
20160819193534
20160822163004
20160823152519
20160907164226
20160907201702
20160908200742
20160919180229
20160926190558
20160927165358
20161003132504
20161003171404
20161021180838
20161103144325
20161107192540
20161128205705
20161206165139
20161206165140
20161206165141
20161206191552
20161206234219
20161206323555
20161212200216
20161220003113
20170110145429
20170116190327
20170202143540
20170207231408
20170209175843
20170215234310
20170216144923
20170224175329
20170307144035
20170314165832
20170315185944
20170323171226
20170323212756
20170327170143
20170405195849
20170407190715
20170407194724
20170413202957
20170413202958
20170414134610
20170421162831
20170425165327
20170426164234
20170508171328
20170512013422
20170516154345
20170517182830
20170526160229
20170612221227
20170613174429
20170614020503
20170628144045
20170707212935
20170714192323
20170725164505
20170725225210
20170807165803
20170815103759
20170815152603
20170816172211
20170818200231
20170818213225
20170824064214
20170830204122
20170831163208
20170906012531
20170922172749
20170926095425
20171004154613
20171009205518
20171013185152
20171013193306
20171013200709
20171018160406
20171023150127
20171107205558
20171108155618
20171113174635
20171116175855
20171116180400
20171121161259
20171121162639
20171128171720
20171130225439
20171204114338
20171208174149
20171208202825
20171215171625
20180118182039
20180123003241
20180207054737
20180207061345
20180220150850
20180222195648
20180223202603
20180227015801
20180307214904
20180312105014
20180312165128
20180320192611
20180320192612
20180320211733
20180327092615
20180327092616
20180327092621
20180408035827
20180410191143
20180419201619
20180423173144
20180423173307
20180425185812
20180425200333
20180504144006
20180511152330
20180514154300
20180522203135
20180522204435
20180523134906
20180601142716
20180601143016
20180601153421
20180601162936
20180601202659
20180601202715
20180611205754
20180613150943
20180613202631
20180621161930
20180629140909
20180703154256
20180807225811
20180809193955
20180813194457
20180814153129
20180814155556
20180816150533
20180821015649
20180827172433
20180828185252
20180830155131
20181016171038
20181017213409
20181026150814
20181101160555
20181107153006
20181207192821
20181210175230
20181219174229
20190114212900
20190116221124
20190117151238
20190123151903
20190227015543
20190311214821
20190312131154
20190319200622
20190326214821
20190405134013
20190529045628
20190530174534
20190617172509
20190702103037
20190702103537
20190711193234
20190726124505
20190729062411
20190731175046
20191017125402
20191028234906
20191030231711
20191111150403
20191111191353
20200116153934
20200117145424
20200121193240
839184435922331767
\.


--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.scores (id, enrollment_id, grading_period_id, workflow_state, current_score, final_score, created_at, updated_at, assignment_group_id, course_score, unposted_current_score, unposted_final_score, current_points, unposted_current_points, final_points, unposted_final_points, override_score) FROM stdin;
\.


--
-- Data for Name: score_metadata; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.score_metadata (id, score_id, calculation_details, created_at, updated_at, workflow_state) FROM stdin;
\.


--
-- Data for Name: score_statistics; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.score_statistics (id, assignment_id, minimum, maximum, mean, count, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: session_persistence_tokens; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.session_persistence_tokens (id, token_salt, crypted_token, pseudonym_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.sessions (id, session_id, data, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.settings (id, name, value, created_at, updated_at) FROM stdin;
1	crocodoc_counter	0	2020-02-13 11:20:09.406595	2020-02-13 11:20:09.406595
2	encryption_key_hash	e3b9f61e0a2e8e2459d4f520f6842884c50fd47c	2020-02-13 11:21:25.861177	2020-02-13 11:21:25.861177
3	session_secret_key	9ba728ccb5476545994d3b6ca2c5185da9d770ae7241ad3f28bb78bdd235019b1ba9b151456acb19071f02c4404085942be7c80fe436630a93a794dd804919a6	2020-02-13 11:21:26.027481	2020-02-13 11:21:26.027481
4	default_account_id	1	2020-02-13 12:36:56.792952	2020-02-13 12:36:56.792952
5	site_admin_account_id	2	2020-02-13 12:36:56.851477	2020-02-13 12:36:56.851477
6	usage_statistics_collection	opt_out	2020-02-13 12:40:29.837859	2020-02-13 12:40:29.837859
7	support_multiple_account_types	false	2020-02-13 12:40:29.970552	2020-02-13 12:40:29.970552
8	show_opensource_linkback	true	2020-02-13 12:40:29.976272	2020-02-13 12:40:29.976272
\.


--
-- Data for Name: shared_brand_configs; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.shared_brand_configs (id, name, account_id, brand_config_md5, created_at, updated_at) FROM stdin;
1	Minimalist Theme	\N	3f38c01c65835e7de842d709a89ec3e8	2020-02-13 11:20:17.071408	2020-02-13 11:20:17.071408
2	State U. Theme	\N	7845907c6e76db998e5f24d63aca97b5	2020-02-13 11:20:17.076949	2020-02-13 11:20:17.076949
3	K12 Theme	\N	a1f113321fa024e7a14cb0948597a2a4	2020-02-13 11:20:17.081341	2020-02-13 11:20:17.081341
\.


--
-- Data for Name: sis_batch_errors; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.sis_batch_errors (id, sis_batch_id, root_account_id, message, backtrace, file, failure, "row", created_at, row_info) FROM stdin;
\.


--
-- Data for Name: sis_batch_roll_back_data; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.sis_batch_roll_back_data (id, sis_batch_id, context_type, context_id, previous_workflow_state, updated_workflow_state, batch_mode_delete, workflow_state, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sis_post_grades_statuses; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.sis_post_grades_statuses (id, course_id, course_section_id, user_id, status, message, grades_posted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stream_item_instances; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.stream_item_instances (id, user_id, stream_item_id, hidden, workflow_state, context_type, context_id) FROM stdin;
\.


--
-- Data for Name: stream_items; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.stream_items (id, data, created_at, updated_at, context_type, context_id, asset_type, asset_id, notification_category) FROM stdin;
\.


--
-- Data for Name: submission_comments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.submission_comments (id, comment, submission_id, author_id, author_name, group_comment_id, created_at, updated_at, attachment_ids, assessment_request_id, media_comment_id, media_comment_type, context_id, context_type, cached_attachments, anonymous, teacher_only_comment, hidden, provisional_grade_id, draft, edited_at, attempt) FROM stdin;
\.


--
-- Data for Name: submission_drafts; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.submission_drafts (id, submission_id, submission_attempt, body, url, active_submission_type, media_object_id) FROM stdin;
\.


--
-- Data for Name: submission_draft_attachments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.submission_draft_attachments (id, submission_draft_id, attachment_id) FROM stdin;
\.


--
-- Data for Name: submission_versions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.submission_versions (id, context_id, context_type, version_id, user_id, assignment_id) FROM stdin;
\.


--
-- Data for Name: switchman_shards; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.switchman_shards (id, name, database_server_id, "default", settings, delayed_jobs_shard_id, created_at, updated_at) FROM stdin;
1	\N	\N	t	\N	\N	2020-02-13 12:36:27.754864	2020-02-13 12:36:27.754864
\.


--
-- Data for Name: terms_of_service_contents; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.terms_of_service_contents (id, content, created_at, updated_at, terms_updated_at, workflow_state, account_id) FROM stdin;
\.


--
-- Data for Name: terms_of_services; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.terms_of_services (id, terms_type, passive, terms_of_service_content_id, account_id, created_at, updated_at, workflow_state) FROM stdin;
1	default	t	\N	1	2020-02-13 12:36:56.773458	2020-02-13 12:36:56.773458	active
2	default	t	\N	2	2020-02-13 12:36:56.844107	2020-02-13 12:36:56.844107	active
\.


--
-- Data for Name: thumbnails; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.thumbnails (id, parent_id, content_type, filename, thumbnail, size, width, height, created_at, updated_at, uuid, namespace) FROM stdin;
\.


--
-- Data for Name: user_account_associations; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_account_associations (id, user_id, account_id, depth, created_at, updated_at) FROM stdin;
1	1	2	0	2020-02-13 12:40:09.877158	2020-02-13 12:40:09.877158
\.


--
-- Data for Name: user_merge_data; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_merge_data (id, user_id, from_user_id, created_at, updated_at, workflow_state) FROM stdin;
\.


--
-- Data for Name: user_merge_data_items; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_merge_data_items (id, user_merge_data_id, user_id, item_type, item) FROM stdin;
\.


--
-- Data for Name: user_merge_data_records; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_merge_data_records (id, user_merge_data_id, context_id, previous_user_id, context_type, previous_workflow_state) FROM stdin;
\.


--
-- Data for Name: user_notes; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_notes (id, user_id, note, title, created_by_id, workflow_state, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_observers; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_observers (id, user_id, observer_id, workflow_state, created_at, updated_at, sis_batch_id, root_account_id) FROM stdin;
\.


--
-- Data for Name: user_past_lti_ids; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_past_lti_ids (id, user_id, context_id, context_type, user_uuid, user_lti_id, user_lti_context_id) FROM stdin;
\.


--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_profiles (id, bio, title, user_id) FROM stdin;
\.


--
-- Data for Name: user_profile_links; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_profile_links (id, url, title, user_profile_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_services; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.user_services (id, user_id, token, secret, protocol, service, created_at, updated_at, service_user_url, service_user_id, service_user_name, service_domain, crypted_password, password_salt, type, workflow_state, last_result_id, refresh_at, visible) FROM stdin;
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.versions (id, versionable_id, versionable_type, number, yaml, created_at) FROM stdin;
\.


--
-- Data for Name: versions_0; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.versions_0 (id, versionable_id, versionable_type, number, yaml, created_at) FROM stdin;
\.


--
-- Data for Name: versions_1; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.versions_1 (id, versionable_id, versionable_type, number, yaml, created_at) FROM stdin;
\.


--
-- Data for Name: viewed_submission_comments; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.viewed_submission_comments (id, user_id, submission_comment_id, viewed_at) FROM stdin;
\.


--
-- Data for Name: web_conferences; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.web_conferences (id, title, conference_type, conference_key, context_id, context_type, user_ids, added_user_ids, user_id, started_at, description, duration, created_at, updated_at, uuid, invited_user_ids, ended_at, start_at, end_at, context_code, type, settings, recording_ready) FROM stdin;
\.


--
-- Data for Name: web_conference_participants; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.web_conference_participants (id, user_id, web_conference_id, participation_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: canvas
--

COPY public.wiki_pages (id, wiki_id, title, body, workflow_state, user_id, created_at, updated_at, url, protected_editing, editing_roles, view_count, revised_at, could_be_locked, cloned_item_id, migration_id, assignment_id, old_assignment_id, todo_date, context_id, context_type) FROM stdin;
\.


--
-- Name: abstract_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.abstract_courses_id_seq', 1, false);


--
-- Name: access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.access_tokens_id_seq', 1, false);


--
-- Name: account_notification_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_notification_roles_id_seq', 1, false);


--
-- Name: account_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_notifications_id_seq', 1, false);


--
-- Name: account_report_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_report_rows_id_seq', 1, false);


--
-- Name: account_report_runners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_report_runners_id_seq', 1, false);


--
-- Name: account_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_reports_id_seq', 1, false);


--
-- Name: account_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.account_users_id_seq', 2, true);


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.accounts_id_seq', 2, true);


--
-- Name: alert_criteria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.alert_criteria_id_seq', 1, false);


--
-- Name: alerts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.alerts_id_seq', 1, false);


--
-- Name: anonymous_or_moderation_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.anonymous_or_moderation_events_id_seq', 1, false);


--
-- Name: appointment_group_contexts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.appointment_group_contexts_id_seq', 1, false);


--
-- Name: appointment_group_sub_contexts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.appointment_group_sub_contexts_id_seq', 1, false);


--
-- Name: appointment_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.appointment_groups_id_seq', 1, false);


--
-- Name: assessment_question_bank_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assessment_question_bank_users_id_seq', 1, false);


--
-- Name: assessment_question_banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assessment_question_banks_id_seq', 1, false);


--
-- Name: assessment_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assessment_questions_id_seq', 1, false);


--
-- Name: assessment_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assessment_requests_id_seq', 1, false);


--
-- Name: asset_user_accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.asset_user_accesses_id_seq', 1, false);


--
-- Name: assignment_configuration_tool_lookups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assignment_configuration_tool_lookups_id_seq', 1, false);


--
-- Name: assignment_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assignment_groups_id_seq', 1, false);


--
-- Name: assignment_override_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assignment_override_students_id_seq', 1, false);


--
-- Name: assignment_overrides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assignment_overrides_id_seq', 1, false);


--
-- Name: assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.assignments_id_seq', 1, false);


--
-- Name: attachment_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.attachment_associations_id_seq', 1, false);


--
-- Name: attachment_upload_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.attachment_upload_statuses_id_seq', 1, false);


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, false);


--
-- Name: authentication_providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.authentication_providers_id_seq', 2, true);


--
-- Name: bookmarks_bookmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.bookmarks_bookmarks_id_seq', 1, false);


--
-- Name: calendar_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.calendar_events_id_seq', 1, false);


--
-- Name: canvadocs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.canvadocs_id_seq', 1, false);


--
-- Name: canvadocs_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.canvadocs_submissions_id_seq', 1, false);


--
-- Name: cloned_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.cloned_items_id_seq', 1, false);


--
-- Name: collaborations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.collaborations_id_seq', 1, false);


--
-- Name: collaborators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.collaborators_id_seq', 1, false);


--
-- Name: communication_channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.communication_channels_id_seq', 1, true);


--
-- Name: content_exports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_exports_id_seq', 1, false);


--
-- Name: content_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_migrations_id_seq', 1, false);


--
-- Name: content_participation_counts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_participation_counts_id_seq', 1, false);


--
-- Name: content_participations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_participations_id_seq', 1, false);


--
-- Name: content_shares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_shares_id_seq', 1, false);


--
-- Name: content_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.content_tags_id_seq', 1, false);


--
-- Name: context_external_tool_assignment_lookups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.context_external_tool_assignment_lookups_id_seq', 1, false);


--
-- Name: context_external_tool_placements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.context_external_tool_placements_id_seq', 1, false);


--
-- Name: context_external_tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.context_external_tools_id_seq', 1, false);


--
-- Name: context_module_progressions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.context_module_progressions_id_seq', 1, false);


--
-- Name: context_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.context_modules_id_seq', 1, false);


--
-- Name: conversation_batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.conversation_batches_id_seq', 1, false);


--
-- Name: conversation_message_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.conversation_message_participants_id_seq', 1, false);


--
-- Name: conversation_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.conversation_messages_id_seq', 1, false);


--
-- Name: conversation_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.conversation_participants_id_seq', 1, false);


--
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.conversations_id_seq', 1, false);


--
-- Name: course_account_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.course_account_associations_id_seq', 1, false);


--
-- Name: course_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.course_sections_id_seq', 1, false);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.courses_id_seq', 1, false);


--
-- Name: crocodoc_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.crocodoc_documents_id_seq', 1, false);


--
-- Name: csp_domains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.csp_domains_id_seq', 1, false);


--
-- Name: custom_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.custom_data_id_seq', 1, false);


--
-- Name: custom_gradebook_column_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.custom_gradebook_column_data_id_seq', 1, false);


--
-- Name: custom_gradebook_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.custom_gradebook_columns_id_seq', 1, false);


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.delayed_jobs_id_seq', 126, true);


--
-- Name: delayed_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.delayed_messages_id_seq', 1, false);


--
-- Name: delayed_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.delayed_notifications_id_seq', 1, false);


--
-- Name: developer_key_account_bindings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.developer_key_account_bindings_id_seq', 1, false);


--
-- Name: developer_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.developer_keys_id_seq', 1, false);


--
-- Name: discussion_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.discussion_entries_id_seq', 1, false);


--
-- Name: discussion_entry_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.discussion_entry_participants_id_seq', 1, false);


--
-- Name: discussion_topic_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.discussion_topic_participants_id_seq', 1, false);


--
-- Name: discussion_topic_section_visibilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.discussion_topic_section_visibilities_id_seq', 1, false);


--
-- Name: discussion_topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.discussion_topics_id_seq', 1, false);


--
-- Name: enrollment_dates_overrides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.enrollment_dates_overrides_id_seq', 1, false);


--
-- Name: enrollment_terms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.enrollment_terms_id_seq', 2, true);


--
-- Name: enrollments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.enrollments_id_seq', 1, false);


--
-- Name: eportfolio_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.eportfolio_categories_id_seq', 1, false);


--
-- Name: eportfolio_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.eportfolio_entries_id_seq', 1, false);


--
-- Name: eportfolios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.eportfolios_id_seq', 1, false);


--
-- Name: epub_exports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.epub_exports_id_seq', 1, false);


--
-- Name: error_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.error_reports_id_seq', 1, false);


--
-- Name: event_stream_failures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.event_stream_failures_id_seq', 1, false);


--
-- Name: external_feed_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.external_feed_entries_id_seq', 1, false);


--
-- Name: external_feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.external_feeds_id_seq', 1, false);


--
-- Name: external_integration_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.external_integration_keys_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.favorites_id_seq', 1, false);


--
-- Name: feature_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.feature_flags_id_seq', 1, true);


--
-- Name: folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.folders_id_seq', 1, false);


--
-- Name: gradebook_csvs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.gradebook_csvs_id_seq', 1, false);


--
-- Name: gradebook_uploads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.gradebook_uploads_id_seq', 1, false);


--
-- Name: grading_period_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.grading_period_groups_id_seq', 1, false);


--
-- Name: grading_periods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.grading_periods_id_seq', 1, false);


--
-- Name: grading_standards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.grading_standards_id_seq', 1, false);


--
-- Name: group_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.group_categories_id_seq', 1, false);


--
-- Name: group_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.group_memberships_id_seq', 1, false);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.groups_id_seq', 1, false);


--
-- Name: ignores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.ignores_id_seq', 1, false);


--
-- Name: late_policies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.late_policies_id_seq', 1, false);


--
-- Name: learning_outcome_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.learning_outcome_groups_id_seq', 1, false);


--
-- Name: learning_outcome_question_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.learning_outcome_question_results_id_seq', 1, false);


--
-- Name: learning_outcome_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.learning_outcome_results_id_seq', 1, false);


--
-- Name: learning_outcomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.learning_outcomes_id_seq', 1, false);


--
-- Name: live_assessments_assessments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.live_assessments_assessments_id_seq', 1, false);


--
-- Name: live_assessments_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.live_assessments_results_id_seq', 1, false);


--
-- Name: live_assessments_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.live_assessments_submissions_id_seq', 1, false);


--
-- Name: lti_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_line_items_id_seq', 1, false);


--
-- Name: lti_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_links_id_seq', 1, false);


--
-- Name: lti_message_handlers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_message_handlers_id_seq', 1, false);


--
-- Name: lti_product_families_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_product_families_id_seq', 1, false);


--
-- Name: lti_resource_handlers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_resource_handlers_id_seq', 1, false);


--
-- Name: lti_resource_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_resource_links_id_seq', 1, false);


--
-- Name: lti_resource_placements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_resource_placements_id_seq', 1, false);


--
-- Name: lti_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_results_id_seq', 1, false);


--
-- Name: lti_tool_configurations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_tool_configurations_id_seq', 1, false);


--
-- Name: lti_tool_consumer_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_tool_consumer_profiles_id_seq', 1, false);


--
-- Name: lti_tool_proxies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_tool_proxies_id_seq', 1, false);


--
-- Name: lti_tool_proxy_bindings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_tool_proxy_bindings_id_seq', 1, false);


--
-- Name: lti_tool_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.lti_tool_settings_id_seq', 1, false);


--
-- Name: master_courses_child_content_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_child_content_tags_id_seq', 1, false);


--
-- Name: master_courses_child_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_child_subscriptions_id_seq', 1, false);


--
-- Name: master_courses_master_content_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_master_content_tags_id_seq', 1, false);


--
-- Name: master_courses_master_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_master_migrations_id_seq', 1, false);


--
-- Name: master_courses_master_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_master_templates_id_seq', 1, false);


--
-- Name: master_courses_migration_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.master_courses_migration_results_id_seq', 1, false);


--
-- Name: media_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.media_objects_id_seq', 1, false);


--
-- Name: media_tracks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.media_tracks_id_seq', 1, false);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: migration_issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.migration_issues_id_seq', 1, false);


--
-- Name: moderated_grading_provisional_grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.moderated_grading_provisional_grades_id_seq', 1, false);


--
-- Name: moderated_grading_selections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.moderated_grading_selections_id_seq', 1, false);


--
-- Name: moderation_graders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.moderation_graders_id_seq', 1, false);


--
-- Name: notification_endpoints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.notification_endpoints_id_seq', 1, false);


--
-- Name: notification_policies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.notification_policies_id_seq', 1, false);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.notifications_id_seq', 84, true);


--
-- Name: oauth_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.oauth_requests_id_seq', 1, false);


--
-- Name: observer_alert_thresholds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.observer_alert_thresholds_id_seq', 1, false);


--
-- Name: observer_alerts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.observer_alerts_id_seq', 1, false);


--
-- Name: observer_pairing_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.observer_pairing_codes_id_seq', 1, false);


--
-- Name: one_time_passwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.one_time_passwords_id_seq', 1, false);


--
-- Name: originality_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.originality_reports_id_seq', 1, false);


--
-- Name: outcome_import_errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.outcome_import_errors_id_seq', 1, false);


--
-- Name: outcome_imports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.outcome_imports_id_seq', 1, false);


--
-- Name: outcome_proficiencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.outcome_proficiencies_id_seq', 1, false);


--
-- Name: outcome_proficiency_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.outcome_proficiency_ratings_id_seq', 1, false);


--
-- Name: page_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.page_comments_id_seq', 1, false);


--
-- Name: parallel_importers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.parallel_importers_id_seq', 1, false);


--
-- Name: planner_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.planner_notes_id_seq', 1, false);


--
-- Name: planner_overrides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.planner_overrides_id_seq', 1, false);


--
-- Name: plugin_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.plugin_settings_id_seq', 1, false);


--
-- Name: polling_poll_choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.polling_poll_choices_id_seq', 1, false);


--
-- Name: polling_poll_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.polling_poll_sessions_id_seq', 1, false);


--
-- Name: polling_poll_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.polling_poll_submissions_id_seq', 1, false);


--
-- Name: polling_polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.polling_polls_id_seq', 1, false);


--
-- Name: post_policies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.post_policies_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: progresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.progresses_id_seq', 1, false);


--
-- Name: pseudonyms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.pseudonyms_id_seq', 1, true);


--
-- Name: purgatories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.purgatories_id_seq', 1, false);


--
-- Name: quiz_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_groups_id_seq', 1, false);


--
-- Name: quiz_question_regrades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_question_regrades_id_seq', 1, false);


--
-- Name: quiz_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_questions_id_seq', 1, false);


--
-- Name: quiz_regrade_runs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_regrade_runs_id_seq', 1, false);


--
-- Name: quiz_regrades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_regrades_id_seq', 1, false);


--
-- Name: quiz_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_statistics_id_seq', 1, false);


--
-- Name: quiz_submission_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_submission_events_id_seq', 1, false);


--
-- Name: quiz_submission_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_submission_snapshots_id_seq', 1, false);


--
-- Name: quiz_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quiz_submissions_id_seq', 1, false);


--
-- Name: quizzes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.quizzes_id_seq', 1, false);


--
-- Name: report_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.report_snapshots_id_seq', 4, true);


--
-- Name: role_overrides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.role_overrides_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.roles_id_seq', 8, true);


--
-- Name: rubric_assessments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.rubric_assessments_id_seq', 1, false);


--
-- Name: rubric_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.rubric_associations_id_seq', 1, false);


--
-- Name: rubrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.rubrics_id_seq', 1, false);


--
-- Name: score_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.score_metadata_id_seq', 1, false);


--
-- Name: score_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.score_statistics_id_seq', 1, false);


--
-- Name: scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.scores_id_seq', 1, false);


--
-- Name: session_persistence_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.session_persistence_tokens_id_seq', 1, false);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.sessions_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.settings_id_seq', 8, true);


--
-- Name: shared_brand_configs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.shared_brand_configs_id_seq', 3, true);


--
-- Name: sis_batch_errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.sis_batch_errors_id_seq', 1, false);


--
-- Name: sis_batch_roll_back_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.sis_batch_roll_back_data_id_seq', 1, false);


--
-- Name: sis_batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.sis_batches_id_seq', 1, false);


--
-- Name: sis_post_grades_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.sis_post_grades_statuses_id_seq', 1, false);


--
-- Name: stream_item_instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.stream_item_instances_id_seq', 1, false);


--
-- Name: stream_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.stream_items_id_seq', 1, false);


--
-- Name: submission_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.submission_comments_id_seq', 1, false);


--
-- Name: submission_draft_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.submission_draft_attachments_id_seq', 1, false);


--
-- Name: submission_drafts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.submission_drafts_id_seq', 1, false);


--
-- Name: submission_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.submission_versions_id_seq', 1, false);


--
-- Name: submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.submissions_id_seq', 1, false);


--
-- Name: switchman_shards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.switchman_shards_id_seq', 1, true);


--
-- Name: terms_of_service_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.terms_of_service_contents_id_seq', 1, false);


--
-- Name: terms_of_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.terms_of_services_id_seq', 2, true);


--
-- Name: thumbnails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.thumbnails_id_seq', 1, false);


--
-- Name: usage_rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.usage_rights_id_seq', 1, false);


--
-- Name: user_account_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_account_associations_id_seq', 1, true);


--
-- Name: user_merge_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_merge_data_id_seq', 1, false);


--
-- Name: user_merge_data_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_merge_data_items_id_seq', 1, false);


--
-- Name: user_merge_data_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_merge_data_records_id_seq', 1, false);


--
-- Name: user_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_notes_id_seq', 1, false);


--
-- Name: user_observers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_observers_id_seq', 1, false);


--
-- Name: user_past_lti_ids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_past_lti_ids_id_seq', 1, false);


--
-- Name: user_profile_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_profile_links_id_seq', 1, false);


--
-- Name: user_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_profiles_id_seq', 1, false);


--
-- Name: user_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.user_services_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.versions_id_seq', 1, false);


--
-- Name: viewed_submission_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.viewed_submission_comments_id_seq', 1, false);


--
-- Name: web_conference_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.web_conference_participants_id_seq', 1, false);


--
-- Name: web_conferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.web_conferences_id_seq', 1, false);


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.wiki_pages_id_seq', 1, false);


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: canvas
--

SELECT pg_catalog.setval('public.wikis_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

