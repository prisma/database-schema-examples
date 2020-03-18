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
-- Data for Name: addons_kudos; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_kudos (kudos_id, sender_id, receiver_id, is_receiver_user, entity_id, entity_type, message, created_date, parent_entity_id, activity_id) FROM stdin;
\.


--
-- Data for Name: addons_perkstore_product; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_perkstore_product (product_id, title, description, illustration_url, enabled, unlimited, allow_fraction, total_supply, price, receiver_id, periodicity, max_orders_per_user, created_date, last_modified_date, creator, last_modifier) FROM stdin;
\.


--
-- Data for Name: addons_perkstore_image; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_perkstore_image (image_file_id, product_id) FROM stdin;
\.


--
-- Data for Name: addons_perkstore_product_marchand; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_perkstore_product_marchand (marchand_identity_id, product_id) FROM stdin;
\.


--
-- Data for Name: addons_perkstore_product_order; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_perkstore_product_order (order_id, product_id, transaction_hash, refund_transaction_hash, quantity, delivered_quantity, refunded_quantity, remaining_quantity, amount, refunded_amount, sender_id, receiver_id, status, tx_status, refund_tx_status, created_date, delivered_date, refunded_date, error_code) FROM stdin;
\.


--
-- Data for Name: addons_perkstore_product_permission; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_perkstore_product_permission (permission_identity_id, product_id) FROM stdin;
\.


--
-- Data for Name: addons_wallet_account; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_account (identity_id, identity_type, address, phrase, enabled, initialization_state, backed_up) FROM stdin;
\.


--
-- Data for Name: addons_wallet_blockchain_state; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_blockchain_state (blockchain_state_id, wallet_id, contract_address, ether_balance, token_balance, reward_balance, vesting_balance, admin_level, is_approved, is_initialized) FROM stdin;
\.


--
-- Data for Name: addons_wallet_gam_team; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_gam_team (team_id, team_name, team_description, team_reward_type, team_budget, team_member_reward, team_space_id, team_manager_id, team_disabled, team_deleted) FROM stdin;
\.


--
-- Data for Name: addons_wallet_gam_team_member; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_gam_team_member (member_id, member_identity_id, team_id) FROM stdin;
\.


--
-- Data for Name: addons_wallet_key; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_key (key_id, wallet_id, content) FROM stdin;
\.


--
-- Data for Name: addons_wallet_label; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_label (label_id, identity_id, address, label) FROM stdin;
\.


--
-- Data for Name: addons_wallet_reward_period; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_reward_period (reward_period_id, period_type, start_time, end_time, status) FROM stdin;
\.


--
-- Data for Name: addons_wallet_reward; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_reward (reward_id, identity_id, reward_period_id, team_id, transaction_hash, enabled, tokens_to_send, tokens_sent) FROM stdin;
\.


--
-- Data for Name: addons_wallet_reward_plugin; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_reward_plugin (reward_plugin_id, reward_id, plugin_id, pool_used, points, amount) FROM stdin;
\.


