--
-- PostgreSQL database dump
--
-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
SET
  statement_timeout = 0;
SET
  lock_timeout = 0;
SET
  idle_in_transaction_session_timeout = 0;
SET
  client_encoding = 'UTF8';
SET
  standard_conforming_strings = on;
SELECT
  pg_catalog.set_config('search_path', '', false);
SET
  check_function_bodies = false;
SET
  xmloption = content;
SET
  client_min_messages = warning;
SET
  row_security = off;
--
  -- Data for Name: ac_dossier; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.ac_dossier (dos_id, dos_name, dos_description, dos_email)
FROM stdin;
\.--
  -- Data for Name: ac_users; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.ac_users (
    use_id,
    use_first_name,
    use_name,
    use_login,
    use_active,
    use_pass,
    use_admin,
    use_email
  )
FROM stdin;
4 demo demo demo 0 fe01ce2a7fbac8fafaed7c982a04e229 0 \ N 1 \ N \ N admin 1 b1cc88e1907cde80cb2595fa793b3da9 1 \.--
  -- Data for Name: audit_connect; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.audit_connect (
    ac_id,
    ac_user,
    ac_date,
    ac_ip,
    ac_state,
    ac_module,
    ac_url
  )
FROM stdin;
1 admin 2020 -02 -14 14 :53 :20.303312 49.207.85.194 SUCCESS LOGIN / noalyss / html / login.php \.--
  -- Data for Name: dossier_sent_email; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.dossier_sent_email (id, de_date, de_sent_email, dos_id)
FROM stdin;
\.--
  -- Data for Name: jnt_use_dos; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.jnt_use_dos (jnt_id, use_id, dos_id)
FROM stdin;
\.--
  -- Data for Name: modeledef; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.modeledef (mod_id, mod_name, mod_desc)
FROM stdin;
1 (BE) Basique Comptabilité Belge,
  à adapter 2 (FR) Basique Comptabilité Française,
  à adapter \.--
  -- Data for Name: progress; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.progress (p_id, p_value, p_created)
FROM stdin;
\.--
  -- Data for Name: recover_pass; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.recover_pass (
    use_id,
    request,
    password,
    created_on,
    created_host,
    recover_on,
    recover_by
  )
FROM stdin;
\.--
  -- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.theme (the_name, the_filestyle, the_filebutton)
FROM stdin;
Light style - light.css \ N Classique style - classic.css \ N Classic7 style - classic7.css \ N \.--
  -- Data for Name: user_global_pref; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.user_global_pref (user_id, parameter_type, parameter_value)
FROM stdin;
demo PAGESIZE 50 demo LANG fr_FR.utf8 admin PAGESIZE 50 admin TOPMENU TEXT demo THEME Classic7 admin csv_fieldsep 0 admin csv_decimal 0 admin csv_encoding utf8 admin THEME Classic7 admin LANG en_US.utf8 \.--
  -- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.version (val)
FROM stdin;
18 \.--
  -- Name: audit_connect_ac_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.audit_connect_ac_id_seq', 1, true);
--
  -- Name: dossier_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.dossier_id', 24, true);
--
  -- Name: dossier_sent_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.dossier_sent_email_id_seq', 1, false);
--
  -- Name: s_modid; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.s_modid', 8, true);
--
  -- Name: seq_jnt_use_dos; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.seq_jnt_use_dos', 28, true);
--
  -- Name: seq_priv_user; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.seq_priv_user', 12, true);
--
  -- Name: users_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.users_id', 5, true);
--
  -- PostgreSQL database dump complete
  --