--
-- Data for Name: addons_wallet_transaction; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.addons_wallet_transaction (transaction_id, network_id, hash, pending, success, admin_op, from_address, to_address, by_address, label, message, value, contract_address, contract_method, contract_amount, created_date, issuer_id, gas_used, gas_price, token_fee, no_contract_funds, nonce, raw_transaction, sent_date, sending_attempt_count, ether_fee) FROM stdin;
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels) FROM stdin;
1.0.0-1	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.556956	1	EXECUTED	7:bb8eb828f651c68d9d746843bfde2001	createTable		\N	3.4.2	\N	\N
1.0.0-1.1	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.636871	2	EXECUTED	7:8d6cac6ef3d8b8b2203a872d1ea97b62	createIndex (x4)		\N	3.4.2	\N	\N
1.0.0-2	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.669433	3	EXECUTED	7:3bba80b84c923b4801e7f7e827888d5e	createTable, addPrimaryKey, createIndex		\N	3.4.2	\N	\N
1.0.0-3	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.725297	4	EXECUTED	7:eb7b94336cb1f07289e42c094502d61a	createTable, addUniqueConstraint, createIndex		\N	3.4.2	\N	\N
1.0.0-4	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.756181	5	EXECUTED	7:4655dc83ab03418a67eff4c7740caff9	createTable		\N	3.4.2	\N	\N
1.0.0-8	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.784718	6	EXECUTED	7:2bb2cfaba77eac42f197bbfe9c35f7d4	createTable		\N	3.4.2	\N	\N
1.0.0-8.1	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.81594	7	EXECUTED	7:c91f0928bad4a00e097230b7e99b2d0d	createIndex (x2)		\N	3.4.2	\N	\N
1.0.0-9	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.839481	8	EXECUTED	7:41d855411ab9b2efbf5b4d381b3c163a	addPrimaryKey		\N	3.4.2	\N	\N
1.0.0-11	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.862018	9	EXECUTED	7:52dc6c7c9930142e5852f865311e0749	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-12	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.885817	10	EXECUTED	7:e67a229b4696a9cfc86585d14c2b9db6	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-14	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.910621	11	EXECUTED	7:555309d73e0e82cea0b4b1c508d77d1d	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-17	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.935698	12	EXECUTED	7:039fb55275f4d7a1851611a4fcb14e03	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-18	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.962893	13	EXECUTED	7:1f21b96ad15617055cc80c5ce01b05ea	createSequence		\N	3.4.2	\N	\N
1.0.0-19	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:07.976934	14	EXECUTED	7:742da2f8009be198c68e6a891b7e4098	createSequence		\N	3.4.2	\N	\N
1.0.0-22	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.003491	15	EXECUTED	7:3859fd40619cabbc63beb25fccfa3373	createSequence		\N	3.4.2	\N	\N
1.0.0-23	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.049315	16	EXECUTED	7:bcd010320c809f5338a4ec3b40dfac00	createTable		\N	3.4.2	\N	\N
1.0.0-24	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.086762	17	EXECUTED	7:f2d5465629c1c7e39e23f37491a9f08b	createTable		\N	3.4.2	\N	\N
1.0.0-25	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.113714	18	EXECUTED	7:3f3178418861f8bb3c73b663d3a1bca0	createTable		\N	3.4.2	\N	\N
1.0.0-26	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.144935	19	EXECUTED	7:c79ef7602443ce4d6bcb45bae3ce6d06	createTable		\N	3.4.2	\N	\N
1.0.0-27	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.179428	20	EXECUTED	7:f8dab4d904ded38a4a8ea564256ffb66	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-28	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.195928	21	EXECUTED	7:7709e1810307e68d41614e8ec9b0a9a0	createSequence		\N	3.4.2	\N	\N
1.0.0-31	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.228436	22	EXECUTED	7:0ba1685d12a548e237b70267e9ba52ba	createTable		\N	3.4.2	\N	\N
1.0.0-32	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.259206	23	EXECUTED	7:7fbb3a40ce5d2c9744c0b3be89a14598	createTable		\N	3.4.2	\N	\N
1.0.0-33	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.294281	24	EXECUTED	7:8b705d982ec9ca5dad8a29a199d3272b	addUniqueConstraint, sql, addUniqueConstraint, addPrimaryKey		\N	3.4.2	\N	\N
1.0.0-34	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.361527	25	EXECUTED	7:0a2a27d21316bce743962c238232a341	createTable, createIndex (x4)		\N	3.4.2	\N	\N
1.0.0-35	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.390954	26	EXECUTED	7:7e725e11e0361ef65db0a7d9eb042d37	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-36	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.41195	27	EXECUTED	7:27b74decfba35dd2bd5075fe6b697e3a	createSequence		\N	3.4.2	\N	\N
1.0.0-37	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.425674	28	EXECUTED	7:e5242ae81132f5179ca7323fb38116b9	createSequence		\N	3.4.2	\N	\N
1.0.0-38	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.444107	29	EXECUTED	7:8bb86434b333fe8b91dae23c2cfc517c	createSequence		\N	3.4.2	\N	\N
1.0.0-39	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.459141	30	EXECUTED	7:081925ed90b605549ec36e6c2025739e	createIndex		\N	3.4.2	\N	\N
1.0.0-40	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.507192	31	EXECUTED	7:6087acc1483c68685544ab7b4b0ebf50	createIndex (x2)		\N	3.4.2	\N	\N
1.0.0-41	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.5241	32	EXECUTED	7:143227b7d949e6068df471dabae3e16d	createIndex		\N	3.4.2	\N	\N
1.0.0-42	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.547216	33	EXECUTED	7:894b3deae972ee6a5ae221f0494f6bf0	modifyDataType		\N	3.4.2	\N	\N
1.0.0-43	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.567361	34	EXECUTED	7:531990fb8a1ebe0cc314cfb34128c389	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-44	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.585915	35	EXECUTED	7:e3591cc15911df841b42f3dd85f5be95	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-45	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.612997	36	EXECUTED	7:296d0a1e3d62c2d3b9af2c8ca5d8e644	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-46	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.63688	37	EXECUTED	7:c0125d23eb8055aed79f06d302ef64ce	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-47	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.663966	38	EXECUTED	7:0c6583ba25a429d571ff0ed7e087003e	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-48	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.676905	39	EXECUTED	7:54049337996fc9a5aaf83cc01c106164	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-49	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.69554	40	EXECUTED	7:eed79149d30e9fed0fb8af419d369999	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-50	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.716248	41	EXECUTED	7:e89f919b7712ac852638135d7760b674	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-51	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.750676	42	EXECUTED	7:4205bb2f918a52e721d9ecfc5263c4e4	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-52	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.768586	43	EXECUTED	7:b270c7050478c6a3e4cbb5a61bd8cd72	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-53	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.787329	44	EXECUTED	7:0ca2d4185fca781ea3d9cfb379e0c09f	addColumn		\N	3.4.2	\N	\N
1.0.0-58	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.815951	45	EXECUTED	7:6d73301b5f63132385b561dd059a75c5	sql, addColumn (x2)		\N	3.4.2	\N	\N
1.0.0-60	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.857914	46	EXECUTED	7:bb4e2a037d7123a616752f6a008ff077	createSequence, addColumn, sql (x2), addPrimaryKey		\N	3.4.2	\N	\N
1.0.0-61	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.922609	47	EXECUTED	7:a3353af01d6335be3b0f23fe7a914e25	renameColumn		\N	3.4.2	\N	\N
1.0.0-63	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.947325	48	EXECUTED	7:c9d60eaa5e2885a0d1197bcb1cc0c3de	modifyDataType		\N	3.4.2	\N	\N
1.0.0-64	social	db/changelog/social-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:08.961731	49	EXECUTED	7:1a9145cc5ccb8b017a311db04d97aa12	createIndex		\N	3.4.2	\N	\N
1.0.0-1	gatein-token	db/changelog/gatein-token.db.changelog-1.0.0.xml	2020-02-14 15:55:09.239333	50	EXECUTED	7:7af53199603e3d0845905a88aaaca884	createTable		\N	3.4.2	\N	\N
1.0.0-2	gatein-token	db/changelog/gatein-token.db.changelog-1.0.0.xml	2020-02-14 15:55:09.261754	51	EXECUTED	7:2e5e14ebf5151e74fca19a4d583b0e64	createSequence		\N	3.4.2	\N	\N
1.0.0-1	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.546781	52	EXECUTED	7:22645a69289a56d054de9c863d8e7774	createTable		\N	3.4.2	\N	\N
1.0.0-2	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.57752	53	EXECUTED	7:d1c03313419b1a759070cb24ff4d2cef	createTable		\N	3.4.2	\N	\N
1.0.0-3	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.603628	54	EXECUTED	7:c88fbb46d2d93212e4a886cc94daf481	createTable		\N	3.4.2	\N	\N
1.0.0-4	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.615857	55	EXECUTED	7:0580234f21a49a477890fe3638ab3871	createSequence		\N	3.4.2	\N	\N
1.0.0-5	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.637766	56	EXECUTED	7:1ca9d4882fbe7a96d20d5e58377dc570	createSequence		\N	3.4.2	\N	\N
1.0.0-6	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.654307	57	EXECUTED	7:05241d679eb8a7d6a80c244a11f00fa9	createSequence		\N	3.4.2	\N	\N
1.0.0-7	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.688391	58	EXECUTED	7:399b7cc3fe31d9d862d68465e6ed3292	createTable		\N	3.4.2	\N	\N
1.0.0-8	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.707752	59	EXECUTED	7:cb337dd5a4447fb74eb0ae29d54b5ae2	createSequence		\N	3.4.2	\N	\N
1.0.0-9	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.738789	60	EXECUTED	7:e915a26deed2c922636ed2a49a0b634a	createIndex (x2)		\N	3.4.2	\N	\N
1.0.0-10	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.760226	61	EXECUTED	7:fc399c46b0d06fbc22e6b7d238e9da48	createIndex		\N	3.4.2	\N	\N
1.0.0-11	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.783751	62	EXECUTED	7:61c14a367e122a79234201bc2f0c96d4	createIndex		\N	3.4.2	\N	\N
1.0.0-12	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.806685	63	EXECUTED	7:3f5b8876740a2750b01bc96b5df77ea8	createIndex		\N	3.4.2	\N	\N
1.0.0-13	file	db/changelog/file.db.changelog-1.0.0.xml	2020-02-14 15:55:09.820072	64	EXECUTED	7:62575b7a17e834870eb6df3760f90b4c	modifyDataType		\N	3.4.2	\N	\N
1.0.0-1	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.159612	65	EXECUTED	7:cbe9257aced70f87188f8742943ef21a	createTable		\N	3.4.2	\N	\N
1.0.0-2	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.188806	66	EXECUTED	7:f50efb26394b998f9808f3f7ba724367	createSequence		\N	3.4.2	\N	\N
1.0.0-3	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.226536	67	EXECUTED	7:b0b051413743dc68096f97d9dd1de014	createTable		\N	3.4.2	\N	\N
1.0.0-4	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.236888	68	EXECUTED	7:a19d1a6e7b37bd745a02dff871f2fadf	createSequence		\N	3.4.2	\N	\N
1.0.0-5	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.279575	69	EXECUTED	7:fb838a6a8711df1bf9fe3fee1ec43b11	addForeignKeyConstraint, addUniqueConstraint (x2)		\N	3.4.2	\N	\N
1.0.0-6	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.313335	70	EXECUTED	7:47c44fc29f01550d33b52b71bed4f152	createTable		\N	3.4.2	\N	\N
1.0.0-7	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.335237	71	EXECUTED	7:a13974b1317669c3d8e04b88282d0365	createSequence		\N	3.4.2	\N	\N
1.0.0-8	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.350583	72	EXECUTED	7:610f13f0ef57e128be6ccd713391b11e	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-9	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.382247	73	EXECUTED	7:0ef85d0514a72b455a721583e9c5d1b0	createTable		\N	3.4.2	\N	\N
1.0.0-10	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.397159	74	EXECUTED	7:e4636286d36cdfdbcd096df8a431d92f	createSequence		\N	3.4.2	\N	\N
1.0.0-11	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.420407	75	EXECUTED	7:81de7e2984896e330f3f1a3c70930f1e	addForeignKeyConstraint, addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-12	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.44569	76	EXECUTED	7:a250a2f8871c29d0a479b5d65c27b45f	createTable		\N	3.4.2	\N	\N
1.0.0-13	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.46036	77	EXECUTED	7:e17307548cc4e19d1e4b5529b74544b9	createSequence		\N	3.4.2	\N	\N
portal	1.0.0-14	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.485527	78	EXECUTED	7:77e9928591956c49f41c825516bcb5ce	addForeignKeyConstraint (x2)		\N	3.4.2	\N	\N
1.0.0-15	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.514932	79	EXECUTED	7:f636a13cd11212742970725492bbd1a6	createTable		\N	3.4.2	\N	\N
1.0.0-16	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.528947	80	EXECUTED	7:7b8867809f83d4c972d1a996f0bab762	createSequence		\N	3.4.2	\N	\N
1.0.0-17	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.564045	81	EXECUTED	7:638348a90affa0fb6ae0260ff4f95583	addForeignKeyConstraint (x2)		\N	3.4.2	\N	\N
1.0.0-18	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.588271	82	EXECUTED	7:acb49459a0db152f89067bbcf2cb1f70	createTable		\N	3.4.2	\N	\N
1.0.0-19	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.600437	83	EXECUTED	7:baf976c074a4080f7a8f55fa72e93c38	createSequence		\N	3.4.2	\N	\N
1.0.0-20	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.615424	84	EXECUTED	7:be37a0b9a225506d8979de5299005af1	createTable		\N	3.4.2	\N	\N
1.0.0-21	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.632318	85	EXECUTED	7:cfecef5f4651223681922020639f155d	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-22	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.658472	86	EXECUTED	7:e18ba43edfd03fd83897adca77ee03fc	createTable		\N	3.4.2	\N	\N
1.0.0-23	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.67806	87	EXECUTED	7:38244f60ab4acd2806a85ab0cee56b27	createTable		\N	3.4.2	\N	\N
1.0.0-24	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.697295	88	EXECUTED	7:15ae3d7dcabbe1a1858c165d09dd8a6f	createSequence (x2)		\N	3.4.2	\N	\N
1.0.0-25	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.71791	89	EXECUTED	7:51c98943cfee6b6ad5131092f79505c3	createTable		\N	3.4.2	\N	\N
1.0.0-26	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.7327	90	EXECUTED	7:7b3a80357e9be2ec97f01c2b350037c0	createSequence		\N	3.4.2	\N	\N
1.0.0-27	portal	db/changelog/portal-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:55:10.752627	91	EXECUTED	7:799e6efb3f635ed958eee3e509223563	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-1	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:10.970009	92	EXECUTED	7:aa32e661687706bb2d6500617cc5fd01	createTable		\N	3.4.2	\N	\N
1.0.0-2	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.004793	93	EXECUTED	7:0a544e6edad63a167cc6728b4cd3fe1b	createTable		\N	3.4.2	\N	\N
1.0.0-3	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.03074	94	EXECUTED	7:77ebec113d0fb32acd94bb7c2c4c08f4	createTable		\N	3.4.2	\N	\N
1.0.0-4	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.058947	95	EXECUTED	7:f675c03ca1651289e4c9c94b10d7228a	createSequence		\N	3.4.2	\N	\N
1.0.0-5	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.072628	96	EXECUTED	7:fa73751de02b07274f8a9ba6437eb229	createSequence		\N	3.4.2	\N	\N
1.0.0-6	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.08848	97	EXECUTED	7:2840ff4a1f70a6f83d292355c5c389a9	createSequence		\N	3.4.2	\N	\N
1.0.0-7	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.108399	98	EXECUTED	7:17505978462f925fdea1d689b13d02bf	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-8	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.13307	99	EXECUTED	7:325c0f287ca2facd58c68a0077bdbb9f	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-9	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.164273	100	EXECUTED	7:540fed2e892d4c0990ebe92a06f4d5b4	createTable		\N	3.4.2	\N	\N
1.0.0-10	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.181309	101	EXECUTED	7:fba44b62868432acf8cf9c0df062e539	createTable		\N	3.4.2	\N	\N
1.0.0-11	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.200571	102	EXECUTED	7:b47cdf7a3d48c258f9293f7c2672f82d	createTable		\N	3.4.2	\N	\N
1.0.0-12	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.211234	103	EXECUTED	7:153a9b806e00e94220eb0dd625041660	createSequence		\N	3.4.2	\N	\N
1.0.0-13	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.230466	104	EXECUTED	7:3690fa45d578f35a7fa3a017740a305c	createSequence		\N	3.4.2	\N	\N
1.0.0-14	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.241289	105	EXECUTED	7:1281fbf221966da3f95a2bdc1bdf79f9	createSequence		\N	3.4.2	\N	\N
1.0.0-15	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.259749	106	EXECUTED	7:738de29cd51ac2ffb08bc0c5312748fb	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-16	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.278017	107	EXECUTED	7:87b77e2287f0f7f8820532c0a0c08b72	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-17	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.306134	108	EXECUTED	7:c023ed8b46d7b1987b90f7e5bdf60da3	createTable		\N	3.4.2	\N	\N
1.0.0-18	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.319622	109	EXECUTED	7:b611848f14797bb44e5626a5cd17fc1b	createSequence		\N	3.4.2	\N	\N
1.0.0-19	notifications	db/changelog/notifications.db.changelog-1.0.0.xml	2020-02-14 15:55:11.336386	110	EXECUTED	7:747a8f19e04b4b9092cd0491fc71debf	addNotNullConstraint		\N	3.4.2	\N	\N
1.0.0-4	quartz	db/changelog/quartz.db.changelog-1.0.0.xml	2020-02-14 15:55:11.743431	111	EXECUTED	7:e55ca5fe859718e2349e4a3f836c280a	sqlFile		\N	3.4.2	\N	\N
1.0.0-1	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:11.9693	112	EXECUTED	7:5fc94aa92ed585cb9d23ffa3db4e19e0	createTable		\N	3.4.2	\N	\N
1.0.0-2	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.004678	113	EXECUTED	7:4520a9e8b3845e441bee4064117a1130	createTable		\N	3.4.2	\N	\N
1.0.0-3	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.039095	114	EXECUTED	7:60baca71b116ae6c2ad4e263d70e694a	createTable		\N	3.4.2	\N	\N
1.0.0-4	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.052327	115	EXECUTED	7:72bfee9c42005a60e9e2bc16c73c9429	createSequence		\N	3.4.2	\N	\N
1.0.0-5	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.068694	116	EXECUTED	7:dd51ab7a5bc32fc94fdc2ef8d4403555	createSequence		\N	3.4.2	\N	\N
1.0.0-6	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.089769	117	EXECUTED	7:2d8f9d88ac1eef7e3dd0d687c471f3fb	createSequence		\N	3.4.2	\N	\N
1.0.0-7	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.103754	118	EXECUTED	7:b3cdcc856602a9fb66cf79badfa44f14	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-8	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.119001	119	EXECUTED	7:5f0121451340774a23077c5923e86051	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-9	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.142404	120	EXECUTED	7:135c6e1ee1311322e92e818b82a5bd65	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-10	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.158948	121	EXECUTED	7:7100172f7e691cda3770ad23c39cb2af	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-11	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.177692	122	EXECUTED	7:5adac59dbe38755dbbadbeb6c34b5a7b	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-12	settings	db/changelog/settings.db.changelog-1.0.0.xml	2020-02-14 15:55:12.210681	123	EXECUTED	7:3bd8afaf0335152a6b27a657ca514239	createIndex (x3)		\N	3.4.2	\N	\N
1.0.0-1	exo-es-search	db/changelog/exo-search.db.changelog-1.0.0.xml	2020-02-14 15:55:12.381254	124	EXECUTED	7:41d72c5fc1d170a80a2dece7037a3da6	createTable		\N	3.4.2	\N	\N
1.0.0-2	exo-es-search	db/changelog/exo-search.db.changelog-1.0.0.xml	2020-02-14 15:55:12.403604	125	EXECUTED	7:a56ae6a376250e0892d1db61b0f1caa3	createSequence		\N	3.4.2	\N	\N
1.0.0-1	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.510701	126	EXECUTED	7:3ca60f7f151ac360118b7d226fa78098	createTable		\N	3.4.2	\N	\N
1.0.0-2	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.526443	127	EXECUTED	7:760d3807cd53fe5fdbf797cb5dde79b8	createSequence		\N	3.4.2	\N	\N
1.0.0-3	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.540125	128	EXECUTED	7:dc264dcec14212dc6524740b756e3522	createTable		\N	3.4.2	\N	\N
1.0.0-4	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.555025	129	EXECUTED	7:9240aee32974484cc9b6ea2e2a42af6a	createTable		\N	3.4.2	\N	\N
1.0.0-5	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.570577	130	EXECUTED	7:94d41c8e0ed8d01190690351dc72a678	createTable		\N	3.4.2	\N	\N
1.0.0-6	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.578154	131	EXECUTED	7:d9e7474fd7212bfc3b44c74b043b8e4e	createSequence		\N	3.4.2	\N	\N
1.0.0-7	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.599749	132	EXECUTED	7:8110d22fe6c484e988adb74ff5f20800	createTable		\N	3.4.2	\N	\N
1.0.0-8	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.612996	133	EXECUTED	7:99c74736267c7609da62c483eb677a68	createSequence		\N	3.4.2	\N	\N
1.0.0-9	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.6218	134	EXECUTED	7:6a9cb0bc57dc57b2a07483dd7889dce0	createTable		\N	3.4.2	\N	\N
1.0.0-10	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.635321	135	EXECUTED	7:a7591b451e16d09accec8c73c678c126	createTable		\N	3.4.2	\N	\N
1.0.0-11	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.659546	136	EXECUTED	7:274ec34d519cf62fc3269bd88dd978bc	createTable		\N	3.4.2	\N	\N
1.0.0-12	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.677302	137	EXECUTED	7:e567f1bfe9b7c9ce88cafc0df7f7521a	createTable		\N	3.4.2	\N	\N
1.0.0-13	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.699223	138	EXECUTED	7:aed61fcde496b12806ef4ac0e4e7141b	createTable		\N	3.4.2	\N	\N
1.0.0-14	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.7301	139	EXECUTED	7:e2c16cc481c4ad0cf738cf9b51a74bb1	createTable		\N	3.4.2	\N	\N
1.0.0-15	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.755815	140	EXECUTED	7:c9a938a4f98e4f90a5804f787642e565	createIndex (x4)		\N	3.4.2	\N	\N
1.0.0-16	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.785359	141	EXECUTED	7:f006067e80e198a71e9ca31801980fb1	addColumn		\N	3.4.2	\N	\N
1.0.0-17	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.811852	142	EXECUTED	7:cbe30dec0d0adcf5f0369892c2c80292	dropForeignKeyConstraint (x2), addForeignKeyConstraint (x2)		\N	3.4.2	\N	\N
1.0.0-18	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.836945	143	EXECUTED	7:d96a3104889f2a9b143d446d43e7eb3f	addColumn		\N	3.4.2	\N	\N
1.0.0-19	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.854355	144	EXECUTED	7:bf80acf0cd6b62accb4948a62243f500	createTable		\N	3.4.2	\N	\N
1.0.0-20	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.869562	145	EXECUTED	7:d51347535dffcbbac56f679a364edf5d	createTable		\N	3.4.2	\N	\N
1.0.0-21	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.887238	146	EXECUTED	7:d1ea5d4e7c10184f272ad6d902ece891	createSequence		\N	3.4.2	\N	\N
1.0.0-22	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.899151	147	EXECUTED	7:5a4d8f177f6c0d4d78add92d85356a92	createSequence		\N	3.4.2	\N	\N
1.0.0-23	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.909798	148	EXECUTED	7:dec2344105048cab04dfe4d8ffb321d3	createIndex		\N	3.4.2	\N	\N
1.0.0-24	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.9282	149	EXECUTED	7:3e5a85dccd324738ff361c2cef1cd1f1	createIndex (x2)		\N	3.4.2	\N	\N
1.0.0-25	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.941409	150	EXECUTED	7:f92815e0ac87c7184d2a6e2297061ba8	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-26	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.980001	151	EXECUTED	7:a8c836136681a4810483a120395d458d	createSequence		\N	3.4.2	\N	\N
1.0.0-27	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:25.9887	152	EXECUTED	7:298ccf80d0457017279ca4a237dc3141	sql, sqlFile		\N	3.4.2	\N	\N
1.0.0-29	task	db/changelog/task.db.changelog-1.0.0.xml	2020-02-14 15:56:26.01368	153	EXECUTED	7:40d570da6d12521f791686324b43db84	modifyDataType (x3)		\N	3.4.2	\N	\N
1.1.0-1	task	db/changelog/task.db.changelog-1.1.0.xml	2020-02-14 15:56:26.121168	154	EXECUTED	7:2ee2c1bd23f56d736f79895e64085ac4	dropTable		\N	3.4.2	\N	\N
1.2.1-1	task	db/changelog/task.db.changelog-1.2.1.xml	2020-02-14 15:56:26.23459	155	EXECUTED	7:bbf3097c68323874f984ada0202a9af2	sql (x2)		\N	3.4.2	\N	\N
1.3.0-1	task	db/changelog/task.db.changelog-1.3.0.xml	2020-02-14 15:56:26.337158	156	EXECUTED	7:4c348e911e6945cbcaddc49d8528ff8e	addColumn		\N	3.4.2	\N	\N
1.3.0-3	task	db/changelog/task.db.changelog-1.3.0.xml	2020-02-14 15:56:28.55506	157	MARK_RAN	7:f9513e4d919eb7bbbcc07f9b78b20883	dropForeignKeyConstraint		\N	3.4.2	\N	\N
1.3.0-4	task	db/changelog/task.db.changelog-1.3.0.xml	2020-02-14 15:56:28.578821	158	EXECUTED	7:65793adec423b0a963e4e95199dd017b	addForeignKeyConstraint		\N	3.4.2	\N	\N
2.1.0-01	task	db/changelog/task.db.changelog-2.1.0.xml	2020-02-14 15:56:28.780462	159	EXECUTED	7:6b66b72ab6ae95b5e3fe30257455efed	createTable		\N	3.4.2	\N	\N
2.1.0-02	task	db/changelog/task.db.changelog-2.1.0.xml	2020-02-14 15:56:28.816418	160	EXECUTED	7:8fe5361cd58e2bdeb4046991c4318d6c	createIndex		\N	3.4.2	\N	\N
1.0.0-1	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:28.965549	161	EXECUTED	7:9310ac7a453afb3c0dda1b7bff59a1dd	createTable		\N	3.4.2	\N	\N
1.0.0-1.1	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:28.992099	162	EXECUTED	7:982e9cf0b4167f12af3cf912df591695	createIndex (x4)		\N	3.4.2	\N	\N
1.0.0-2	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.001862	163	EXECUTED	7:809560d1b1127effda25de888e531818	createSequence		\N	3.4.2	\N	\N
1.0.0-3	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.012946	164	EXECUTED	7:3bfb1540dad76d4ed59e85e70de9eaae	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-4	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.030707	165	EXECUTED	7:175dcb03864cd588cf16e1b0103d1eab	addColumn		\N	3.4.2	\N	\N
1.0.0-4.1	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.049874	166	EXECUTED	7:a19957034b87807204216ea57c17b975	createIndex		\N	3.4.2	\N	\N
1.0.0-5	kudos	db/changelog/kudos-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.056489	167	EXECUTED	7:f8e7cc4d90dccbeaae508c876f60e070	addColumn		\N	3.4.2	\N	\N
1.0.0-1	idmQueue	db/changelog/idm.queue.db.changelog-1.0.0.xml	2020-02-14 15:56:29.168011	168	EXECUTED	7:053416c531aea8ee988a2311e1ecda41	createTable		\N	3.4.2	\N	\N
1.0.0-2	idmQueue	db/changelog/idm.queue.db.changelog-1.0.0.xml	2020-02-14 15:56:29.183811	169	EXECUTED	7:74ac6bc68b24f890e4b08ca08271074a	createSequence		\N	3.4.2	\N	\N
1.0.0-3	idmQueue	db/changelog/idm.queue.db.changelog-1.0.0.xml	2020-02-14 15:56:29.196507	170	EXECUTED	7:94ddb57f0f4813c799a58b7ebe587d40	createIndex (x2)		\N	3.4.2	\N	\N
1.0.0-1	push-notifications	db/changelog/push-notifications.db.changelog-1.0.0.xml	2020-02-14 15:56:29.286118	171	EXECUTED	7:38b93f5083f869f7578558bb7c1c6209	createTable		\N	3.4.2	\N	\N
1.0.0-2	push-notifications	db/changelog/push-notifications.db.changelog-1.0.0.xml	2020-02-14 15:56:29.304407	172	EXECUTED	7:0e89130ad2e95f5e24ff71c2b4fc2577	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-3	push-notifications	db/changelog/push-notifications.db.changelog-1.0.0.xml	2020-02-14 15:56:29.317446	173	EXECUTED	7:bffec8aff7d307b8cfcdd7b86cc1098e	createSequence		\N	3.4.2	\N	\N
1.0.0-0	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.46946	174	EXECUTED	7:4f06d2a8ce85b2d1a4023e5acef69b93	createSequence (x2)		\N	3.4.2	\N	\N
1.0.0-1	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.486155	175	EXECUTED	7:5e5c7e4746308b5d535f720268bd932f	createTable		\N	3.4.2	\N	\N
1.0.0-2	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.49908	176	EXECUTED	7:bd0eda9a9cf52962de8ea1158f6b2333	createTable		\N	3.4.2	\N	\N
1.0.0-3	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.515459	177	EXECUTED	7:75cc98cb6e226d72e9873f1f01325b0d	createTable		\N	3.4.2	\N	\N
1.0.0-4	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.526853	178	EXECUTED	7:75ba4cab359a90b1a0ddf9485646cfd2	createTable		\N	3.4.2	\N	\N
1.0.0-5	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.56152	179	EXECUTED	7:c9876526e380d833b7f68419b703bf87	createIndex (x7)		\N	3.4.2	\N	\N
1.0.0-6	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.575891	180	EXECUTED	7:aaf559da1821c2e4bebf155ea17a9c08	createTable		\N	3.4.2	\N	\N
1.0.0-7	perkstore	db/changelog/perkstore-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:29.603561	181	EXECUTED	7:763d0bebb6e10d1a112fff15538d0eb7	addColumn		\N	3.4.2	\N	\N
1.0.0-1	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.842619	182	EXECUTED	7:387be8d86c8f174e7d634d6a7b28da8d	createTable		\N	3.4.2	\N	\N
1.0.0-2	task	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.862448	183	EXECUTED	7:9088b2bb74cf2c532b3ed214f2bff48c	createSequence		\N	3.4.2	\N	\N
1.0.0-2	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.879416	184	EXECUTED	7:680bf7b6425030eefce2c5fa47d3e791	createTable		\N	3.4.2	\N	\N
1.0.0-3	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.891933	185	EXECUTED	7:83222fb22fcd0360b8c90b01b5a459e5	createTable		\N	3.4.2	\N	\N
1.0.0-4	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.901884	186	EXECUTED	7:b8b8014c193415ec30257d50cf85b112	createTable		\N	3.4.2	\N	\N
1.0.0-5	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.914543	187	EXECUTED	7:343a704014baff9188e42d820238db07	addForeignKeyConstraint		\N	3.4.2	\N	\N
1.0.0-7	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.923165	188	EXECUTED	7:6e03a3d18899b4a6f15d9ebc59260dda	createIndex		\N	3.4.2	\N	\N
1.0.0-8	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.937997	189	EXECUTED	7:26fd957bc10fdc7e5156d8ae948f4e2f	createTable		\N	3.4.2	\N	\N
1.0.0-9	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.945559	190	EXECUTED	7:bf7d7c56c5c9c639d52df741db96b9f7	createSequence		\N	3.4.2	\N	\N
1.0.0-10	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.959251	191	EXECUTED	7:09dac28011b21b25534773d2c8d61808	createIndex		\N	3.4.2	\N	\N
1.0.0-11	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.967511	192	EXECUTED	7:76b302fd57a358c3aeb5a1c0ad64b571	addColumn		\N	3.4.2	\N	\N
1.0.0-12	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:29.989195	193	EXECUTED	7:ff10e397451f10d4affbaaf0948e586f	createTable		\N	3.4.2	\N	\N
1.0.0-13	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:30.022556	194	EXECUTED	7:6b6d3c3a1b118c17244e98d85e80c8f5	addColumn (x3)		\N	3.4.2	\N	\N
1.0.0-14	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:30.038775	195	EXECUTED	7:0bc0af4b17461bbf7e7b90208a0542f9	addColumn		\N	3.4.2	\N	\N
1.0.0-15	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:30.093985	196	EXECUTED	7:7c0e9fc538ea02e2b1ed695bb68f7542	addColumn (x4)		\N	3.4.2	\N	\N
1.0.0-16	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:30.108605	197	EXECUTED	7:8eaf6624101b11f4d281cee35e93525a	createSequence (x2)		\N	3.4.2	\N	\N
1.0.0-17	exo-gamification	db/changelog/gamification.db.changelog-1.0.0.xml	2020-02-14 15:56:30.12723	198	EXECUTED	7:dd3ee3a02b6e7015d009dd1cae593562	modifyDataType		\N	3.4.2	\N	\N
1.3.0-1	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.281439	199	EXECUTED	7:34fec1dce407f388da7b3f8cff494653	createTable		\N	3.4.2	\N	\N
1.3.0-2	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.309985	200	EXECUTED	7:4495869caccccac7ee0c5498b26452fc	createTable		\N	3.4.2	\N	\N
1.3.0-3	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.326545	201	EXECUTED	7:7f11a1fc47e016ff78de9ebe8fc0ad06	createSequence		\N	3.4.2	\N	\N
1.3.0-4	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.349292	202	EXECUTED	7:911616801cc4391f56c826ff6b4ebca0	createIndex (x4)		\N	3.4.2	\N	\N
1.3.0-6	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.367411	203	EXECUTED	7:0e0dc5ad0e5ff207d23750263e3de50b	createTable		\N	3.4.2	\N	\N
1.3.0-7	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.374001	204	EXECUTED	7:60c9bc2aac6fe1b972ad76eca7b180ca	createSequence		\N	3.4.2	\N	\N
1.3.0-8	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.393782	205	EXECUTED	7:d51660b2924fb71100af468f43153501	createTable		\N	3.4.2	\N	\N
1.3.0-9	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.400762	206	EXECUTED	7:b6b3640d17aa63aebdd95a68cdb622ad	createSequence		\N	3.4.2	\N	\N
1.3.0-11	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.414203	207	EXECUTED	7:ac24547392d48f395ec23556d2df1d77	addColumn		\N	3.4.2	\N	\N
1.3.0-13	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.439188	208	EXECUTED	7:65637d6688a48984e4e6396b4ee4dbd9	addColumn		\N	3.4.2	\N	\N
1.3.0-14	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.453321	209	EXECUTED	7:43f602444706c0d02ad08bfc5eb9938d	addColumn		\N	3.4.2	\N	\N
1.3.0-15	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.466624	210	EXECUTED	7:dd94d9725a0084a45254356831cdfb16	createTable		\N	3.4.2	\N	\N
1.3.0-16	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.479623	211	EXECUTED	7:ea327bdb5282c77fbae1702a803da1bd	createSequence		\N	3.4.2	\N	\N
1.3.0-17	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.492477	212	EXECUTED	7:05a634290bee71d5497000b5f06ca82d	createIndex		\N	3.4.2	\N	\N
1.3.0-18	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.548816	213	EXECUTED	7:6bd58e03e305de6849bc9b0a18930b4d	addColumn		\N	3.4.2	\N	\N
1.3.0-19	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.59434	214	EXECUTED	7:df92b6c2866eafa3508f200744a2fc3c	addColumn		\N	3.4.2	\N	\N
1.3.0-20	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.622581	215	EXECUTED	7:9aed0204c3045b58b1ba25f952c6bb7d	addColumn		\N	3.4.2	\N	\N
1.3.0-21	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.672316	216	EXECUTED	7:5a56f1e39451214881c4376a440df9c8	addColumn		\N	3.4.2	\N	\N
1.3.0-22	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.683277	217	EXECUTED	7:e7dfc23182ec6aa9f39b9831382820c1	createIndex		\N	3.4.2	\N	\N
1.3.0-23	wallet	db/changelog/wallet-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.713782	218	EXECUTED	7:9d76d630fb8352325aca845be3a7fc65	addColumn		\N	3.4.2	\N	\N
1.0.0-1	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.909414	219	EXECUTED	7:fe59ec9d1a474231c726aa5797528f86	createTable		\N	3.4.2	\N	\N
1.0.0-2	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.965521	220	EXECUTED	7:b357cfc8319c807de84f5828dcc13e51	createTable		\N	3.4.2	\N	\N
1.0.0-4	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:30.992103	221	EXECUTED	7:1e44afe70b48b21852277f5f5761b08c	createSequence (x2)		\N	3.4.2	\N	\N
1.0.0-6	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:31.004026	222	EXECUTED	7:39f0f10b947fd6c910aebc43af7144ce	createTable		\N	3.4.2	\N	\N
1.0.0-7	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:31.017954	223	EXECUTED	7:86f0854c77b3aa99328a81ad0fc3e7c3	createTable		\N	3.4.2	\N	\N
1.0.0-8	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:31.028988	224	EXECUTED	7:649e3e6c8db4d6c97b33cabd05596763	createTable		\N	3.4.2	\N	\N
1.0.0-9	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:31.040613	225	EXECUTED	7:705b96189aee99b4fcbfc6e11df0ea54	createSequence (x3)		\N	3.4.2	\N	\N
1.0.0-11	reward	db/changelog/reward-rdbms.db.changelog-1.0.0.xml	2020-02-14 15:56:31.061097	226	EXECUTED	7:f1d5d74fb9daa5b47e844182f02457e5	addColumn		\N	3.4.2	\N	\N
1.0.0-1	web-conferencing	db/changelog/webconferencing.db.changelog-1.0.0.xml	2020-02-14 15:56:31.148637	227	EXECUTED	7:0a9ef25bb2b25ac8cd8008580abc4ced	createTable		\N	3.4.2	\N	\N
1.0.0-2	web-conferencing	db/changelog/webconferencing.db.changelog-1.0.0.xml	2020-02-14 15:56:31.165494	228	EXECUTED	7:0b52d57ec6c559b4846553c82fb713a8	addUniqueConstraint		\N	3.4.2	\N	\N
1.0.0-3	web-conferencing	db/changelog/webconferencing.db.changelog-1.0.0.xml	2020-02-14 15:56:31.176308	229	EXECUTED	7:5763035647eed79fb54fc36a0a106fd1	createTable		\N	3.4.2	\N	\N
1.0.0-4	web-conferencing	db/changelog/webconferencing.db.changelog-1.0.0.xml	2020-02-14 15:56:31.188844	230	EXECUTED	7:03a3d1a754118a6f32504cacdf8e68e4	addPrimaryKey, addForeignKeyConstraint		\N	3.4.2	\N	\N
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: email_queue; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.email_queue (email_id, creation_date, type, sender, receiver, subject, body, footer) FROM stdin;
\.


--
-- Data for Name: es_indexing_queue; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.es_indexing_queue (operation_id, entity_type, entity_id, operation_type, operation_timestamp) FROM stdin;
1	navigation	1	C	2020-02-14 15:57:03.142892
2	navigation	2	C	2020-02-14 15:57:03.455292
3	navigation	2	U	2020-02-14 15:57:03.480551
4	navigation	3	C	2020-02-14 15:57:03.485053
5	navigation	3	U	2020-02-14 15:57:03.538268
6	navigation	4	C	2020-02-14 15:57:03.545021
7	navigation	4	U	2020-02-14 15:57:03.556059
8	navigation	5	C	2020-02-14 15:57:03.5627
9	navigation	5	U	2020-02-14 15:57:03.569903
10	navigation	6	C	2020-02-14 15:57:03.576155
11	navigation	6	U	2020-02-14 15:57:03.588114
12	navigation	7	C	2020-02-14 15:57:03.592369
13	navigation	7	U	2020-02-14 15:57:03.596264
14	navigation	8	C	2020-02-14 15:57:03.60814
15	navigation	8	U	2020-02-14 15:57:03.611522
16	navigation	9	C	2020-02-14 15:57:03.617274
17	navigation	9	U	2020-02-14 15:57:03.627095
18	navigation	10	C	2020-02-14 15:57:03.632334
19	navigation	10	U	2020-02-14 15:57:03.638972
20	navigation	11	C	2020-02-14 15:57:03.717352
21	navigation	12	C	2020-02-14 15:57:03.758234
22	navigation	12	U	2020-02-14 15:57:03.768527
23	navigation	13	C	2020-02-14 15:57:03.833634
24	navigation	14	C	2020-02-14 15:57:04.202536
25	navigation	14	U	2020-02-14 15:57:04.208072
26	navigation	15	C	2020-02-14 15:57:04.211447
27	navigation	15	U	2020-02-14 15:57:04.220186
28	navigation	16	C	2020-02-14 15:57:04.223541
29	navigation	16	U	2020-02-14 15:57:04.226758
30	navigation	17	C	2020-02-14 15:57:04.236308
31	navigation	17	U	2020-02-14 15:57:04.239843
32	navigation	18	C	2020-02-14 15:57:04.242938
33	navigation	18	U	2020-02-14 15:57:04.252923
34	navigation	19	C	2020-02-14 15:57:04.256718
35	navigation	19	U	2020-02-14 15:57:04.268462
36	navigation	20	C	2020-02-14 15:57:04.271752
37	navigation	20	U	2020-02-14 15:57:04.280267
38	navigation	21	C	2020-02-14 15:57:04.283749
39	navigation	21	U	2020-02-14 15:57:04.286988
40	navigation	22	C	2020-02-14 15:57:04.296387
41	navigation	22	U	2020-02-14 15:57:04.299521
42	navigation	23	C	2020-02-14 15:57:04.302353
43	navigation	23	U	2020-02-14 15:57:04.312218
44	navigation	24	C	2020-02-14 15:57:04.315917
45	navigation	24	U	2020-02-14 15:57:04.318984
46	navigation	25	C	2020-02-14 15:57:04.329685
47	navigation	25	U	2020-02-14 15:57:04.333898
48	navigation	26	C	2020-02-14 15:57:04.337662
49	navigation	26	U	2020-02-14 15:57:04.34405
50	navigation	27	C	2020-02-14 15:57:04.347806
51	navigation	27	U	2020-02-14 15:57:04.35076
52	navigation	28	C	2020-02-14 15:57:04.360178
53	navigation	28	U	2020-02-14 15:57:04.363681
54	navigation	29	C	2020-02-14 15:57:04.366692
55	navigation	29	U	2020-02-14 15:57:04.376614
56	navigation	30	C	2020-02-14 15:57:04.379721
57	navigation	30	U	2020-02-14 15:57:04.384249
58	navigation	31	C	2020-02-14 15:57:04.387496
59	navigation	31	U	2020-02-14 15:57:04.392328
60	navigation	32	C	2020-02-14 15:57:04.40014
61	navigation	32	U	2020-02-14 15:57:04.405443
62	navigation	33	C	2020-02-14 15:57:04.420504
63	navigation	33	U	2020-02-14 15:57:04.427427
64	navigation	34	C	2020-02-14 15:57:04.430926
65	navigation	34	U	2020-02-14 15:57:04.441341
66	navigation	35	C	2020-02-14 15:57:04.445265
67	navigation	35	U	2020-02-14 15:57:04.460673
68	navigation	3	U	2020-02-14 15:57:04.607605
69	navigation	4	U	2020-02-14 15:57:04.620417
70	navigation	5	U	2020-02-14 15:57:04.623985
71	navigation	2	U	2020-02-14 15:57:04.654584
72	navigation	6	U	2020-02-14 15:57:04.67149
73	navigation	7	U	2020-02-14 15:57:04.678969
74	navigation	8	U	2020-02-14 15:57:04.699847
75	navigation	9	U	2020-02-14 15:57:04.720735
76	navigation	10	U	2020-02-14 15:57:04.732581
77	navigation	36	C	2020-02-14 15:57:04.917838
78	navigation	37	C	2020-02-14 15:57:04.950451
79	navigation	37	U	2020-02-14 15:57:04.955099
80	navigation	38	C	2020-02-14 15:57:05.026215
81	navigation	39	C	2020-02-14 15:57:05.097609
82	navigation	39	U	2020-02-14 15:57:05.104028
83	navigation	40	C	2020-02-14 15:57:05.108793
84	navigation	40	U	2020-02-14 15:57:05.115939
85	navigation	41	C	2020-02-14 15:57:05.119475
86	navigation	41	U	2020-02-14 15:57:05.124232
87	navigation	42	C	2020-02-14 15:57:05.174653
88	navigation	43	C	2020-02-14 15:57:05.196815
89	navigation	43	U	2020-02-14 15:57:05.204655
90	navigation	44	C	2020-02-14 15:57:05.25702
91	navigation	44	U	2020-02-14 15:57:05.266071
92	navigation	45	C	2020-02-14 15:57:05.304403
93	navigation	45	U	2020-02-14 15:57:05.312237
94	navigation	46	C	2020-02-14 15:57:05.340473
95	navigation	46	U	2020-02-14 15:57:05.343902
96	navigation	47	C	2020-02-14 15:57:05.477651
97	navigation	47	U	2020-02-14 15:57:05.492291
98	navigation	48	C	2020-02-14 15:57:05.496071
99	navigation	48	U	2020-02-14 15:57:05.504053
100	navigation	49	C	2020-02-14 15:57:05.507417
101	navigation	49	U	2020-02-14 15:57:05.512112
102	navigation	50	C	2020-02-14 15:57:05.520099
103	navigation	50	U	2020-02-14 15:57:05.523415
104	navigation	51	C	2020-02-14 15:57:05.728723
105	navigation	51	U	2020-02-14 15:57:05.739024
106	navigation	2	U	2020-02-14 15:57:05.748916
107	navigation	52	C	2020-02-14 15:57:05.756644
108	navigation	52	U	2020-02-14 15:57:05.760353
109	navigation	53	C	2020-02-14 15:57:05.768614
110	navigation	53	U	2020-02-14 15:57:05.819252
111	navigation	54	C	2020-02-14 15:57:05.908711
112	navigation	55	C	2020-02-14 15:57:05.971066
113	navigation	55	U	2020-02-14 15:57:05.974908
114	navigation	56	C	2020-02-14 15:57:05.992356
115	navigation	56	U	2020-02-14 15:57:05.996543
116	navigation	57	C	2020-02-14 15:57:06.084523
117	navigation	57	U	2020-02-14 15:57:06.098769
118	navigation	58	C	2020-02-14 15:57:06.245147
119	navigation	58	U	2020-02-14 15:57:06.249293
120	navigation	59	C	2020-02-14 15:57:06.412718
121	navigation	59	U	2020-02-14 15:57:06.471062
122	navigation	60	C	2020-02-14 15:57:06.476239
123	navigation	60	U	2020-02-14 15:57:06.484256
124	navigation	55	U	2020-02-14 15:57:06.497527
125	navigation	61	C	2020-02-14 15:57:06.628796
126	navigation	61	U	2020-02-14 15:57:06.640853
\.


--
-- Data for Name: files_binary; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.files_binary (blob_id, name, data, updated_date) FROM stdin;
\.


--
-- Data for Name: files_namespaces; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.files_namespaces (namespace_id, name, description) FROM stdin;
1	file	Default Files NameSpace
2	social	social files storage
3	PerkStore	PerkStore files storage
4	CompanyBranding	Company Branding files storage
5	gamification	gamification files storage
\.


--
-- Data for Name: files_files; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.files_files (file_id, namespace_id, name, mimetype, file_size, updated_date, updater, checksum, deleted) FROM stdin;
\.


--
-- Data for Name: files_orphan_files; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.files_orphan_files (id, file_id, deleted_date, checksum) FROM stdin;
\.


--
-- Data for Name: gamification_domain; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_domain (id, title, description, priority, created_by, created_date, last_modified_by, last_modified_date, enabled, deleted) FROM stdin;
\.


--
-- Data for Name: gamification_actions_history; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_actions_history (id, action_date, user_social_id, global_score, action_title, domain, context, action_score, created_by, created_date, last_modified_by, last_modified_date, receiver, object_id, domain_id) FROM stdin;
\.


--
-- Data for Name: gamification_badges; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_badges (badge_id, title, description, needed_score, icon_file_id, validity_date_start, validity_date_end, enabled, created_by, domain, created_date, last_modified_by, last_modified_date, domain_id, deleted) FROM stdin;
\.


--
-- Data for Name: gamification_user_reputation; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_user_reputation (id, score, username) FROM stdin;
\.


--
-- Data for Name: gamification_context_items; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_context_items (id, occurrence, operation_type, zone, score, gamification_user_id) FROM stdin;
\.


--
-- Data for Name: gamification_rule; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.gamification_rule (id, title, description, score, area, enabled, created_by, created_date, last_modified_by, last_modified_date, domain_id, event, deleted) FROM stdin;
\.


--
-- Data for Name: idm_queue; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.idm_queue (idm_queue_id, entity_id, entity_type, nb_retries, processed, create_date, operation_type) FROM stdin;
\.


--
-- Data for Name: jbid_attr_bin_value; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_attr_bin_value (bin_value_id, value) FROM stdin;
\.


--
-- Data for Name: jbid_creden_bin_value; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_creden_bin_value (bin_value_id, value) FROM stdin;
\.


--
-- Data for Name: jbid_io_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_type (id, name) FROM stdin;
3	USER
8	root_type
\.


--
-- Data for Name: jbid_realm; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_realm (id, name) FROM stdin;
6	org.picketlink.idm.impl.store.hibernate.HibernateIdentityStoreImpl.DEFAULT_REALM
7	idm_realm
9	idm_realm_portal
\.


--
-- Data for Name: jbid_io; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io (id, identity_type, name, realm) FROM stdin;
\.


--
-- Data for Name: jbid_io_attr; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_attr (attribute_id, identity_object_id, name, attribute_type, bin_value_id) FROM stdin;
\.


--
-- Data for Name: jbid_io_attr_text_values; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_attr_text_values (text_attr_value_id, attr_value) FROM stdin;
\.


--
-- Data for Name: jbid_io_creden_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_creden_type (id, name) FROM stdin;
4	PASSWORD
5	BINARY
\.


--
-- Data for Name: jbid_io_creden; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_creden (id, bin_value_id, identity_object_id, text, credential_type) FROM stdin;
\.


--
-- Data for Name: jbid_io_creden_props; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_creden_props (prop_id, prop_value, prop_name) FROM stdin;
\.


--
-- Data for Name: jbid_io_props; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_props (prop_id, prop_value, prop_name) FROM stdin;
\.


--
-- Data for Name: jbid_io_rel_name; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_rel_name (id, name, realm) FROM stdin;
\.


--
-- Data for Name: jbid_io_rel_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_rel_type (id, name) FROM stdin;
1	JBOSS_IDENTITY_MEMBERSHIP
2	JBOSS_IDENTITY_ROLE
\.


--
-- Data for Name: jbid_io_rel; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_rel (id, from_identity, name, to_identity, rel_type) FROM stdin;
\.


--
-- Data for Name: jbid_io_rel_name_props; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_rel_name_props (prop_id, prop_value, prop_name) FROM stdin;
\.


--
-- Data for Name: jbid_io_rel_props; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_io_rel_props (prop_id, prop_value, prop_name) FROM stdin;
\.


--
-- Data for Name: jbid_real_props; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jbid_real_props (prop_id, prop_value, prop_name) FROM stdin;
\.


--
-- Data for Name: jcr_sitem; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jcr_sitem (id, parent_id, name, version, container_name, i_class, i_index, n_order_num, p_type, p_multivalued) FROM stdin;
 	 	__root_parent	0	__root_parent_container	0	0	0	\N	\N
\.


--
-- Data for Name: jcr_sref; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jcr_sref (node_id, property_id, order_num) FROM stdin;
\.


--
-- Data for Name: jcr_svalue; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jcr_svalue (id, data, order_num, property_id, storage_desc) FROM stdin;
\.


--
-- Data for Name: msg_devices; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.msg_devices (id, token, username, type, registration_date) FROM stdin;
\.


--
-- Data for Name: ntf_email_notifs; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_email_notifs (email_notif_id, sender, type, creation_date, sending_order) FROM stdin;
\.


--
-- Data for Name: ntf_email_notifs_digest; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_email_notifs_digest (email_notif_digest_id, email_notif_id, digest_type) FROM stdin;
\.


--
-- Data for Name: ntf_email_notifs_params; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_email_notifs_params (email_notif_params_id, email_notif_id, param_name, param_value) FROM stdin;
\.


--
-- Data for Name: ntf_web_notifs; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_web_notifs (web_notif_id, sender, type, creation_date, text) FROM stdin;
\.


--
-- Data for Name: ntf_web_notifs_params; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_web_notifs_params (web_notif_params_id, web_notif_id, param_name, param_value) FROM stdin;
\.


--
-- Data for Name: ntf_web_notifs_users; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.ntf_web_notifs_users (web_notifs_users_id, web_notif_id, receiver, update_date, is_read, show_popover, reset_number_badge) FROM stdin;
\.


--
-- Data for Name: portal_app_categories; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_app_categories (id, name, display_name, description, created_date, modified_date) FROM stdin;
\.


--
-- Data for Name: portal_applications; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_applications (id, display_name, description, created_date, modified_date, app_name, type, content_id, category_id) FROM stdin;
\.


--
-- Data for Name: portal_containers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_containers (id, webui_id, name, icon, template, factory_id, title, description, width, height, properties, container_body) FROM stdin;
3	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
4	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
5	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
6	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
7	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
8	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
9	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
10	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
11	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
12	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
13	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
14	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
17	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
18	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
19	digitalWorkplaceHomePage	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
20	SliderContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
21	MiddleContainer	\N	\N	system:/groovy/portal/webui/container/UIResponsiveTableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
22	LatestNewsContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
23	UserProfileContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
24	ProfileStatsContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
25	PerkstoreWalletContainer	\N	\N	system:/groovy/portal/webui/container/UIResponsiveTableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
26	PerkstoreContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
27	WalletContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
28	BottomContainer	\N	\N	system:/groovy/portal/webui/container/UIResponsiveTableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
29	EventsContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
30	TasksContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
31	DocumentsContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
32	\N	\N	\N	system:/groovy/portal/webui/container/UIDWTabContainer.gtmpl	TabContainer	\N	\N	\N	\N	{}	[]
33	\N	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	recentDocuments	\N	\N	\N	{}	[]
34	\N	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	sharedDocuments	\N	\N	\N	{}	[]
35	\N	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	favoriteDocuments	\N	\N	\N	{}	[]
36	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
37	socialMainLayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
38	LeftColumnContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
39	BasicProfilePortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
40	left-profile-container	left-profile-container	\N	system:/groovy/portal/webui/container/UIAddOnColumnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
41	CenterColumnContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
42	ExperienceProfilePortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
43	middle-profile-container	middle-profile-container	\N	system:/groovy/portal/webui/container/UIAddOnColumnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
44	RecentActivitiesPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
45	RightColumnContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
46	righttop-profile-container	righttop-profile-container	\N	system:/groovy/portal/webui/container/UIAddOnColumnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
47	MiniConnectionsPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
48	rightbottom-profile-container	rightbottom-profile-container	\N	system:/groovy/portal/webui/container/UIAddOnColumnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
49	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
50	WalletParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
51	top-wallet-container	top-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
52	WalletContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
53	bottom-wallet-container	bottom-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
54	PerkStoreParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
55	top-perk-store-container	top-perk-store-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
56	PerkStoreContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
57	bottom-perk-store-container	bottom-perk-store-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
58	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
59	GamificationParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
60	top-Gamification-container	top-Gamification-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
61	GamificationContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
62	bottom-gamification-container	bottom-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
63	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
64	NotificationSettingsPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
65	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
66	AllSpacesPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
67	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
68	AllSpacesPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
69	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
70	AllSpacesPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
71	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
72	AllSpacesPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
73	digitalWorkplaceAccountPage	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
74	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
75	ProfileActivity	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
76	sociallayout	\N	\N	system:/groovy/portal/webui/container/UITableColumnContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
77	AllNotifications	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
78	AppCenterUserSetup	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
79	NewsParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
80	NewsContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
81	NewsDetailContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
82	NewsDetailContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
83	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
84	GamificationParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
85	top-Gamification-container	top-Gamification-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
86	GamificationContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
87	bottom-gamification-container	bottom-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
88	PerkStoreParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
89	top-perk-store-container	top-perk-store-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
90	PerkStoreContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
91	bottom-perk-store-container	bottom-perk-store-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
92	UIUserNavigationPortlet	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
93	WalletParentContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
94	top-wallet-container	top-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
95	WalletContainer	\N	\N	system:/groovy/portal/webui/container/UIContainer.gtmpl	\N	\N	\N	\N	\N	{}	[]
96	bottom-wallet-container	bottom-wallet-container	\N	system:/groovy/portal/webui/container/UIAddOnContainer.gtmpl	addonContainer	\N	\N	\N	\N	{}	[]
97	\N	\N	\N	\N	\N	\N	\N	\N	\N	{}	[]
98	\N	\N	\N	\N	\N	\N	\N	\N	\N	{"type":"PAGE"}	[]
\.


--
-- Data for Name: portal_descriptions; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_descriptions (description_id, ref_id, name, description) FROM stdin;
1	10	\N	\N
2	4	\N	\N
3	6	\N	\N
4	5	\N	\N
5	7	\N	\N
6	9	\N	\N
7	2	\N	\N
8	3	\N	\N
9	8	\N	\N
10	44	\N	\N
11	50	\N	\N
12	48	\N	\N
13	47	\N	\N
14	49	\N	\N
15	55	\N	\N
\.


--
-- Data for Name: portal_description_localized; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_description_localized (description_id, locale, name, description) FROM stdin;
10	en	How to earn point	\N
11	fr	Gérer les domaines	\N
11	en	Manage Domains	\N
12	fr	Gérer les règles	\N
12	en	Manage rules	\N
13	fr	Gamification	\N
13	en	Gamification	\N
14	fr	Gérer les badges	\N
14	en	Manage Badges	\N
\.


--
-- Data for Name: portal_sites; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_sites (id, type, name, locale, skin, label, description, properties, site_body) FROM stdin;
2	1	/platform/guests	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":4,"type":"CONTAINER"}],"id":3,"type":"CONTAINER"}]
3	2	root	\N	\N	\N	\N	{}	[{"children":[],"id":5,"type":"CONTAINER"}]
4	0	dw	en	\N	\N	\N	{"showPortletInfo":"0","sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":7,"type":"CONTAINER"}],"id":6,"type":"CONTAINER"}]
1	1	/platform/administrators	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":9,"type":"CONTAINER"}],"id":8,"type":"CONTAINER"}]
5	1	/platform/users	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":11,"type":"CONTAINER"}],"id":10,"type":"CONTAINER"}]
6	1	/platform/web-contributors	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":13,"type":"CONTAINER"}],"id":12,"type":"CONTAINER"}]
7	0	intranet	\N	\N	\N	\N	{}	[{"children":[],"id":14,"type":"CONTAINER"}]
8	1	/platform/rewarding	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":18,"type":"CONTAINER"}],"id":17,"type":"CONTAINER"}]
9	1	/platform	en	\N	\N	\N	{"sessionAlive":"onDemand"}	[{"children":[{"children":[],"id":98,"type":"CONTAINER"}],"id":97,"type":"CONTAINER"}]
\.


--
-- Data for Name: portal_pages; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_pages (id, site_id, show_max_window, display_name, name, description, factory_id, page_body) FROM stdin;
31	5	f	Spaces Administration	spacesAdministration	\N	\N	[{"id":54,"type":"WINDOW"}]
32	6	f	Site Explorer	SiteExplorer	\N	\N	[{"id":55,"type":"WINDOW"},{"id":56,"type":"WINDOW"}]
33	6	t	Editor	Editor	\N	\N	[{"id":57,"type":"WINDOW"}]
34	6	f	WCM Administration	WcmAdmin	\N	\N	[{"id":58,"type":"WINDOW"}]
9	2	f	Site Map	sitemap	\N	\N	[{"id":9,"type":"WINDOW"}]
10	4	f	Home Page	homepage	\N	\N	[{"children":[{"children":[{"id":10,"type":"WINDOW"}],"id":20,"type":"CONTAINER"},{"children":[{"children":[{"id":11,"type":"WINDOW"}],"id":22,"type":"CONTAINER"},{"children":[{"children":[{"id":12,"type":"WINDOW"}],"id":24,"type":"CONTAINER"},{"children":[{"children":[{"id":13,"type":"WINDOW"}],"id":26,"type":"CONTAINER"},{"children":[{"id":14,"type":"WINDOW"}],"id":27,"type":"CONTAINER"}],"id":25,"type":"CONTAINER"}],"id":23,"type":"CONTAINER"}],"id":21,"type":"CONTAINER"},{"children":[{"children":[{"id":15,"type":"WINDOW"}],"id":29,"type":"CONTAINER"},{"children":[{"id":16,"type":"WINDOW"}],"id":30,"type":"CONTAINER"},{"children":[{"children":[{"children":[{"id":17,"type":"WINDOW"}],"id":33,"type":"CONTAINER"},{"children":[{"id":18,"type":"WINDOW"}],"id":34,"type":"CONTAINER"},{"children":[{"id":19,"type":"WINDOW"}],"id":35,"type":"CONTAINER"}],"id":32,"type":"CONTAINER"}],"id":31,"type":"CONTAINER"}],"id":28,"type":"CONTAINER"}],"id":19,"type":"CONTAINER"}]
11	4	f	Profile	profile	\N	\N	[{"children":[{"id":20,"type":"WINDOW"}],"id":36,"type":"CONTAINER"},{"children":[{"children":[{"children":[{"id":21,"type":"WINDOW"}],"id":39,"type":"CONTAINER"},{"children":[],"id":40,"type":"CONTAINER"}],"id":38,"type":"CONTAINER"},{"children":[{"children":[{"id":22,"type":"WINDOW"}],"id":42,"type":"CONTAINER"},{"children":[],"id":43,"type":"CONTAINER"},{"children":[{"id":23,"type":"WINDOW"}],"id":44,"type":"CONTAINER"}],"id":41,"type":"CONTAINER"},{"children":[{"children":[],"id":46,"type":"CONTAINER"},{"children":[{"id":24,"type":"WINDOW"}],"id":47,"type":"CONTAINER"},{"children":[],"id":48,"type":"CONTAINER"}],"id":45,"type":"CONTAINER"}],"id":37,"type":"CONTAINER"}]
12	4	f	Wallet	wallet	\N	\N	[{"children":[{"id":25,"type":"WINDOW"}],"id":49,"type":"CONTAINER"},{"children":[{"children":[],"id":51,"type":"CONTAINER"},{"children":[{"id":26,"type":"WINDOW"}],"id":52,"type":"CONTAINER"},{"children":[],"id":53,"type":"CONTAINER"}],"id":50,"type":"CONTAINER"}]
13	4	f	Perk Store	perkstore	\N	\N	[{"children":[{"children":[],"id":55,"type":"CONTAINER"},{"children":[{"id":27,"type":"WINDOW"}],"id":56,"type":"CONTAINER"},{"children":[],"id":57,"type":"CONTAINER"}],"id":54,"type":"CONTAINER"}]
14	4	f	Gamification Achievements	achievements	\N	\N	[{"children":[{"id":28,"type":"WINDOW"}],"id":58,"type":"CONTAINER"},{"children":[{"children":[],"id":60,"type":"CONTAINER"},{"children":[{"id":29,"type":"WINDOW"}],"id":61,"type":"CONTAINER"},{"children":[],"id":62,"type":"CONTAINER"}],"id":59,"type":"CONTAINER"}]
15	4	f	Notifications Settings	notifications	\N	\N	[{"children":[{"id":30,"type":"WINDOW"}],"id":63,"type":"CONTAINER"},{"children":[{"id":31,"type":"WINDOW"}],"id":64,"type":"CONTAINER"}]
16	4	f	All Spaces	all-spaces	\N	\N	[{"children":[{"children":[{"id":32,"type":"WINDOW"}],"id":66,"type":"CONTAINER"}],"id":65,"type":"CONTAINER"}]
17	4	f	My Spaces	spaces	\N	\N	[{"children":[{"children":[{"id":33,"type":"WINDOW"}],"id":68,"type":"CONTAINER"}],"id":67,"type":"CONTAINER"}]
18	4	f	Invitation Received	invitationSpace	\N	\N	[{"children":[{"children":[{"id":34,"type":"WINDOW"}],"id":70,"type":"CONTAINER"}],"id":69,"type":"CONTAINER"}]
19	4	f	Pending	pendingSpace	\N	\N	[{"children":[{"children":[{"id":35,"type":"WINDOW"}],"id":72,"type":"CONTAINER"}],"id":71,"type":"CONTAINER"}]
20	4	f	Account Settings	account	\N	\N	[{"children":[],"id":73,"type":"CONTAINER"}]
21	4	f	People Directory	people	\N	\N	[{"id":36,"type":"WINDOW"}]
22	4	f	Connections	connections	\N	\N	[{"id":37,"type":"WINDOW"}]
23	4	f	Invitations	invitations	\N	\N	[{"id":38,"type":"WINDOW"}]
24	4	f	Requests	requests	\N	\N	[{"id":39,"type":"WINDOW"}]
25	4	f	Activity	activity	\N	\N	[{"children":[{"children":[{"id":40,"type":"WINDOW"}],"id":75,"type":"CONTAINER"}],"id":74,"type":"CONTAINER"}]
26	4	f	All Notifications	allNotifications	\N	\N	[{"children":[{"children":[{"id":41,"type":"WINDOW"}],"id":77,"type":"CONTAINER"}],"id":76,"type":"CONTAINER"}]
27	4	f	App Center User Setup	appCenterUserSetup	\N	\N	[{"children":[{"id":42,"type":"WINDOW"}],"id":78,"type":"CONTAINER"}]
28	4	f	News	news	\N	\N	[{"children":[{"children":[{"id":43,"type":"WINDOW"}],"id":80,"type":"CONTAINER"}],"id":79,"type":"CONTAINER"}]
29	4	f	News Composer	newsComposer	\N	\N	[{"children":[{"id":44,"type":"WINDOW"}],"id":81,"type":"CONTAINER"}]
30	4	f	News	newsDetail	\N	\N	[{"children":[{"id":45,"type":"WINDOW"}],"id":82,"type":"CONTAINER"}]
1	1	f	Registry	registry	\N	\N	[{"id":46,"type":"WINDOW"}]
2	1	f	New Staff	newStaff	\N	\N	[{"id":47,"type":"WINDOW"}]
3	1	f	Organization Management	management	\N	\N	[{"id":48,"type":"WINDOW"}]
4	1	f	Branding	branding	\N	\N	[{"id":49,"type":"WINDOW"}]
5	1	f	Space Templates Management	spacesTemplates	\N	\N	[{"id":50,"type":"WINDOW"}]
6	1	f	search	search	\N	\N	[{"id":51,"type":"WINDOW"}]
7	1	f	Notifications Administration	notification	\N	\N	[{"id":52,"type":"WINDOW"}]
8	1	f	Search Indexing	searchIndexing	\N	\N	[{"id":53,"type":"WINDOW"}]
35	7	f	Tasks	tasks	\N	\N	[{"id":59,"type":"WINDOW"}]
36	7	f	How to earn gamification points	gameficationhelp	\N	\N	[{"id":60,"type":"WINDOW"}]
37	7	f	Gamification Achievements	achievements	\N	\N	[{"children":[{"id":61,"type":"WINDOW"}],"id":83,"type":"CONTAINER"},{"children":[{"children":[],"id":85,"type":"CONTAINER"},{"children":[{"id":62,"type":"WINDOW"}],"id":86,"type":"CONTAINER"},{"children":[],"id":87,"type":"CONTAINER"}],"id":84,"type":"CONTAINER"}]
38	1	f	Manage Rules	rules	\N	\N	[{"id":63,"type":"WINDOW"}]
39	1	f	Gamification Manage Badges	badges	\N	\N	[{"id":64,"type":"WINDOW"}]
40	1	f	Gamification Manage Domains	domains	\N	\N	[{"id":65,"type":"WINDOW"}]
41	1	f	Page Management	pageManagement	\N	\N	[{"id":66,"type":"WINDOW"}]
42	1	f	Portal Navigation	portalnavigation	\N	\N	[{"id":67,"type":"WINDOW"}]
43	1	f	Group Navigation	groupnavigation	\N	\N	[{"id":68,"type":"WINDOW"}]
44	8	f	Kudo administration	kudosAdministration	\N	\N	[{"id":69,"type":"WINDOW"}]
45	7	f	Perk Store	perkstore	\N	\N	[{"children":[{"children":[],"id":89,"type":"CONTAINER"},{"children":[{"id":70,"type":"WINDOW"}],"id":90,"type":"CONTAINER"},{"children":[],"id":91,"type":"CONTAINER"}],"id":88,"type":"CONTAINER"}]
46	7	f	Wallet	wallet	\N	\N	[{"children":[{"id":71,"type":"WINDOW"}],"id":92,"type":"CONTAINER"},{"children":[{"children":[],"id":94,"type":"CONTAINER"},{"children":[{"id":72,"type":"WINDOW"}],"id":95,"type":"CONTAINER"},{"children":[],"id":96,"type":"CONTAINER"}],"id":93,"type":"CONTAINER"}]
47	8	f	Wallet adminsitration	walletAdministration	\N	\N	[{"id":73,"type":"WINDOW"}]
48	8	f	Reward administration	rewardAdministration	\N	\N	[{"id":74,"type":"WINDOW"}]
49	1	f	Web Conferencing Administration	webconferencing	\N	\N	[{"id":75,"type":"WINDOW"}]
\.


--
-- Data for Name: portal_navigation_nodes; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_navigation_nodes (node_id, name, label, icon, start_time, end_time, visibility, node_index, page_id, parent_id) FROM stdin;
1	default	\N	\N	0	0	0	0	\N	\N
2	administration	#{administration.title}	\N	-1	-1	0	0	\N	1
3	registry	#{administration.application-registry}	\N	-1	-1	0	0	1	2
4	newStaff	#{administration.newstaff}	\N	-1	-1	0	1	2	2
5	management	#{administration.management}	\N	-1	-1	0	2	3	2
6	branding	#{administration.Branding}	\N	-1	-1	0	1	4	1
7	spacesTemplates	#{administration.spacesTemplates}	\N	-1	-1	0	2	5	1
8	search	#{administration.search}	\N	-1	-1	0	3	6	1
9	notification	#{administration.notification}	\N	-1	-1	0	4	7	1
10	searchIndexing	Search Indexing	\N	-1	-1	0	5	8	1
11	default	\N	\N	0	0	0	0	\N	\N
12	sitemap	#{platform.guests.sitemap}	\N	-1	-1	0	0	9	11
13	default	\N	\N	0	0	0	0	\N	\N
14	home	#{portal.dw.home}	\N	-1	-1	0	0	10	13
15	profile	#{portal.dw.profile}	\N	-1	-1	3	1	11	13
16	achievements	#{portal.dw.achievements}	\N	-1	-1	3	2	14	13
17	wallet	#{portal.dw.wallet}	\N	-1	-1	3	3	12	13
18	perkstore	#{portal.dw.perkstore}	\N	-1	-1	3	4	13	13
19	notifications	#{portal.dw.notifications}	\N	-1	-1	3	5	15	13
20	all-spaces	#{portal.dw.allSpaces}	\N	-1	-1	3	6	16	13
21	spaces	#{portal.dw.spaces}	\N	-1	-1	3	7	17	13
22	invitationSpace	#{portal.dw.invitationSpace}	\N	-1	-1	3	8	18	13
23	pendingSpace	#{portal.dw.pendingSpace}	\N	-1	-1	3	9	19	13
24	account	#{portal.dw.account}	\N	-1	-1	3	10	20	13
25	connexions	#{portal.dw.people}	\N	-1	-1	0	11	21	13
26	people	#{portal.dw.people}	\N	-1	-1	0	0	21	25
27	network	#{portal.dw.people}	\N	-1	-1	0	1	22	25
28	receivedInvitations	#{portal.dw.people}	\N	-1	-1	0	2	23	25
29	pendingRequests	#{portal.dw.people}	\N	-1	-1	0	3	24	25
30	activity	#{portal.dw.activity}	\N	-1	-1	3	12	25	13
31	allNotifications	#{portal.dw.allNotifications}	\N	-1	-1	3	13	26	13
32	appCenterUserSetup	#{portal.dw.appCenterUserSetup}	\N	-1	-1	3	14	27	13
33	news	#{news.navigation.node.label}	\N	-1	-1	0	15	28	13
34	editor	#{portal.dw.newsEditor}	\N	-1	-1	3	0	29	33
35	detail	#{portal.dw.newsDetail}	\N	-1	-1	3	1	30	33
36	default	\N	\N	0	0	0	0	\N	\N
37	spacesAdministration	#{SpacesAdministrationPortlet.label.spaces}	\N	-1	-1	0	0	31	36
38	default	\N	\N	0	0	0	0	\N	\N
39	siteExplorer	#{administration.siteExplorer}	\N	-1	-1	0	0	32	38
40	editor	#{administration.editor}	\N	-1	-1	1	1	33	38
41	wcmAdmin	#{administration.wcmAdmin}	\N	-1	-1	0	2	34	38
42	default	\N	\N	0	0	0	0	\N	\N
43	tasks	#{addon.task.navigation.node.label}	\N	-1	-1	0	0	35	42
44	gamification-earn-points	\N	\N	-1	-1	3	1	36	42
45	achievements	Gamification Achievements	\N	-1	-1	3	2	37	42
46	achievements/mybadges	Gamification Achievements	\N	-1	-1	3	3	\N	42
47	gamification	\N	\N	-1	-1	0	6	\N	1
48	rules	\N	\N	-1	-1	0	0	38	47
49	badges	\N	\N	-1	-1	0	1	39	47
50	domains	\N	\N	-1	-1	0	2	40	47
51	pageManagement	#{administration.pageManagement}	\N	-1	-1	0	3	41	2
52	groupnavigation	#{administration.groupnavigation}	\N	-1	-1	0	7	43	1
53	portalnavigation	#{administration.portalnavigation}	\N	-1	-1	0	8	42	1
54	default	\N	\N	0	0	0	0	\N	\N
56	kudosAdministration	Kudos	\N	-1	-1	0	0	44	55
57	perkstore	#{addon.perkstore.navigation.node.label}	\N	-1	-1	0	4	45	42
58	wallet	Wallet	\N	-1	-1	3	5	46	42
59	walletAdministration	Wallet	\N	-1	-1	0	1	47	55
60	rewardAdministration	Reward	\N	-1	-1	0	2	48	55
55	rewardAdministration	Reward	\N	-1	-1	0	0	48	54
61	webconferencing	#{webconferencing.admin.page}	\N	-1	-1	1	9	49	1
\.


--
-- Data for Name: portal_navigations; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_navigations (navigation_id, site_id, priority, node_id) FROM stdin;
2	2	9	11
3	4	4	13
4	5	8	36
5	6	1	38
7	8	3	54
6	7	3	42
1	1	1	1
\.


--
-- Data for Name: portal_permissions; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_permissions (permission_id, ref_type, ref_id, permission, type) FROM stdin;
1	org.exoplatform.portal.jdbc.entity.ContainerEntity	1	Everyone	2
2	org.exoplatform.portal.jdbc.entity.ContainerEntity	1	Everyone	3
3	org.exoplatform.portal.jdbc.entity.ContainerEntity	1	Everyone	0
4	org.exoplatform.portal.jdbc.entity.SiteEntity	1	*:/platform/administrators	0
5	org.exoplatform.portal.jdbc.entity.SiteEntity	1	manager:/platform/administrators	1
6	org.exoplatform.portal.jdbc.entity.ContainerEntity	3	Everyone	2
7	org.exoplatform.portal.jdbc.entity.ContainerEntity	3	Everyone	3
8	org.exoplatform.portal.jdbc.entity.ContainerEntity	3	Everyone	0
9	org.exoplatform.portal.jdbc.entity.SiteEntity	2	*:/platform/guests	0
10	org.exoplatform.portal.jdbc.entity.SiteEntity	2	manager:/platform/guests	1
11	org.exoplatform.portal.jdbc.entity.ContainerEntity	5	Everyone	2
12	org.exoplatform.portal.jdbc.entity.ContainerEntity	5	Everyone	3
13	org.exoplatform.portal.jdbc.entity.SiteEntity	3	\N	1
14	org.exoplatform.portal.jdbc.entity.ContainerEntity	6	Everyone	2
15	org.exoplatform.portal.jdbc.entity.ContainerEntity	6	Everyone	3
16	org.exoplatform.portal.jdbc.entity.ContainerEntity	6	Everyone	0
17	org.exoplatform.portal.jdbc.entity.SiteEntity	4	*:/platform/users	0
18	org.exoplatform.portal.jdbc.entity.SiteEntity	4	*:/platform/administrators	1
19	org.exoplatform.portal.jdbc.entity.ContainerEntity	8	Everyone	2
20	org.exoplatform.portal.jdbc.entity.ContainerEntity	8	Everyone	3
21	org.exoplatform.portal.jdbc.entity.ContainerEntity	8	Everyone	0
22	org.exoplatform.portal.jdbc.entity.ContainerEntity	10	Everyone	2
23	org.exoplatform.portal.jdbc.entity.ContainerEntity	10	Everyone	3
24	org.exoplatform.portal.jdbc.entity.ContainerEntity	10	Everyone	0
25	org.exoplatform.portal.jdbc.entity.SiteEntity	5	*:/platform/users	0
26	org.exoplatform.portal.jdbc.entity.SiteEntity	5	manager:/platform/users	1
27	org.exoplatform.portal.jdbc.entity.ContainerEntity	12	Everyone	2
28	org.exoplatform.portal.jdbc.entity.ContainerEntity	12	Everyone	3
29	org.exoplatform.portal.jdbc.entity.ContainerEntity	12	Everyone	0
30	org.exoplatform.portal.jdbc.entity.SiteEntity	6	*:/platform/web-contributors	0
31	org.exoplatform.portal.jdbc.entity.SiteEntity	6	manager:/platform/web-contributors	1
32	org.exoplatform.portal.jdbc.entity.ContainerEntity	14	Everyone	2
33	org.exoplatform.portal.jdbc.entity.ContainerEntity	14	Everyone	3
34	org.exoplatform.portal.jdbc.entity.SiteEntity	7	\N	1
35	org.exoplatform.portal.jdbc.entity.ContainerEntity	15	Everyone	2
36	org.exoplatform.portal.jdbc.entity.ContainerEntity	15	Everyone	3
37	org.exoplatform.portal.jdbc.entity.ContainerEntity	15	Everyone	0
38	org.exoplatform.portal.jdbc.entity.SiteEntity	8	*:/platform/rewarding	0
39	org.exoplatform.portal.jdbc.entity.SiteEntity	8	manager:/platform/rewarding	1
40	org.exoplatform.portal.jdbc.entity.ContainerEntity	17	Everyone	2
41	org.exoplatform.portal.jdbc.entity.ContainerEntity	17	Everyone	3
42	org.exoplatform.portal.jdbc.entity.ContainerEntity	17	Everyone	0
43	org.exoplatform.portal.jdbc.entity.PageEntity	1	manager:/platform/administrators	0
44	org.exoplatform.portal.jdbc.entity.PageEntity	1	manager:/platform/administrators	1
45	org.exoplatform.portal.jdbc.entity.PageEntity	1	Everyone	2
46	org.exoplatform.portal.jdbc.entity.PageEntity	1	Everyone	3
47	org.exoplatform.portal.jdbc.entity.WindowEntity	1	manager:/platform/administrators	0
48	org.exoplatform.portal.jdbc.entity.PageEntity	2	manager:/platform/administrators	0
49	org.exoplatform.portal.jdbc.entity.PageEntity	2	manager:/platform/administrators	1
50	org.exoplatform.portal.jdbc.entity.PageEntity	2	Everyone	2
51	org.exoplatform.portal.jdbc.entity.PageEntity	2	Everyone	3
52	org.exoplatform.portal.jdbc.entity.WindowEntity	2	*:/platform/administrators	0
53	org.exoplatform.portal.jdbc.entity.PageEntity	3	manager:/platform/administrators	0
54	org.exoplatform.portal.jdbc.entity.PageEntity	3	manager:/platform/administrators	1
55	org.exoplatform.portal.jdbc.entity.PageEntity	3	Everyone	2
56	org.exoplatform.portal.jdbc.entity.PageEntity	3	Everyone	3
57	org.exoplatform.portal.jdbc.entity.WindowEntity	3	*:/platform/administrators	0
58	org.exoplatform.portal.jdbc.entity.PageEntity	4	manager:/platform/administrators	0
59	org.exoplatform.portal.jdbc.entity.PageEntity	4	manager:/platform/administrators	1
60	org.exoplatform.portal.jdbc.entity.PageEntity	4	Everyone	2
61	org.exoplatform.portal.jdbc.entity.PageEntity	4	Everyone	3
62	org.exoplatform.portal.jdbc.entity.WindowEntity	4	manager:/platform/administrators	0
63	org.exoplatform.portal.jdbc.entity.PageEntity	5	*:/platform/administrators	0
64	org.exoplatform.portal.jdbc.entity.PageEntity	5	*:/platform/administrators	1
65	org.exoplatform.portal.jdbc.entity.PageEntity	5	Everyone	2
66	org.exoplatform.portal.jdbc.entity.PageEntity	5	Everyone	3
67	org.exoplatform.portal.jdbc.entity.WindowEntity	5	*:/platform/administrators	0
68	org.exoplatform.portal.jdbc.entity.PageEntity	6	manager:/platform/administrators	0
69	org.exoplatform.portal.jdbc.entity.PageEntity	6	manager:/platform/administrators	1
70	org.exoplatform.portal.jdbc.entity.PageEntity	6	Everyone	2
71	org.exoplatform.portal.jdbc.entity.PageEntity	6	Everyone	3
72	org.exoplatform.portal.jdbc.entity.WindowEntity	6	manager:/platform/administrators	0
73	org.exoplatform.portal.jdbc.entity.PageEntity	7	manager:/platform/administrators	0
74	org.exoplatform.portal.jdbc.entity.PageEntity	7	manager:/platform/administrators	1
75	org.exoplatform.portal.jdbc.entity.PageEntity	7	Everyone	2
76	org.exoplatform.portal.jdbc.entity.PageEntity	7	Everyone	3
77	org.exoplatform.portal.jdbc.entity.WindowEntity	7	manager:/platform/administrators	0
78	org.exoplatform.portal.jdbc.entity.PageEntity	8	*:/platform/administrators	0
79	org.exoplatform.portal.jdbc.entity.PageEntity	8	*:/platform/administrators	1
80	org.exoplatform.portal.jdbc.entity.PageEntity	8	Everyone	2
81	org.exoplatform.portal.jdbc.entity.PageEntity	8	Everyone	3
82	org.exoplatform.portal.jdbc.entity.WindowEntity	8	*:/platform/administrators	0
83	org.exoplatform.portal.jdbc.entity.PageEntity	9	*:/platform/guests	0
84	org.exoplatform.portal.jdbc.entity.PageEntity	9	*:/platform/administrators	1
85	org.exoplatform.portal.jdbc.entity.PageEntity	9	Everyone	2
86	org.exoplatform.portal.jdbc.entity.PageEntity	9	Everyone	3
87	org.exoplatform.portal.jdbc.entity.WindowEntity	9	*:/platform/guests	0
88	org.exoplatform.portal.jdbc.entity.PageEntity	10	*:/platform/users	0
89	org.exoplatform.portal.jdbc.entity.PageEntity	10	*:/platform/administrators	1
90	org.exoplatform.portal.jdbc.entity.PageEntity	10	Everyone	2
91	org.exoplatform.portal.jdbc.entity.PageEntity	10	Everyone	3
92	org.exoplatform.portal.jdbc.entity.ContainerEntity	19	Everyone	2
93	org.exoplatform.portal.jdbc.entity.ContainerEntity	19	Everyone	3
94	org.exoplatform.portal.jdbc.entity.ContainerEntity	19	*:/platform/users	0
95	org.exoplatform.portal.jdbc.entity.ContainerEntity	20	Everyone	2
96	org.exoplatform.portal.jdbc.entity.ContainerEntity	20	Everyone	3
97	org.exoplatform.portal.jdbc.entity.ContainerEntity	20	*:/platform/users	0
98	org.exoplatform.portal.jdbc.entity.WindowEntity	10	*:/platform/users	0
99	org.exoplatform.portal.jdbc.entity.ContainerEntity	21	Everyone	2
100	org.exoplatform.portal.jdbc.entity.ContainerEntity	21	Everyone	3
101	org.exoplatform.portal.jdbc.entity.ContainerEntity	21	*:/platform/users	0
102	org.exoplatform.portal.jdbc.entity.ContainerEntity	22	Everyone	2
103	org.exoplatform.portal.jdbc.entity.ContainerEntity	22	Everyone	3
104	org.exoplatform.portal.jdbc.entity.ContainerEntity	22	*:/platform/users	0
105	org.exoplatform.portal.jdbc.entity.WindowEntity	11	*:/platform/users	0
106	org.exoplatform.portal.jdbc.entity.ContainerEntity	23	Everyone	2
107	org.exoplatform.portal.jdbc.entity.ContainerEntity	23	Everyone	3
108	org.exoplatform.portal.jdbc.entity.ContainerEntity	23	*:/platform/users	0
109	org.exoplatform.portal.jdbc.entity.ContainerEntity	24	Everyone	2
110	org.exoplatform.portal.jdbc.entity.ContainerEntity	24	Everyone	3
111	org.exoplatform.portal.jdbc.entity.ContainerEntity	24	*:/platform/users	0
112	org.exoplatform.portal.jdbc.entity.WindowEntity	12	*:/platform/users	0
113	org.exoplatform.portal.jdbc.entity.ContainerEntity	25	Everyone	2
114	org.exoplatform.portal.jdbc.entity.ContainerEntity	25	Everyone	3
115	org.exoplatform.portal.jdbc.entity.ContainerEntity	25	*:/platform/users	0
116	org.exoplatform.portal.jdbc.entity.ContainerEntity	26	Everyone	2
117	org.exoplatform.portal.jdbc.entity.ContainerEntity	26	Everyone	3
118	org.exoplatform.portal.jdbc.entity.ContainerEntity	26	*:/platform/users	0
119	org.exoplatform.portal.jdbc.entity.WindowEntity	13	*:/platform/users	0
120	org.exoplatform.portal.jdbc.entity.ContainerEntity	27	Everyone	2
121	org.exoplatform.portal.jdbc.entity.ContainerEntity	27	Everyone	3
122	org.exoplatform.portal.jdbc.entity.ContainerEntity	27	*:/platform/users	0
123	org.exoplatform.portal.jdbc.entity.WindowEntity	14	*:/platform/users	0
124	org.exoplatform.portal.jdbc.entity.ContainerEntity	28	Everyone	2
125	org.exoplatform.portal.jdbc.entity.ContainerEntity	28	Everyone	3
126	org.exoplatform.portal.jdbc.entity.ContainerEntity	28	*:/platform/users	0
127	org.exoplatform.portal.jdbc.entity.ContainerEntity	29	Everyone	2
128	org.exoplatform.portal.jdbc.entity.ContainerEntity	29	Everyone	3
129	org.exoplatform.portal.jdbc.entity.ContainerEntity	29	*:/platform/users	0
130	org.exoplatform.portal.jdbc.entity.WindowEntity	15	*:/platform/users	0
131	org.exoplatform.portal.jdbc.entity.ContainerEntity	30	Everyone	2
132	org.exoplatform.portal.jdbc.entity.ContainerEntity	30	Everyone	3
133	org.exoplatform.portal.jdbc.entity.ContainerEntity	30	*:/platform/users	0
134	org.exoplatform.portal.jdbc.entity.WindowEntity	16	*:/platform/users	0
135	org.exoplatform.portal.jdbc.entity.ContainerEntity	31	Everyone	2
136	org.exoplatform.portal.jdbc.entity.ContainerEntity	31	Everyone	3
137	org.exoplatform.portal.jdbc.entity.ContainerEntity	31	*:/platform/users	0
138	org.exoplatform.portal.jdbc.entity.ContainerEntity	32	Everyone	2
139	org.exoplatform.portal.jdbc.entity.ContainerEntity	32	Everyone	3
140	org.exoplatform.portal.jdbc.entity.ContainerEntity	32	Everyone	0
141	org.exoplatform.portal.jdbc.entity.ContainerEntity	33	Everyone	2
142	org.exoplatform.portal.jdbc.entity.ContainerEntity	33	Everyone	3
143	org.exoplatform.portal.jdbc.entity.ContainerEntity	33	*:/platform/users	0
144	org.exoplatform.portal.jdbc.entity.WindowEntity	17	*:/platform/users	0
145	org.exoplatform.portal.jdbc.entity.ContainerEntity	34	Everyone	2
146	org.exoplatform.portal.jdbc.entity.ContainerEntity	34	Everyone	3
147	org.exoplatform.portal.jdbc.entity.ContainerEntity	34	*:/platform/users	0
148	org.exoplatform.portal.jdbc.entity.WindowEntity	18	*:/platform/users	0
149	org.exoplatform.portal.jdbc.entity.ContainerEntity	35	Everyone	2
150	org.exoplatform.portal.jdbc.entity.ContainerEntity	35	Everyone	3
151	org.exoplatform.portal.jdbc.entity.ContainerEntity	35	*:/platform/users	0
152	org.exoplatform.portal.jdbc.entity.WindowEntity	19	*:/platform/users	0
153	org.exoplatform.portal.jdbc.entity.PageEntity	11	*:/platform/users	0
154	org.exoplatform.portal.jdbc.entity.PageEntity	11	manager:/platform/administrators	1
155	org.exoplatform.portal.jdbc.entity.PageEntity	11	Everyone	2
156	org.exoplatform.portal.jdbc.entity.PageEntity	11	Everyone	3
157	org.exoplatform.portal.jdbc.entity.ContainerEntity	36	Everyone	2
158	org.exoplatform.portal.jdbc.entity.ContainerEntity	36	Everyone	3
159	org.exoplatform.portal.jdbc.entity.ContainerEntity	36	*:/platform/users	0
160	org.exoplatform.portal.jdbc.entity.WindowEntity	20	*:/platform/users	0
161	org.exoplatform.portal.jdbc.entity.ContainerEntity	37	Everyone	2
162	org.exoplatform.portal.jdbc.entity.ContainerEntity	37	Everyone	3
163	org.exoplatform.portal.jdbc.entity.ContainerEntity	37	*:/platform/users	0
164	org.exoplatform.portal.jdbc.entity.ContainerEntity	38	Everyone	2
165	org.exoplatform.portal.jdbc.entity.ContainerEntity	38	Everyone	3
166	org.exoplatform.portal.jdbc.entity.ContainerEntity	38	*:/platform/users	0
167	org.exoplatform.portal.jdbc.entity.ContainerEntity	39	Everyone	2
168	org.exoplatform.portal.jdbc.entity.ContainerEntity	39	Everyone	3
169	org.exoplatform.portal.jdbc.entity.ContainerEntity	39	*:/platform/users	0
170	org.exoplatform.portal.jdbc.entity.WindowEntity	21	*:/platform/users	0
171	org.exoplatform.portal.jdbc.entity.ContainerEntity	40	Everyone	2
172	org.exoplatform.portal.jdbc.entity.ContainerEntity	40	Everyone	3
173	org.exoplatform.portal.jdbc.entity.ContainerEntity	40	*:/platform/users	0
174	org.exoplatform.portal.jdbc.entity.ContainerEntity	41	Everyone	2
175	org.exoplatform.portal.jdbc.entity.ContainerEntity	41	Everyone	3
176	org.exoplatform.portal.jdbc.entity.ContainerEntity	41	*:/platform/users	0
177	org.exoplatform.portal.jdbc.entity.ContainerEntity	42	Everyone	2
178	org.exoplatform.portal.jdbc.entity.ContainerEntity	42	Everyone	3
179	org.exoplatform.portal.jdbc.entity.ContainerEntity	42	*:/platform/users	0
180	org.exoplatform.portal.jdbc.entity.WindowEntity	22	*:/platform/users	0
181	org.exoplatform.portal.jdbc.entity.ContainerEntity	43	Everyone	2
182	org.exoplatform.portal.jdbc.entity.ContainerEntity	43	Everyone	3
183	org.exoplatform.portal.jdbc.entity.ContainerEntity	43	*:/platform/users	0
184	org.exoplatform.portal.jdbc.entity.ContainerEntity	44	Everyone	2
185	org.exoplatform.portal.jdbc.entity.ContainerEntity	44	Everyone	3
186	org.exoplatform.portal.jdbc.entity.ContainerEntity	44	*:/platform/users	0
187	org.exoplatform.portal.jdbc.entity.WindowEntity	23	*:/platform/users	0
188	org.exoplatform.portal.jdbc.entity.ContainerEntity	45	Everyone	2
189	org.exoplatform.portal.jdbc.entity.ContainerEntity	45	Everyone	3
190	org.exoplatform.portal.jdbc.entity.ContainerEntity	45	*:/platform/users	0
191	org.exoplatform.portal.jdbc.entity.ContainerEntity	46	Everyone	2
192	org.exoplatform.portal.jdbc.entity.ContainerEntity	46	Everyone	3
193	org.exoplatform.portal.jdbc.entity.ContainerEntity	46	*:/platform/users	0
194	org.exoplatform.portal.jdbc.entity.ContainerEntity	47	Everyone	2
195	org.exoplatform.portal.jdbc.entity.ContainerEntity	47	Everyone	3
196	org.exoplatform.portal.jdbc.entity.ContainerEntity	47	*:/platform/users	0
197	org.exoplatform.portal.jdbc.entity.WindowEntity	24	*:/platform/users	0
198	org.exoplatform.portal.jdbc.entity.ContainerEntity	48	Everyone	2
199	org.exoplatform.portal.jdbc.entity.ContainerEntity	48	Everyone	3
200	org.exoplatform.portal.jdbc.entity.ContainerEntity	48	*:/platform/users	0
201	org.exoplatform.portal.jdbc.entity.PageEntity	12	*:/platform/users	0
202	org.exoplatform.portal.jdbc.entity.PageEntity	12	*:/platform/administrators	1
203	org.exoplatform.portal.jdbc.entity.PageEntity	12	Everyone	2
204	org.exoplatform.portal.jdbc.entity.PageEntity	12	Everyone	3
205	org.exoplatform.portal.jdbc.entity.ContainerEntity	49	Everyone	2
206	org.exoplatform.portal.jdbc.entity.ContainerEntity	49	Everyone	3
207	org.exoplatform.portal.jdbc.entity.ContainerEntity	49	*:/platform/users	0
208	org.exoplatform.portal.jdbc.entity.WindowEntity	25	*:/platform/users	0
209	org.exoplatform.portal.jdbc.entity.ContainerEntity	50	Everyone	2
210	org.exoplatform.portal.jdbc.entity.ContainerEntity	50	Everyone	3
211	org.exoplatform.portal.jdbc.entity.ContainerEntity	50	*:/platform/users	0
212	org.exoplatform.portal.jdbc.entity.ContainerEntity	51	Everyone	2
213	org.exoplatform.portal.jdbc.entity.ContainerEntity	51	Everyone	3
214	org.exoplatform.portal.jdbc.entity.ContainerEntity	51	*:/platform/users	0
215	org.exoplatform.portal.jdbc.entity.ContainerEntity	52	Everyone	2
216	org.exoplatform.portal.jdbc.entity.ContainerEntity	52	Everyone	3
217	org.exoplatform.portal.jdbc.entity.ContainerEntity	52	*:/platform/users	0
218	org.exoplatform.portal.jdbc.entity.WindowEntity	26	*:/platform/users	0
219	org.exoplatform.portal.jdbc.entity.ContainerEntity	53	Everyone	2
220	org.exoplatform.portal.jdbc.entity.ContainerEntity	53	Everyone	3
221	org.exoplatform.portal.jdbc.entity.ContainerEntity	53	*:/platform/users	0
222	org.exoplatform.portal.jdbc.entity.PageEntity	13	*:/platform/users	0
223	org.exoplatform.portal.jdbc.entity.PageEntity	13	*:/platform/administrators	1
224	org.exoplatform.portal.jdbc.entity.PageEntity	13	Everyone	2
225	org.exoplatform.portal.jdbc.entity.PageEntity	13	Everyone	3
226	org.exoplatform.portal.jdbc.entity.ContainerEntity	54	Everyone	2
227	org.exoplatform.portal.jdbc.entity.ContainerEntity	54	Everyone	3
228	org.exoplatform.portal.jdbc.entity.ContainerEntity	54	*:/platform/users	0
229	org.exoplatform.portal.jdbc.entity.ContainerEntity	55	Everyone	2
230	org.exoplatform.portal.jdbc.entity.ContainerEntity	55	Everyone	3
231	org.exoplatform.portal.jdbc.entity.ContainerEntity	55	*:/platform/users	0
232	org.exoplatform.portal.jdbc.entity.ContainerEntity	56	Everyone	2
233	org.exoplatform.portal.jdbc.entity.ContainerEntity	56	Everyone	3
234	org.exoplatform.portal.jdbc.entity.ContainerEntity	56	*:/platform/users	0
235	org.exoplatform.portal.jdbc.entity.WindowEntity	27	*:/platform/users	0
236	org.exoplatform.portal.jdbc.entity.ContainerEntity	57	Everyone	2
237	org.exoplatform.portal.jdbc.entity.ContainerEntity	57	Everyone	3
238	org.exoplatform.portal.jdbc.entity.ContainerEntity	57	*:/platform/users	0
239	org.exoplatform.portal.jdbc.entity.PageEntity	14	*:/platform/users	0
240	org.exoplatform.portal.jdbc.entity.PageEntity	14	*:/platform/administrators	1
241	org.exoplatform.portal.jdbc.entity.PageEntity	14	Everyone	2
242	org.exoplatform.portal.jdbc.entity.PageEntity	14	Everyone	3
243	org.exoplatform.portal.jdbc.entity.ContainerEntity	58	Everyone	2
244	org.exoplatform.portal.jdbc.entity.ContainerEntity	58	Everyone	3
245	org.exoplatform.portal.jdbc.entity.ContainerEntity	58	*:/platform/users	0
246	org.exoplatform.portal.jdbc.entity.WindowEntity	28	*:/platform/users	0
247	org.exoplatform.portal.jdbc.entity.ContainerEntity	59	Everyone	2
248	org.exoplatform.portal.jdbc.entity.ContainerEntity	59	Everyone	3
249	org.exoplatform.portal.jdbc.entity.ContainerEntity	59	*:/platform/users	0
250	org.exoplatform.portal.jdbc.entity.ContainerEntity	60	Everyone	2
251	org.exoplatform.portal.jdbc.entity.ContainerEntity	60	Everyone	3
252	org.exoplatform.portal.jdbc.entity.ContainerEntity	60	*:/platform/users	0
253	org.exoplatform.portal.jdbc.entity.ContainerEntity	61	Everyone	2
254	org.exoplatform.portal.jdbc.entity.ContainerEntity	61	Everyone	3
255	org.exoplatform.portal.jdbc.entity.ContainerEntity	61	*:/platform/users	0
256	org.exoplatform.portal.jdbc.entity.WindowEntity	29	*:/platform/users	0
257	org.exoplatform.portal.jdbc.entity.ContainerEntity	62	Everyone	2
258	org.exoplatform.portal.jdbc.entity.ContainerEntity	62	Everyone	3
259	org.exoplatform.portal.jdbc.entity.ContainerEntity	62	*:/platform/users	0
260	org.exoplatform.portal.jdbc.entity.PageEntity	15	*:/platform/users	0
261	org.exoplatform.portal.jdbc.entity.PageEntity	15	manager:/platform/administrators	1
262	org.exoplatform.portal.jdbc.entity.PageEntity	15	Everyone	2
263	org.exoplatform.portal.jdbc.entity.PageEntity	15	Everyone	3
264	org.exoplatform.portal.jdbc.entity.ContainerEntity	63	Everyone	2
265	org.exoplatform.portal.jdbc.entity.ContainerEntity	63	Everyone	3
266	org.exoplatform.portal.jdbc.entity.ContainerEntity	63	*:/platform/users	0
267	org.exoplatform.portal.jdbc.entity.WindowEntity	30	*:/platform/users	0
268	org.exoplatform.portal.jdbc.entity.ContainerEntity	64	Everyone	2
269	org.exoplatform.portal.jdbc.entity.ContainerEntity	64	Everyone	3
270	org.exoplatform.portal.jdbc.entity.ContainerEntity	64	*:/platform/users	0
271	org.exoplatform.portal.jdbc.entity.WindowEntity	31	*:/platform/users	0
272	org.exoplatform.portal.jdbc.entity.PageEntity	16	*:/platform/users	0
273	org.exoplatform.portal.jdbc.entity.PageEntity	16	manager:/platform/administrators	1
274	org.exoplatform.portal.jdbc.entity.PageEntity	16	Everyone	2
275	org.exoplatform.portal.jdbc.entity.PageEntity	16	Everyone	3
276	org.exoplatform.portal.jdbc.entity.ContainerEntity	65	Everyone	2
277	org.exoplatform.portal.jdbc.entity.ContainerEntity	65	Everyone	3
278	org.exoplatform.portal.jdbc.entity.ContainerEntity	65	*:/platform/users	0
279	org.exoplatform.portal.jdbc.entity.ContainerEntity	66	Everyone	2
280	org.exoplatform.portal.jdbc.entity.ContainerEntity	66	Everyone	3
281	org.exoplatform.portal.jdbc.entity.ContainerEntity	66	*:/platform/users	0
282	org.exoplatform.portal.jdbc.entity.WindowEntity	32	*:/platform/users	0
283	org.exoplatform.portal.jdbc.entity.PageEntity	17	*:/platform/users	0
284	org.exoplatform.portal.jdbc.entity.PageEntity	17	manager:/platform/administrators	1
285	org.exoplatform.portal.jdbc.entity.PageEntity	17	Everyone	2
286	org.exoplatform.portal.jdbc.entity.PageEntity	17	Everyone	3
287	org.exoplatform.portal.jdbc.entity.ContainerEntity	67	Everyone	2
288	org.exoplatform.portal.jdbc.entity.ContainerEntity	67	Everyone	3
289	org.exoplatform.portal.jdbc.entity.ContainerEntity	67	*:/platform/users	0
290	org.exoplatform.portal.jdbc.entity.ContainerEntity	68	Everyone	2
291	org.exoplatform.portal.jdbc.entity.ContainerEntity	68	Everyone	3
292	org.exoplatform.portal.jdbc.entity.ContainerEntity	68	*:/platform/users	0
293	org.exoplatform.portal.jdbc.entity.WindowEntity	33	*:/platform/users	0
294	org.exoplatform.portal.jdbc.entity.PageEntity	18	*:/platform/users	0
295	org.exoplatform.portal.jdbc.entity.PageEntity	18	manager:/platform/administrators	1
296	org.exoplatform.portal.jdbc.entity.PageEntity	18	Everyone	2
297	org.exoplatform.portal.jdbc.entity.PageEntity	18	Everyone	3
298	org.exoplatform.portal.jdbc.entity.ContainerEntity	69	Everyone	2
299	org.exoplatform.portal.jdbc.entity.ContainerEntity	69	Everyone	3
300	org.exoplatform.portal.jdbc.entity.ContainerEntity	69	*:/platform/users	0
301	org.exoplatform.portal.jdbc.entity.ContainerEntity	70	Everyone	2
302	org.exoplatform.portal.jdbc.entity.ContainerEntity	70	Everyone	3
303	org.exoplatform.portal.jdbc.entity.ContainerEntity	70	*:/platform/users	0
304	org.exoplatform.portal.jdbc.entity.WindowEntity	34	*:/platform/users	0
305	org.exoplatform.portal.jdbc.entity.PageEntity	19	*:/platform/users	0
306	org.exoplatform.portal.jdbc.entity.PageEntity	19	manager:/platform/administrators	1
307	org.exoplatform.portal.jdbc.entity.PageEntity	19	Everyone	2
308	org.exoplatform.portal.jdbc.entity.PageEntity	19	Everyone	3
309	org.exoplatform.portal.jdbc.entity.ContainerEntity	71	Everyone	2
310	org.exoplatform.portal.jdbc.entity.ContainerEntity	71	Everyone	3
311	org.exoplatform.portal.jdbc.entity.ContainerEntity	71	*:/platform/users	0
312	org.exoplatform.portal.jdbc.entity.ContainerEntity	72	Everyone	2
313	org.exoplatform.portal.jdbc.entity.ContainerEntity	72	Everyone	3
314	org.exoplatform.portal.jdbc.entity.ContainerEntity	72	*:/platform/users	0
315	org.exoplatform.portal.jdbc.entity.WindowEntity	35	*:/platform/users	0
316	org.exoplatform.portal.jdbc.entity.PageEntity	20	*:/platform/users	0
317	org.exoplatform.portal.jdbc.entity.PageEntity	20	manager:/platform/administrators	1
318	org.exoplatform.portal.jdbc.entity.PageEntity	20	Everyone	2
319	org.exoplatform.portal.jdbc.entity.PageEntity	20	Everyone	3
320	org.exoplatform.portal.jdbc.entity.ContainerEntity	73	Everyone	2
321	org.exoplatform.portal.jdbc.entity.ContainerEntity	73	Everyone	3
322	org.exoplatform.portal.jdbc.entity.ContainerEntity	73	*:/platform/users	0
323	org.exoplatform.portal.jdbc.entity.PageEntity	21	*:/platform/users	0
324	org.exoplatform.portal.jdbc.entity.PageEntity	21	manager:/platform/administrators	1
325	org.exoplatform.portal.jdbc.entity.PageEntity	21	Everyone	2
326	org.exoplatform.portal.jdbc.entity.PageEntity	21	Everyone	3
327	org.exoplatform.portal.jdbc.entity.WindowEntity	36	*:/platform/users	0
328	org.exoplatform.portal.jdbc.entity.PageEntity	22	*:/platform/users	0
329	org.exoplatform.portal.jdbc.entity.PageEntity	22	manager:/platform/administrators	1
330	org.exoplatform.portal.jdbc.entity.PageEntity	22	Everyone	2
331	org.exoplatform.portal.jdbc.entity.PageEntity	22	Everyone	3
332	org.exoplatform.portal.jdbc.entity.WindowEntity	37	*:/platform/users	0
333	org.exoplatform.portal.jdbc.entity.PageEntity	23	*:/platform/users	0
334	org.exoplatform.portal.jdbc.entity.PageEntity	23	manager:/platform/administrators	1
335	org.exoplatform.portal.jdbc.entity.PageEntity	23	Everyone	2
336	org.exoplatform.portal.jdbc.entity.PageEntity	23	Everyone	3
337	org.exoplatform.portal.jdbc.entity.WindowEntity	38	*:/platform/users	0
338	org.exoplatform.portal.jdbc.entity.PageEntity	24	*:/platform/users	0
339	org.exoplatform.portal.jdbc.entity.PageEntity	24	manager:/platform/administrators	1
340	org.exoplatform.portal.jdbc.entity.PageEntity	24	Everyone	2
341	org.exoplatform.portal.jdbc.entity.PageEntity	24	Everyone	3
342	org.exoplatform.portal.jdbc.entity.WindowEntity	39	*:/platform/users	0
343	org.exoplatform.portal.jdbc.entity.PageEntity	25	*:/platform/users	0
344	org.exoplatform.portal.jdbc.entity.PageEntity	25	manager:/platform/administrators	1
345	org.exoplatform.portal.jdbc.entity.PageEntity	25	Everyone	2
346	org.exoplatform.portal.jdbc.entity.PageEntity	25	Everyone	3
347	org.exoplatform.portal.jdbc.entity.ContainerEntity	74	Everyone	2
348	org.exoplatform.portal.jdbc.entity.ContainerEntity	74	Everyone	3
349	org.exoplatform.portal.jdbc.entity.ContainerEntity	74	*:/platform/users	0
350	org.exoplatform.portal.jdbc.entity.ContainerEntity	75	Everyone	2
351	org.exoplatform.portal.jdbc.entity.ContainerEntity	75	Everyone	3
352	org.exoplatform.portal.jdbc.entity.ContainerEntity	75	*:/platform/users	0
353	org.exoplatform.portal.jdbc.entity.WindowEntity	40	*:/platform/users	0
354	org.exoplatform.portal.jdbc.entity.PageEntity	26	*:/platform/users	0
355	org.exoplatform.portal.jdbc.entity.PageEntity	26	manager:/platform/administrators	1
356	org.exoplatform.portal.jdbc.entity.PageEntity	26	Everyone	2
357	org.exoplatform.portal.jdbc.entity.PageEntity	26	Everyone	3
358	org.exoplatform.portal.jdbc.entity.ContainerEntity	76	Everyone	2
359	org.exoplatform.portal.jdbc.entity.ContainerEntity	76	Everyone	3
360	org.exoplatform.portal.jdbc.entity.ContainerEntity	76	*:/platform/users	0
361	org.exoplatform.portal.jdbc.entity.ContainerEntity	77	Everyone	2
362	org.exoplatform.portal.jdbc.entity.ContainerEntity	77	Everyone	3
363	org.exoplatform.portal.jdbc.entity.ContainerEntity	77	*:/platform/users	0
364	org.exoplatform.portal.jdbc.entity.WindowEntity	41	*:/platform/users	0
365	org.exoplatform.portal.jdbc.entity.PageEntity	27	*:/platform/users	0
366	org.exoplatform.portal.jdbc.entity.PageEntity	27	manager:/platform/administrators	1
367	org.exoplatform.portal.jdbc.entity.PageEntity	27	Everyone	2
368	org.exoplatform.portal.jdbc.entity.PageEntity	27	Everyone	3
369	org.exoplatform.portal.jdbc.entity.ContainerEntity	78	Everyone	2
370	org.exoplatform.portal.jdbc.entity.ContainerEntity	78	Everyone	3
371	org.exoplatform.portal.jdbc.entity.ContainerEntity	78	*:/platform/users	0
372	org.exoplatform.portal.jdbc.entity.WindowEntity	42	*:/platform/users	0
373	org.exoplatform.portal.jdbc.entity.PageEntity	28	*:/platform/users	0
374	org.exoplatform.portal.jdbc.entity.PageEntity	28	*:/platform/administrators	1
375	org.exoplatform.portal.jdbc.entity.PageEntity	28	Everyone	2
376	org.exoplatform.portal.jdbc.entity.PageEntity	28	Everyone	3
377	org.exoplatform.portal.jdbc.entity.ContainerEntity	79	Everyone	2
378	org.exoplatform.portal.jdbc.entity.ContainerEntity	79	Everyone	3
379	org.exoplatform.portal.jdbc.entity.ContainerEntity	79	*:/platform/users	0
380	org.exoplatform.portal.jdbc.entity.ContainerEntity	80	Everyone	2
381	org.exoplatform.portal.jdbc.entity.ContainerEntity	80	Everyone	3
382	org.exoplatform.portal.jdbc.entity.ContainerEntity	80	*:/platform/users	0
383	org.exoplatform.portal.jdbc.entity.WindowEntity	43	*:/platform/users	0
384	org.exoplatform.portal.jdbc.entity.PageEntity	29	*:/platform/users	0
385	org.exoplatform.portal.jdbc.entity.PageEntity	29	*:/platform/administrators	1
386	org.exoplatform.portal.jdbc.entity.PageEntity	29	Everyone	2
387	org.exoplatform.portal.jdbc.entity.PageEntity	29	Everyone	3
388	org.exoplatform.portal.jdbc.entity.ContainerEntity	81	Everyone	2
389	org.exoplatform.portal.jdbc.entity.ContainerEntity	81	Everyone	3
390	org.exoplatform.portal.jdbc.entity.ContainerEntity	81	*:/platform/users	0
391	org.exoplatform.portal.jdbc.entity.WindowEntity	44	Everyone	0
392	org.exoplatform.portal.jdbc.entity.PageEntity	30	*:/platform/users	0
393	org.exoplatform.portal.jdbc.entity.PageEntity	30	*:/platform/administrators	1
394	org.exoplatform.portal.jdbc.entity.PageEntity	30	Everyone	2
395	org.exoplatform.portal.jdbc.entity.PageEntity	30	Everyone	3
396	org.exoplatform.portal.jdbc.entity.ContainerEntity	82	Everyone	2
397	org.exoplatform.portal.jdbc.entity.ContainerEntity	82	Everyone	3
398	org.exoplatform.portal.jdbc.entity.ContainerEntity	82	*:/platform/users	0
399	org.exoplatform.portal.jdbc.entity.WindowEntity	45	Everyone	0
400	org.exoplatform.portal.jdbc.entity.WindowEntity	46	manager:/platform/administrators	0
401	org.exoplatform.portal.jdbc.entity.WindowEntity	47	*:/platform/administrators	0
402	org.exoplatform.portal.jdbc.entity.WindowEntity	48	*:/platform/administrators	0
403	org.exoplatform.portal.jdbc.entity.WindowEntity	49	manager:/platform/administrators	0
404	org.exoplatform.portal.jdbc.entity.WindowEntity	50	*:/platform/administrators	0
405	org.exoplatform.portal.jdbc.entity.WindowEntity	51	manager:/platform/administrators	0
406	org.exoplatform.portal.jdbc.entity.WindowEntity	52	manager:/platform/administrators	0
407	org.exoplatform.portal.jdbc.entity.WindowEntity	53	*:/platform/administrators	0
408	org.exoplatform.portal.jdbc.entity.PageEntity	31	*:/platform/administrators	0
409	org.exoplatform.portal.jdbc.entity.PageEntity	31	*:/platform/administrators	1
410	org.exoplatform.portal.jdbc.entity.PageEntity	31	Everyone	2
411	org.exoplatform.portal.jdbc.entity.PageEntity	31	Everyone	3
412	org.exoplatform.portal.jdbc.entity.WindowEntity	54	*:/platform/users	0
413	org.exoplatform.portal.jdbc.entity.PageEntity	32	*:/platform/web-contributors	0
414	org.exoplatform.portal.jdbc.entity.PageEntity	32	manager:/platform/web-contributors	1
415	org.exoplatform.portal.jdbc.entity.PageEntity	32	Everyone	2
416	org.exoplatform.portal.jdbc.entity.PageEntity	32	Everyone	3
417	org.exoplatform.portal.jdbc.entity.WindowEntity	55	*:/platform/web-contributors	0
418	org.exoplatform.portal.jdbc.entity.WindowEntity	56	*:/platform/web-contributors	0
419	org.exoplatform.portal.jdbc.entity.PageEntity	33	*:/platform/web-contributors	0
420	org.exoplatform.portal.jdbc.entity.PageEntity	33	manager:/platform/web-contributors	1
421	org.exoplatform.portal.jdbc.entity.PageEntity	33	Everyone	2
422	org.exoplatform.portal.jdbc.entity.PageEntity	33	Everyone	3
423	org.exoplatform.portal.jdbc.entity.WindowEntity	57	*:/platform/web-contributors	0
424	org.exoplatform.portal.jdbc.entity.PageEntity	34	manager:/platform/web-contributors	0
425	org.exoplatform.portal.jdbc.entity.PageEntity	34	manager:/platform/web-contributors	1
426	org.exoplatform.portal.jdbc.entity.PageEntity	34	Everyone	2
427	org.exoplatform.portal.jdbc.entity.PageEntity	34	Everyone	3
428	org.exoplatform.portal.jdbc.entity.WindowEntity	58	*:/platform/web-contributors	0
429	org.exoplatform.portal.jdbc.entity.PageEntity	35	*:/platform/users	0
430	org.exoplatform.portal.jdbc.entity.PageEntity	35	*:/platform/administrators	1
431	org.exoplatform.portal.jdbc.entity.PageEntity	35	Everyone	2
432	org.exoplatform.portal.jdbc.entity.PageEntity	35	Everyone	3
433	org.exoplatform.portal.jdbc.entity.WindowEntity	59	Everyone	0
434	org.exoplatform.portal.jdbc.entity.PageEntity	36	*:/platform/users	0
435	org.exoplatform.portal.jdbc.entity.PageEntity	36	*:/platform/administrators	1
436	org.exoplatform.portal.jdbc.entity.PageEntity	36	Everyone	2
437	org.exoplatform.portal.jdbc.entity.PageEntity	36	Everyone	3
438	org.exoplatform.portal.jdbc.entity.WindowEntity	60	Everyone	0
439	org.exoplatform.portal.jdbc.entity.PageEntity	37	*:/platform/users	0
440	org.exoplatform.portal.jdbc.entity.PageEntity	37	*:/platform/administrators	1
441	org.exoplatform.portal.jdbc.entity.PageEntity	37	Everyone	2
442	org.exoplatform.portal.jdbc.entity.PageEntity	37	Everyone	3
443	org.exoplatform.portal.jdbc.entity.ContainerEntity	83	Everyone	2
444	org.exoplatform.portal.jdbc.entity.ContainerEntity	83	Everyone	3
445	org.exoplatform.portal.jdbc.entity.ContainerEntity	83	*:/platform/users	0
446	org.exoplatform.portal.jdbc.entity.WindowEntity	61	*:/platform/users	0
447	org.exoplatform.portal.jdbc.entity.ContainerEntity	84	Everyone	2
448	org.exoplatform.portal.jdbc.entity.ContainerEntity	84	Everyone	3
449	org.exoplatform.portal.jdbc.entity.ContainerEntity	84	*:/platform/users	0
450	org.exoplatform.portal.jdbc.entity.ContainerEntity	85	Everyone	2
451	org.exoplatform.portal.jdbc.entity.ContainerEntity	85	Everyone	3
452	org.exoplatform.portal.jdbc.entity.ContainerEntity	85	*:/platform/users	0
453	org.exoplatform.portal.jdbc.entity.ContainerEntity	86	Everyone	2
454	org.exoplatform.portal.jdbc.entity.ContainerEntity	86	Everyone	3
455	org.exoplatform.portal.jdbc.entity.ContainerEntity	86	*:/platform/users	0
456	org.exoplatform.portal.jdbc.entity.WindowEntity	62	*:/platform/users	0
457	org.exoplatform.portal.jdbc.entity.ContainerEntity	87	Everyone	2
458	org.exoplatform.portal.jdbc.entity.ContainerEntity	87	Everyone	3
459	org.exoplatform.portal.jdbc.entity.ContainerEntity	87	*:/platform/users	0
460	org.exoplatform.portal.jdbc.entity.PageEntity	38	manager:/platform/administrators	0
461	org.exoplatform.portal.jdbc.entity.PageEntity	38	manager:/platform/administrators	1
462	org.exoplatform.portal.jdbc.entity.PageEntity	38	Everyone	2
463	org.exoplatform.portal.jdbc.entity.PageEntity	38	Everyone	3
464	org.exoplatform.portal.jdbc.entity.WindowEntity	63	*:/platform/administrators	0
465	org.exoplatform.portal.jdbc.entity.PageEntity	39	manager:/platform/administrators	0
466	org.exoplatform.portal.jdbc.entity.PageEntity	39	manager:/platform/administrators	1
467	org.exoplatform.portal.jdbc.entity.PageEntity	39	Everyone	2
468	org.exoplatform.portal.jdbc.entity.PageEntity	39	Everyone	3
469	org.exoplatform.portal.jdbc.entity.WindowEntity	64	*:/platform/administrators	0
470	org.exoplatform.portal.jdbc.entity.PageEntity	40	manager:/platform/administrators	0
471	org.exoplatform.portal.jdbc.entity.PageEntity	40	manager:/platform/administrators	1
472	org.exoplatform.portal.jdbc.entity.PageEntity	40	Everyone	2
473	org.exoplatform.portal.jdbc.entity.PageEntity	40	Everyone	3
474	org.exoplatform.portal.jdbc.entity.WindowEntity	65	*:/platform/administrators	0
475	org.exoplatform.portal.jdbc.entity.PageEntity	41	manager:/platform/administrators	0
476	org.exoplatform.portal.jdbc.entity.PageEntity	41	manager:/platform/administrators	1
477	org.exoplatform.portal.jdbc.entity.PageEntity	41	Everyone	2
478	org.exoplatform.portal.jdbc.entity.PageEntity	41	Everyone	3
479	org.exoplatform.portal.jdbc.entity.WindowEntity	66	manager:/platform/administrators	0
480	org.exoplatform.portal.jdbc.entity.PageEntity	42	manager:/platform/administrators	0
481	org.exoplatform.portal.jdbc.entity.PageEntity	42	manager:/platform/administrators	1
482	org.exoplatform.portal.jdbc.entity.PageEntity	42	Everyone	2
483	org.exoplatform.portal.jdbc.entity.PageEntity	42	Everyone	3
484	org.exoplatform.portal.jdbc.entity.WindowEntity	67	Everyone	0
485	org.exoplatform.portal.jdbc.entity.PageEntity	43	manager:/platform/administrators	0
486	org.exoplatform.portal.jdbc.entity.PageEntity	43	manager:/platform/administrators	1
487	org.exoplatform.portal.jdbc.entity.PageEntity	43	Everyone	2
488	org.exoplatform.portal.jdbc.entity.PageEntity	43	Everyone	3
489	org.exoplatform.portal.jdbc.entity.WindowEntity	68	Everyone	0
490	org.exoplatform.portal.jdbc.entity.PageEntity	44	manager:/platform/rewarding	0
491	org.exoplatform.portal.jdbc.entity.PageEntity	44	manager:/platform/rewarding	1
492	org.exoplatform.portal.jdbc.entity.PageEntity	44	Everyone	2
493	org.exoplatform.portal.jdbc.entity.PageEntity	44	Everyone	3
494	org.exoplatform.portal.jdbc.entity.WindowEntity	69	manager:/platform/rewarding	0
495	org.exoplatform.portal.jdbc.entity.PageEntity	45	*:/platform/users	0
496	org.exoplatform.portal.jdbc.entity.PageEntity	45	*:/platform/administrators	1
497	org.exoplatform.portal.jdbc.entity.PageEntity	45	Everyone	2
498	org.exoplatform.portal.jdbc.entity.PageEntity	45	Everyone	3
499	org.exoplatform.portal.jdbc.entity.ContainerEntity	88	Everyone	2
500	org.exoplatform.portal.jdbc.entity.ContainerEntity	88	Everyone	3
501	org.exoplatform.portal.jdbc.entity.ContainerEntity	88	*:/platform/users	0
502	org.exoplatform.portal.jdbc.entity.ContainerEntity	89	Everyone	2
503	org.exoplatform.portal.jdbc.entity.ContainerEntity	89	Everyone	3
504	org.exoplatform.portal.jdbc.entity.ContainerEntity	89	*:/platform/users	0
505	org.exoplatform.portal.jdbc.entity.ContainerEntity	90	Everyone	2
506	org.exoplatform.portal.jdbc.entity.ContainerEntity	90	Everyone	3
507	org.exoplatform.portal.jdbc.entity.ContainerEntity	90	*:/platform/users	0
508	org.exoplatform.portal.jdbc.entity.WindowEntity	70	*:/platform/users	0
509	org.exoplatform.portal.jdbc.entity.ContainerEntity	91	Everyone	2
510	org.exoplatform.portal.jdbc.entity.ContainerEntity	91	Everyone	3
511	org.exoplatform.portal.jdbc.entity.ContainerEntity	91	*:/platform/users	0
512	org.exoplatform.portal.jdbc.entity.PageEntity	46	*:/platform/users	0
513	org.exoplatform.portal.jdbc.entity.PageEntity	46	*:/platform/administrators	1
514	org.exoplatform.portal.jdbc.entity.PageEntity	46	Everyone	2
515	org.exoplatform.portal.jdbc.entity.PageEntity	46	Everyone	3
516	org.exoplatform.portal.jdbc.entity.ContainerEntity	92	Everyone	2
517	org.exoplatform.portal.jdbc.entity.ContainerEntity	92	Everyone	3
518	org.exoplatform.portal.jdbc.entity.ContainerEntity	92	*:/platform/users	0
519	org.exoplatform.portal.jdbc.entity.WindowEntity	71	*:/platform/users	0
520	org.exoplatform.portal.jdbc.entity.ContainerEntity	93	Everyone	2
521	org.exoplatform.portal.jdbc.entity.ContainerEntity	93	Everyone	3
522	org.exoplatform.portal.jdbc.entity.ContainerEntity	93	*:/platform/users	0
523	org.exoplatform.portal.jdbc.entity.ContainerEntity	94	Everyone	2
524	org.exoplatform.portal.jdbc.entity.ContainerEntity	94	Everyone	3
525	org.exoplatform.portal.jdbc.entity.ContainerEntity	94	*:/platform/users	0
526	org.exoplatform.portal.jdbc.entity.ContainerEntity	95	Everyone	2
527	org.exoplatform.portal.jdbc.entity.ContainerEntity	95	Everyone	3
528	org.exoplatform.portal.jdbc.entity.ContainerEntity	95	*:/platform/users	0
529	org.exoplatform.portal.jdbc.entity.WindowEntity	72	*:/platform/users	0
530	org.exoplatform.portal.jdbc.entity.ContainerEntity	96	Everyone	2
531	org.exoplatform.portal.jdbc.entity.ContainerEntity	96	Everyone	3
532	org.exoplatform.portal.jdbc.entity.ContainerEntity	96	*:/platform/users	0
533	org.exoplatform.portal.jdbc.entity.PageEntity	47	*:/platform/rewarding	0
534	org.exoplatform.portal.jdbc.entity.PageEntity	47	manager:/platform/rewarding	1
535	org.exoplatform.portal.jdbc.entity.PageEntity	47	Everyone	2
536	org.exoplatform.portal.jdbc.entity.PageEntity	47	Everyone	3
537	org.exoplatform.portal.jdbc.entity.WindowEntity	73	*:/platform/rewarding	0
538	org.exoplatform.portal.jdbc.entity.PageEntity	48	*:/platform/rewarding	0
539	org.exoplatform.portal.jdbc.entity.PageEntity	48	manager:/platform/rewarding	1
540	org.exoplatform.portal.jdbc.entity.PageEntity	48	Everyone	2
541	org.exoplatform.portal.jdbc.entity.PageEntity	48	Everyone	3
542	org.exoplatform.portal.jdbc.entity.WindowEntity	74	*:/platform/rewarding	0
543	org.exoplatform.portal.jdbc.entity.PageEntity	49	manager:/platform/administrators	0
544	org.exoplatform.portal.jdbc.entity.PageEntity	49	manager:/platform/administrators	1
545	org.exoplatform.portal.jdbc.entity.PageEntity	49	Everyone	2
546	org.exoplatform.portal.jdbc.entity.PageEntity	49	Everyone	3
547	org.exoplatform.portal.jdbc.entity.WindowEntity	75	*:/platform/administrators	0
548	org.exoplatform.portal.jdbc.entity.ContainerEntity	97	Everyone	2
549	org.exoplatform.portal.jdbc.entity.ContainerEntity	97	Everyone	3
550	org.exoplatform.portal.jdbc.entity.ContainerEntity	97	Everyone	0
551	org.exoplatform.portal.jdbc.entity.SiteEntity	9	*:/platform	0
552	org.exoplatform.portal.jdbc.entity.SiteEntity	9	manager:/platform	1
\.


--
-- Data for Name: portal_tokens; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_tokens (id, token_id, token_hash, username, password, expiration_time) FROM stdin;
\.


--
-- Data for Name: portal_windows; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.portal_windows (id, title, icon, description, show_info_bar, show_app_state, show_app_mode, theme, width, height, properties, app_type, content_id, customization) FROM stdin;
9	SiteMap	\N	\N	f	t	t	\N	\N	\N	{}	0	web/SiteMapPortlet	\N
10	Slider	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceSlider	\N
11	News	\N	\N	f	t	t	\N	\N	\N	{}	0	presentation/ContentListViewerByQueryPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000674000a666f6c64657250617468737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a657870000000017704000000017400227265706f7369746f72793a636f6c6c61626f726174696f6e3a2f73697465732f64777871007e0011740014666f726d5669657754656d706c617465506174687371007e00080071007e00137371007e000c7371007e0010000000017704000000017400422f65786f3a65636d2f76696577732f74656d706c617465732f636f6e74656e742d6c6973742d7669657765722f6c6973742f4c61746573744e6577732e67746d706c7871007e001674000b73686172656443616368657371007e00080071007e00187371007e000c7371007e00100000000177040000000174000566616c73657871007e001b74000862617365506174687371007e00080071007e001d7371007e000c7371007e00100000000177040000000174000a6e65777344657461696c7871007e002074000571756572797371007e00080071007e00227371007e000c7371007e00100000000177040000000174006953454c454354202a2046524f4d2065786f3a73796d6c696e6b205748455245206a63723a70617468204c494b4520272f4170706c69636174696f6e20446174612f4e6577732f50696e6e65642f2527204f52444552204259206a63723a6372656174656420444553437871007e00257400066865616465727371007e00080071007e00277371007e000c7371007e0010000000017704000000017400104c6174657374204e65777320506f73747871007e002a7871007e0006
12	Profile stats	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceProfileStats	\N
13	Perkstore	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplacePerkstore	\N
14	Wallet	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceWallet	\N
15	Events	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceEvents	\N
16	Tasks	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceTasks	\N
17	Recent documents	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceRecentDocuments	\N
18	Shared with me documents	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceSharedDocuments	\N
19	Favorite documents	\N	\N	f	t	t	\N	\N	\N	{}	0	digital-workplace/digitalWorkplaceFavoriteDocuments	\N
20	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
21	Profile	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/BasicProfilePortlet	\N
22	Experience Profile Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/ExperienceProfilePortlet	\N
23	Recent Activities Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/RecentActivitiesPortlet	\N
24	Connections User Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/MiniConnectionsPortlet	\N
25	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
26	Wallet	\N	\N	f	t	t	\N	\N	\N	{}	0	wallet/Wallet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174001177616c6c65744170704d6178696d697a65737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001740004747275657871007e00117871007e0006
27	Perk store	\N	\N	f	t	t	\N	\N	\N	{}	0	perk-store/PerkStore	\N
28	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
29	Wallet	\N	\N	f	t	t	\N	\N	\N	{}	0	gamification-portlets/GamificationInformationsboard	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174001767616d696669636174696f6e4170704d6178696d697a65737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001740004747275657871007e00117871007e0006
30	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
31	Notifications Settings	\N	\N	f	t	t	\N	\N	\N	{}	0	social-juzu/NotificationSettingsPortlet	\N
32	All Spaces	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/AllSpacesPortlet	\N
33	My Spaces	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/MySpacesPortlet	\N
34	Invitation Spaces Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/InvitationSpacesPortlet	\N
35	Pending Spaces	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/PendingSpacesPortlet	\N
36	People Directory	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/AllPeoplePortlet	\N
37	My Connections	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/ConnectionsPortlet	\N
38	Invitations	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/InvitationsPortlet	\N
39	Requests	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/RequestsPortlet	\N
40	User Activity Stream	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UserActivityStreamPortlet	\N
41	All Notifications	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/IntranetNotificationsPortlet	\N
42	App Center User Setup	\N	\N	f	t	t	\N	\N	\N	{}	0	app-center/AppCenterUserSetupPortlet	\N
43	News	\N	\N	f	t	t	\N	\N	\N	{}	0	news/News	\N
44	News Composer	\N	\N	f	f	f	\N	\N	\N	{}	0	news/NewsComposer	\N
45	News Detail	\N	\N	f	f	f	\N	\N	\N	{}	0	presentation/SingleContentViewer	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000974000f53686f775072696e74416374696f6e737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000177040000000174000566616c73657871007e0011740009776f726b73706163657371007e00080071007e00137371007e000c7371007e00100000000177040000000174000d636f6c6c61626f726174696f6e7871007e001674000b73686172656443616368657371007e00080071007e00187371007e000c7371007e00100000000177040000000174000566616c73657871007e001b74000953686f775469746c657371007e00080071007e001d7371007e000c7371007e00100000000177040000000174000566616c73657871007e002074000d53686f774f7074696f6e4261727371007e00080071007e00227371007e000c7371007e00100000000177040000000174000566616c73657871007e002574000d436f6e74657874456e61626c657371007e00080071007e00277371007e000c7371007e001000000001770400000001740004747275657871007e002a74000d506172616d657465724e616d657371007e00080071007e002c7371007e000c7371007e00100000000177040000000174000a636f6e74656e742d69647871007e002f74000853686f77446174657371007e00080071007e00317371007e000c7371007e00100000000177040000000174000566616c73657871007e003474000e6e6f64654964656e7469666965727371007e00080071007e00367371007e000c7371007e00100000000177040000000174002d2f73697465732f64772f77656220636f6e74656e74732f73697465206172746966616374732f57656c636f6d657871007e00397871007e0006
46	Application Registry	\N	\N	f	t	t	\N	\N	\N	{}	0	exoadmin/ApplicationRegistryPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174000a73686f77496d706f7274737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000177040000000174000566616c73657871007e00117871007e0006
47	New Staff	\N	\N	f	f	t	\N	\N	\N	{}	0	exoadmin/AccountPortlet	\N
48	Organization Management	\N	\N	f	t	t	\N	\N	\N	{}	0	exoadmin/OrganizationPortlet	\N
49	Branding Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	exoadmin/Branding	\N
50	\N	\N	\N	f	t	t	\N	\N	\N	{}	0	social-vue-portlet/SpaceTemplates	\N
51	Search Administration	\N	\N	f	t	t	\N	\N	\N	{}	0	unified-search/SearchAdministrationPortlet	\N
52	Notifications Administration	\N	\N	f	f	f	\N	\N	\N	{}	0	commons-extension/NotificationsAdminJuzuPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000000770800000010000000007871007e0006
53	\N	\N	\N	f	t	t	\N	\N	\N	{}	0	commons-extension/SearchIndexingManagement	\N
54	\N	\N	\N	f	t	t	\N	\N	\N	{}	0	social-vue-portlet/SpacesAdministration	\N
55	Site Explorer	\N	\N	f	f	f	\N	\N	\N	{}	0	ecmexplorer/FileExplorerPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174000964726976654e616d65737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000177040000000174000d4d616e616765642053697465737871007e00117871007e0006
56	Authoring Dashboard	\N	\N	f	f	f	\N	\N	\N	{}	0	authoring-apps/AuthoringDashboard	\N
57	Editor	\N	\N	f	f	f	\N	\N	\N	{}	0	ecmexplorer/FileExplorerPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000674000a73686f77546f70426172737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001740004747275657871007e0011740007757365636173657371007e00080071007e00137371007e000c7371007e00100000000177040000000174000973656c656374696f6e7871007e001674000b73686f77536964654261727371007e00080071007e00187371007e000c7371007e00100000000177040000000174000566616c73657871007e001b74000d73686f77416374696f6e4261727371007e00080071007e001d7371007e000c7371007e001000000001770400000001740004747275657871007e002074000964726976654e616d657371007e00080071007e00227371007e000c7371007e00100000000177040000000174000d436f6c6c61626f726174696f6e7871007e002574000f65646974496e4e657757696e646f777371007e00080071007e00277371007e000c7371007e00100000000177040000000174000566616c73657871007e002a7871007e0006
58	WCM Administration	\N	\N	f	f	f	\N	\N	\N	{}	0	ecmadmin/ECMAdminPortlet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000000770800000010000000007871007e0006
59	\N	\N	\N	f	t	t	\N	\N	\N	{}	0	task-management/TaskManagementApplication	\N
60	Detail	\N	\N	f	f	f	\N	\N	\N	{}	0	gamification-portlets/GamificationEarnpointsboard	\N
61	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
62	Wallet	\N	\N	f	t	t	\N	\N	\N	{}	0	gamification-portlets/GamificationInformationsboard	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174001767616d696669636174696f6e4170704d6178696d697a65737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001740004747275657871007e00117871007e0006
63	Gamification Manage Rules	\N	\N	f	t	t	\N	\N	\N	{}	0	gamification-portlets/GamificationManageRules	\N
64	Gamification Manage Badges	\N	\N	f	t	t	\N	\N	\N	{}	0	gamification-portlets/GamificationManageBadges	\N
65	Gamification Manage Domains	\N	\N	f	t	t	\N	\N	\N	{}	0	gamification-portlets/GamificationManageDomains	\N
66	Page Management	\N	\N	f	t	t	\N	\N	\N	{}	0	layout-management/PageManagementPortlet	\N
67	Portal Navigation	\N	\N	f	f	f	\N	\N	\N	{}	0	layout-management/PortalNavigationPortlet	\N
68	Group Navigation	\N	\N	f	t	t	\N	\N	\N	{}	0	layout-management/GroupNavigationPortlet	\N
69	Kudos administration	\N	\N	f	t	t	\N	\N	\N	{}	0	kudos/KudosAdmin	\N
70	Perk store	\N	\N	f	t	t	\N	\N	\N	{}	0	perk-store/PerkStore	\N
71	User Navigation Portlet	\N	\N	f	t	t	\N	\N	\N	{}	0	social-portlet/UIUserNavigationPortlet	\N
72	Wallet	\N	\N	f	t	t	\N	\N	\N	{}	0	wallet/Wallet	\\xaced00057372002e6f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e506f72746c6574c08d96e4b5dcb1280200024c0007656e747269657374000f4c6a6176612f7574696c2f4d61703b4c0005737461746571007e00017870737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00017870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174001177616c6c65744170704d6178696d697a65737200316f72672e65786f706c6174666f726d2e706f7274616c2e706f6d2e7370692e706f72746c65742e507265666572656e6365393df6d24ea95b950200035a0008726561644f6e6c794c00046e616d657400124c6a6176612f6c616e672f537472696e673b4c000676616c7565737400104c6a6176612f7574696c2f4c6973743b78700071007e0007737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c69737471007e000a7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001740004747275657871007e00117871007e0006
73	Wallet adminsitration	\N	\N	f	t	t	\N	\N	\N	{}	0	wallet-admin/WalletAdmin	\N
74	Reward administration	\N	\N	f	t	t	\N	\N	\N	{}	0	wallet-reward/RewardAdmin	\N
75	Web Conferencing Administration	\N	\N	f	t	t	\N	\N	\N	{}	0	webconferencing/WebConferencingAdminPortlet	\N
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
ExoScheduler	FileStorageCleanJob	portal:FileStorage	\N	org.exoplatform.commons.file.services.job.FileStorageCleanJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000274000e726574656e74696f6e2d74696d657400023330740007656e61626c6564740004747275657800
ExoScheduler	ExpiredMessagingTokensCleaner	portal:Messaging	\N	org.exoplatform.push.job.ExpiredTokensCleanerJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	ESBulkIndexer	portal:ElasticSearch	\N	org.exoplatform.commons.search.job.BulkIndexingJob	f	t	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	NotificationDailyJob	portal:Notification	\N	org.exoplatform.commons.notification.job.NotificationDailyJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	NotificationWeeklyJob	portal:Notification	\N	org.exoplatform.commons.notification.job.NotificationWeeklyJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	SendEmailNotificationJob	portal:Notification	\N	org.exoplatform.commons.notification.job.SendEmailNotificationJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	WebNotificationJob	portal:Notification	\N	org.exoplatform.commons.notification.job.WebNotificationJob	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000017400086c6976654461797374000233307800
ExoScheduler	changeStateJobToPublished	portal:group	\N	org.exoplatform.services.wcm.extensions.scheduler.impl.ChangeStateCronJobImpl	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000374000966726f6d5374617465740006737461676564740007746f53746174657400097075626c697368656474000e707265646566696e656450617468740014636f6c6c61626f726174696f6e3a2f73697465737800
ExoScheduler	changeStateJobToUnpublished	portal:group	\N	org.exoplatform.services.wcm.extensions.scheduler.impl.ChangeStateCronJobImpl	f	f	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000374000966726f6d53746174657400097075626c6973686564740007746f537461746574000b756e7075626c697368656474000e707265646566696e656450617468740014636f6c6c61626f726174696f6e3a2f73697465737800
ExoScheduler	ReminderJob	portal:CollaborationSuite	\N	org.exoplatform.calendar.service.ReminderJob	f	t	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	PopupReminderJob	portal:CollaborationSuite	\N	org.exoplatform.calendar.service.PopupReminderJob	f	t	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c7708000000100000000174000a706f7274616c4e616d65740006706f7274616c7800
ExoScheduler	RewardStatusVerifierJob	portal:Wallet	\N	org.exoplatform.wallet.reward.job.RewardStatusVerifierJob	f	t	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
ExoScheduler	RewardCurrentPeriodStatusUpdaterJob	portal:Wallet	\N	org.exoplatform.wallet.reward.job.RewardCurrentPeriodStatusUpdaterJob	f	t	f	t	\\xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787000737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f40000000000010770800000010000000007800
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
ExoScheduler	FileStorageCleanJob	portal:FileStorage	FileStorageCleanJob	portal:FileStorage	\N	1581850800000	-1	5	WAITING	CRON	1581695765000	0	\N	0	\\x
ExoScheduler	ExpiredMessagingTokensCleaner	portal:Messaging	ExpiredMessagingTokensCleaner	portal:Messaging	\N	1581695826071	-1	5	WAITING	SIMPLE	1581695826071	0	\N	0	\\x
ExoScheduler	ESBulkIndexer	portal:ElasticSearch	ESBulkIndexer	portal:ElasticSearch	\N	1581695826090	-1	5	WAITING	SIMPLE	1581695826090	0	\N	0	\\x
ExoScheduler	NotificationDailyJob	portal:Notification	NotificationDailyJob	portal:Notification	\N	1581721200000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	NotificationWeeklyJob	portal:Notification	NotificationWeeklyJob	portal:Notification	\N	1581850800000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	SendEmailNotificationJob	portal:Notification	SendEmailNotificationJob	portal:Notification	\N	1581695820000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	WebNotificationJob	portal:Notification	WebNotificationJob	portal:Notification	\N	1581721200000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	changeStateJobToPublished	portal:group	changeStateJobToPublished	portal:group	\N	1581695775000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	changeStateJobToUnpublished	portal:group	changeStateJobToUnpublished	portal:group	\N	1581695805000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	ReminderJob	portal:CollaborationSuite	ReminderJob	portal:CollaborationSuite	\N	1581695826323	-1	5	WAITING	SIMPLE	1581695826323	0	\N	0	\\x
ExoScheduler	PopupReminderJob	portal:CollaborationSuite	PopupReminderJob	portal:CollaborationSuite	\N	1581695826343	-1	5	WAITING	SIMPLE	1581695826343	0	\N	0	\\x
ExoScheduler	RewardStatusVerifierJob	portal:Wallet	RewardStatusVerifierJob	portal:Wallet	\N	1581695820000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
ExoScheduler	RewardCurrentPeriodStatusUpdaterJob	portal:Wallet	RewardCurrentPeriodStatusUpdaterJob	portal:Wallet	\N	1581696000000	-1	5	WAITING	CRON	1581695766000	0	\N	0	\\x
\.


--
-- Data for Name: qrtz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
ExoScheduler	FileStorageCleanJob	portal:FileStorage	0 0 11 ? * SUN	Etc/UTC
ExoScheduler	NotificationDailyJob	portal:Notification	0 0 23 ? * *	Etc/UTC
ExoScheduler	NotificationWeeklyJob	portal:Notification	0 0 11 ? * SUN	Etc/UTC
ExoScheduler	SendEmailNotificationJob	portal:Notification	0 0/1 * * * ?	Etc/UTC
ExoScheduler	WebNotificationJob	portal:Notification	0 0 23 ? * *	Etc/UTC
ExoScheduler	changeStateJobToPublished	portal:group	15 */2 * * * ?	Etc/UTC
ExoScheduler	changeStateJobToUnpublished	portal:group	45 */2 * * * ?	Etc/UTC
ExoScheduler	RewardStatusVerifierJob	portal:Wallet	0 * * * * ?	Etc/UTC
ExoScheduler	RewardCurrentPeriodStatusUpdaterJob	portal:Wallet	0 0/15 * ? * * *	Etc/UTC
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_nonconcurrent, requests_recovery) FROM stdin;
\.


--
-- Data for Name: qrtz_locks; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_locks (sched_name, lock_name) FROM stdin;
\.


--
-- Data for Name: qrtz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: qrtz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
ExoScheduler	ExpiredMessagingTokensCleaner	portal:Messaging	-1	86400000	0
ExoScheduler	ESBulkIndexer	portal:ElasticSearch	-1	5000	0
ExoScheduler	ReminderJob	portal:CollaborationSuite	-1	15000	0
ExoScheduler	PopupReminderJob	portal:CollaborationSuite	-1	15000	0
\.


--
-- Data for Name: qrtz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.qrtz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: soc_activities; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_activities (activity_id, app_id, body, external_id, provider_id, hidden, updated_date, locked, owner_id, permalink, posted, poster_id, title, title_id, type, is_comment, parent_id) FROM stdin;
\.


--
-- Data for Name: soc_activity_likers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_activity_likers (activity_id, liker_id, created_date) FROM stdin;
\.


--
-- Data for Name: soc_activity_template_params; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_activity_template_params (activity_id, template_param_value, template_param_key) FROM stdin;
\.


--
-- Data for Name: soc_spaces; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_spaces (space_id, pretty_name, display_name, registration, description, avatar_last_updated, visibility, priority, group_id, url, created_date, template, banner_last_updated) FROM stdin;
\.


--
-- Data for Name: soc_apps; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_apps (space_id, app_id, app_name, removable, status) FROM stdin;
\.


--
-- Data for Name: soc_identities; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_identities (identity_id, provider_id, remote_id, enabled, deleted, avatar_file_id, created_date, banner_file_id) FROM stdin;
1	WALLET_ADMIN	admin	t	f	\N	2020-02-14 15:57:07.297	\N
\.


--
-- Data for Name: soc_connections; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_connections (connection_id, sender_id, receiver_id, status, updated_date) FROM stdin;
\.


--
-- Data for Name: soc_identity_experiences; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_identity_experiences (identity_id, company, "position", start_date, end_date, skills, description, experience_id) FROM stdin;
\.


--
-- Data for Name: soc_identity_properties; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_identity_properties (identity_id, name, value) FROM stdin;
\.


--
-- Data for Name: soc_mentions; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_mentions (mention_id, activity_id, mentioner_id) FROM stdin;
\.


--
-- Data for Name: soc_spaces_members; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_spaces_members (space_member_id, space_id, user_id, status, last_access, visited) FROM stdin;
\.


--
-- Data for Name: soc_stream_items; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.soc_stream_items (stream_item_id, owner_id, stream_type, activity_id, updated_date) FROM stdin;
\.


--
-- Data for Name: stg_contexts; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stg_contexts (context_id, type, name) FROM stdin;
1	GLOBAL	GLOBAL
\.


--
-- Data for Name: stg_scopes; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stg_scopes (scope_id, type, name) FROM stdin;
1	GLOBAL	\N
2	APPLICATION	ADDONS_ETHEREUM_WALLET
\.


--
-- Data for Name: stg_settings; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stg_settings (setting_id, name, value, context_id, scope_id) FROM stdin;
1	org.exoplatform.portal.mop.importer.Status	1	1	1
2	INITIAL_FUNDS	{"requestMessage":null,"etherAmount":0.004,"tokenAmount":0.0,"fundsHolderType":null,"fundsHolder":null}	1	2
\.


--
-- Data for Name: task_projects; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_projects (project_id, name, description, color, calendar_integrated, due_date, parent_project_id) FROM stdin;
\.


--
-- Data for Name: task_status; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_status (status_id, name, rank, project_id) FROM stdin;
\.


--
-- Data for Name: task_tasks; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_tasks (task_id, title, description, priority, context, assignee, status_id, created_by, created_time, end_date, start_date, due_date, completed, calendar_integrated, rank, activity_id) FROM stdin;
\.


--
-- Data for Name: task_change_logs; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_change_logs (change_log_id, task_id, author, action_name, target, created_time) FROM stdin;
\.


--
-- Data for Name: task_comments; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_comments (comment_id, author, cmt, created_time, task_id, parent_comment_id) FROM stdin;
\.


--
-- Data for Name: task_comment_mentioned_users; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_comment_mentioned_users (comment_id, mentioned_users) FROM stdin;
\.


--
-- Data for Name: task_user_settings; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_user_settings (username, show_hidden_project, show_hidden_label) FROM stdin;
\.


--
-- Data for Name: task_hidden_projects; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_hidden_projects (username, project_id) FROM stdin;
\.


--
-- Data for Name: task_labels; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_labels (label_id, name, username, color, hidden, parent_label_id) FROM stdin;
\.


--
-- Data for Name: task_label_task; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_label_task (label_id, task_id) FROM stdin;
\.


--
-- Data for Name: task_project_managers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_project_managers (project_id, manager) FROM stdin;
\.


--
-- Data for Name: task_project_participators; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_project_participators (project_id, participator) FROM stdin;
\.


--
-- Data for Name: task_task_coworkers; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.task_task_coworkers (task_id, coworker) FROM stdin;
\.


--
-- Data for Name: wbc_calls; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.wbc_calls (id, provider_type, owner_id, owner_type, state, title, settings, last_date, is_group, is_user) FROM stdin;
\.


--
-- Data for Name: wbc_participants; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.wbc_participants (id, call_id, type, state, client_id) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.hibernate_sequence', 9, true);


--
-- Name: jcr_svalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.jcr_svalue_id_seq', 1, false);


--
-- Name: seq_addons_kudos_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_addons_kudos_id', 1, false);


--
-- Name: seq_addons_perkstore_product_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_addons_perkstore_product_id', 1, false);


--
-- Name: seq_addons_perkstore_product_order_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_addons_perkstore_product_order_id', 1, false);


--
-- Name: seq_container_id_generator; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_container_id_generator', 98, true);


--
-- Name: seq_es_indexing_queue_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_es_indexing_queue_id', 126, true);


--
-- Name: seq_files_binary_blob_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_files_binary_blob_id', 1, false);


--
-- Name: seq_files_files_file_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_files_files_file_id', 1, false);


--
-- Name: seq_files_ns_namespace_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_files_ns_namespace_id', 5, true);


--
-- Name: seq_files_orphan_files_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_files_orphan_files_id', 1, false);


--
-- Name: seq_gamification_badge_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gamification_badge_id', 1, false);


--
-- Name: seq_gamification_domain_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gamification_domain_id', 1, false);


--
-- Name: seq_gamification_rule_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gamification_rule_id', 1, false);


--
-- Name: seq_gamification_score_history_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gamification_score_history_id', 1, false);


--
-- Name: seq_gatein_token_id_generator; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gatein_token_id_generator', 1, false);


--
-- Name: seq_gtn_application_cat_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gtn_application_cat_id', 1, false);


--
-- Name: seq_gtn_application_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gtn_application_id', 1, false);


--
-- Name: seq_gtn_navigation_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gtn_navigation_id', 7, true);


--
-- Name: seq_gtn_navigation_node_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_gtn_navigation_node_id', 61, true);


--
-- Name: seq_idm_queue_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_idm_queue_id', 1, false);


--
-- Name: seq_msg_devices_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_msg_devices_id', 1, false);


--
-- Name: seq_ntf_email_digest; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_email_digest', 1, false);


--
-- Name: seq_ntf_email_notif; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_email_notif', 1, false);


--
-- Name: seq_ntf_email_params; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_email_params', 1, false);


--
-- Name: seq_ntf_email_queue; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_email_queue', 1, false);


--
-- Name: seq_ntf_web_notifs; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_web_notifs', 1, false);


--
-- Name: seq_ntf_web_params; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_web_params', 1, false);


--
-- Name: seq_ntf_web_users; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_ntf_web_users', 1, false);


--
-- Name: seq_page_id_generator; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_page_id_generator', 49, true);


--
-- Name: seq_portal_descriptions_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_portal_descriptions_id', 15, true);


--
-- Name: seq_portal_permissions_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_portal_permissions_id', 552, true);


--
-- Name: seq_site_id_generator; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_site_id_generator', 9, true);


--
-- Name: seq_soc_activities_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_activities_id', 1, false);


--
-- Name: seq_soc_connections_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_connections_id', 1, false);


--
-- Name: seq_soc_experience_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_experience_id', 1, false);


--
-- Name: seq_soc_identity_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_identity_id', 1, true);


--
-- Name: seq_soc_mentions_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_mentions_id', 1, false);


--
-- Name: seq_soc_space_member_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_space_member_id', 1, false);


--
-- Name: seq_soc_spaces_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_spaces_id', 1, false);


--
-- Name: seq_soc_stream_items_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_soc_stream_items_id', 1, false);


--
-- Name: seq_stg_context_common_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_stg_context_common_id', 1, true);


--
-- Name: seq_stg_scope_common_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_stg_scope_common_id', 2, true);


--
-- Name: seq_stg_settings_common_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_stg_settings_common_id', 2, true);


--
-- Name: seq_task_change_log_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_change_log_id', 1, false);


--
-- Name: seq_task_comments_comment_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_comments_comment_id', 1, false);


--
-- Name: seq_task_labels_label_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_labels_label_id', 1, false);


--
-- Name: seq_task_projects_project_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_projects_project_id', 1, false);


--
-- Name: seq_task_status_status_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_status_status_id', 1, false);


--
-- Name: seq_task_tasks_task_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_task_tasks_task_id', 1, false);


--
-- Name: seq_wallet_gam_team_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_gam_team_id', 1, false);


--
-- Name: seq_wallet_gam_team_member_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_gam_team_member_id', 1, false);


--
-- Name: seq_wallet_key; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_key', 1, false);


--
-- Name: seq_wallet_label; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_label', 1, false);


--
-- Name: seq_wallet_reward_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_reward_id', 1, false);


--
-- Name: seq_wallet_reward_period_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_reward_period_id', 1, false);


--
-- Name: seq_wallet_reward_plugin_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_reward_plugin_id', 1, false);


--
-- Name: seq_wallet_state; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_state', 1, false);


--
-- Name: seq_wallet_transaction; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_wallet_transaction', 1, false);


--
-- Name: seq_window_id_generator; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_window_id_generator', 75, true);


--
-- PostgreSQL database dump complete
--

