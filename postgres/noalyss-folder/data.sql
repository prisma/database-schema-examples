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
-- Data for Name: action; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action (ac_id, ac_description, ac_module, ac_code) FROM stdin;
800	Ajout de fiche	fiche	FICADD
805	Création, modification et effacement de fiche	fiche	FIC
910	création, modification et effacement de catégorie de fiche	fiche	FICCAT
1020	Effacer les documents du suivi	followup	RMDOC
1010	Voir les documents du suivi	followup	VIEWDOC
1050	Modifier le type de document	followup	PARCATDOC
1110	Enlever une pièce justificative	compta	RMRECEIPT
1120	Effacer une opération 	compta	RMOPER
1210	Partager une note	note	SHARENOTE
1220	Créer une note publique	note	SHARENOTEPUBLIC
1230	Effacer une note publique	note	SHARENOTEREMOVE
\.


--
-- Data for Name: document_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.document_type (dt_id, dt_value, dt_prefix) FROM stdin;
1	Document Interne	DOCUME1
2	Bons de commande client	BONSDE2
3	Bon de commande Fournisseur	BONDEC3
4	Facture	FACTUR4
5	Lettre de rappel	LETTRE5
6	Courrier	COURRI6
7	Proposition	PROPOS7
8	Email	EMAIL8
9	Divers	DIVERS9
10	Note de frais	NOTEDE10
20	Réception commande Fournisseur	RÉCEPT20
21	Réception commande Client	RÉCEPT21
22	Réception magazine	RÉCEPT22
\.


--
-- Data for Name: fiche_def_ref; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.fiche_def_ref (frd_id, frd_text, frd_class_base) FROM stdin;
1	Vente Service	700
2	Achat Marchandises	604
3	Achat Service et biens divers	61
5	Prêt > a un an	17
6	Prêt < a un an	430
8	Fournisseurs	440
9	Clients	400
10	Salaire Administrateur	6200
11	Salaire Ouvrier	6203
12	Salaire Employé	6202
13	Dépenses non admises	674
14	Administration des Finances	\N
15	Autres fiches	\N
7	Matériel à amortir	2400
16	Contact	\N
25	Compte Salarié / Administrateur	\N
4	Trésorerie	5500
26	Projet	\N
\.


--
-- Data for Name: fiche_def; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.fiche_def (fd_id, fd_class_base, fd_label, fd_create_account, frd_id, fd_description) FROM stdin;
500000	\N	Stock	f	15	\N
1	604	Marchandises	t	2	Achats de marchandises
2	400	Client	t	9	Catégorie qui contient la liste des clients
3	5500	Banque	t	4	Catégorie qui contient la liste des comptes financiers: banque, caisse,...
4	440	Fournisseur	t	8	Catégorie qui contient la liste des fournisseurs
5	61	Services & Biens Divers	t	3	Catégorie qui contient la liste des charges diverses
6	700	Vente	t	1	Catégorie qui contient la liste des prestations, marchandises... que l'on vend 
\.


--
-- Data for Name: fiche; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.fiche (f_id, fd_id) FROM stdin;
\.


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.profile (p_name, p_id, p_desc, with_calc, with_direct_form) FROM stdin;
Administrateur	1	Profil par défaut pour les adminstrateurs	t	t
Utilisateur	2	Profil par défaut pour les utilisateurs	t	t
Public	-1	faux groupe	\N	\N
\.


--
-- Data for Name: action_gestion; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_gestion (ag_id, ag_type, f_id_dest, ag_title, ag_timestamp, ag_ref, ag_hour, ag_priority, ag_dest, ag_owner, ag_contact, ag_state, ag_remind_date) FROM stdin;
\.


--
-- Data for Name: action_detail; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_detail (ad_id, f_id, ad_text, ad_pu, ad_quant, ad_tva_id, ad_tva_amount, ad_total_amount, ag_id) FROM stdin;
\.


--
-- Data for Name: action_gestion_comment; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_gestion_comment (agc_id, ag_id, agc_date, agc_comment, tech_user) FROM stdin;
\.


--
-- Data for Name: jrn_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_type (jrn_type_id, jrn_desc) FROM stdin;
FIN	Financier
VEN	Vente
ACH	Achat
ODS	Opérations Diverses
\.


--
-- Data for Name: jrn_def; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_def (jrn_def_id, jrn_def_name, jrn_def_class_deb, jrn_def_class_cred, jrn_def_fiche_deb, jrn_def_fiche_cred, jrn_deb_max_line, jrn_cred_max_line, jrn_def_ech, jrn_def_ech_lib, jrn_def_type, jrn_def_code, jrn_def_pj_pref, jrn_def_bank, jrn_def_num_op, jrn_def_description, jrn_enable) FROM stdin;
3	Achat	6*	4*	5	4	1	3	t	échéance	ACH	A01	ACH	\N	\N	Concerne tous les achats, factures reçues, notes de crédit reçues et notes de frais	1
1	Financier	5* 	5*	3,2,4	3,2,4	5	5	f	\N	FIN	F01	FIN	\N	\N	Concerne tous les mouvements financiers (comptes en banque, caisses, visa...)	1
4	Opération Diverses	\N	\N	\N	\N	5	5	f	\N	ODS	O01	ODS	\N	\N	Concerne toutes les opérations comme les amortissements, les comptes TVA, ...	1
2	Vente	4*	7*	2	6	2	1	t	échéance	VEN	V01	VEN	\N	\N	Concerne toutes les ventes, notes de crédit envoyées	1
\.


--
-- Data for Name: jrn; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn (jr_id, jr_def_id, jr_montant, jr_comment, jr_date, jr_grpt_id, jr_internal, jr_tech_date, jr_tech_per, jrn_ech, jr_ech, jr_rapt, jr_valid, jr_opid, jr_c_opid, jr_pj, jr_pj_name, jr_pj_type, jr_pj_number, jr_mt, jr_date_paid, jr_optype) FROM stdin;
\.


--
-- Data for Name: action_gestion_operation; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_gestion_operation (ago_id, ag_id, jr_id) FROM stdin;
\.


--
-- Data for Name: link_action_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.link_action_type (l_id, l_desc) FROM stdin;
\.


--
-- Data for Name: action_gestion_related; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_gestion_related (aga_id, aga_least, aga_greatest, aga_type) FROM stdin;
\.


--
-- Data for Name: action_person; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_person (ap_id, ag_id, f_id) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tags (t_id, t_tag, t_description, t_actif) FROM stdin;
\.


--
-- Data for Name: action_tags; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.action_tags (at_id, t_id, ag_id) FROM stdin;
\.


--
-- Data for Name: attr_def; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.attr_def (ad_id, ad_text, ad_type, ad_size, ad_extra) FROM stdin;
8	Durée Amortissement	numeric	6	2
11	Montant initial	numeric	6	2
21	TVA non déductible	numeric	6	2
22	TVA non déductible récupérable par l'impôt	numeric	6	2
20	Partie fiscalement non déductible	numeric	6	2
31	Dépense  charge du grant (partie privé) 	numeric	6	4
3	Compte bancaire	text	22	\N
6	Prix vente	numeric	6	4
7	Prix achat	numeric	6	4
10	Date début	date	8	\N
1	Nom	text	22	\N
2	Taux TVA	text	22	\N
4	Nom de la banque	text	22	\N
9	Description	text	22	\N
12	Personne de contact 	text	22	\N
13	numéro de tva 	text	22	\N
14	Adresse 	text	22	\N
16	pays 	text	22	\N
17	téléphone 	text	22	\N
18	email 	text	22	\N
23	Quick Code	text	22	\N
24	Ville	text	22	\N
26	Fax	text	22	\N
27	GSM	text	22	\N
15	code postal	text	22	\N
30	Numero de client	text	22	\N
32	Prénom	text	22	\N
50	Contrepartie pour TVA récup par impot	poste	17	\N
51	Contrepartie pour TVA non Ded.	poste	17	\N
52	Contrepartie pour dépense à charge du gérant	poste	17	\N
53	Contrepartie pour dépense fiscal. non déd.	poste	17	\N
5	Poste Comptable	poste	17	\N
33	Date Fin	date	8	\N
19	Gestion stock	card	22	[sql] fd_id = 500000 
25	Société	card	22	[sql] frd_id in (4,8,9,14)
\.


--
-- Data for Name: attr_min; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.attr_min (frd_id, ad_id) FROM stdin;
1	1
1	2
2	1
2	2
3	1
3	2
4	1
4	3
4	4
4	12
4	13
4	14
4	15
4	16
4	17
4	18
8	1
8	12
8	13
8	14
8	15
8	16
8	17
8	18
9	1
9	12
9	13
9	14
9	16
9	17
9	18
1	6
1	7
2	6
2	7
3	7
1	19
2	19
14	1
5	1
5	4
5	10
5	12
6	1
6	4
6	10
6	12
10	1
10	12
11	1
11	12
12	1
12	12
13	1
13	9
7	1
7	8
7	9
7	10
5	11
6	11
1	15
9	15
15	1
15	9
1	23
2	23
3	23
4	23
5	23
6	23
8	23
9	23
10	23
11	23
12	23
13	23
14	23
15	23
7	23
9	24
8	24
14	24
16	1
16	17
16	18
16	25
16	26
16	27
16	23
25	1
25	4
25	3
25	5
25	15
25	16
25	24
25	23
2	30
26	1
26	9
\.


--
-- Data for Name: bilan; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.bilan (b_id, b_name, b_file_template, b_file_form, b_type) FROM stdin;
1	Bilan Belge complet	document/fr_be/bnb.rtf	document/fr_be/bnb.form	RTF
9	ASBL	document/fr_be/bnb-asbl.rtf	document/fr_be/bnb-asbl.form	RTF
\.


--
-- Data for Name: bookmark; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.bookmark (b_id, b_order, b_action, login) FROM stdin;
\.


--
-- Data for Name: tmp_pcmn; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tmp_pcmn (pcm_val, pcm_lib, pcm_val_parent, pcm_type, id, pcm_direct_use) FROM stdin;
550	Banque 1	55	ACT	715	Y
440	Fournisseurs	44	PAS	813	Y
539	Réductions de valeur actées	53	ACT	518	Y
794	Intervention d'associés (ou du propriétaire) dans la perte	79	PRO	519	Y
4000001	Client 1	400	ACT	527	Y
4000002	Client 2	400	ACT	528	Y
4000003	Client 3	400	ACT	529	Y
6040001	Electricité	604	CHA	530	Y
6040002	Loyer	604	CHA	531	Y
55000002	Banque 1	5500	ACT	532	Y
55000003	Banque 2	5500	ACT	533	Y
4400001	Fournisseur 1	440	PAS	534	Y
4400002	Fournisseur 2	440	PAS	535	Y
4400003	Fournisseur 4	440	PAS	536	Y
610001	Electricité	61	CHA	537	Y
610002	Loyer	61	CHA	538	Y
610003	Assurance	61	CHA	539	Y
610004	Matériel bureau	61	CHA	540	Y
7000002	Marchandise A	700	PRO	541	Y
7000001	Prestation	700	PRO	542	Y
7000003	Déplacement	700	PRO	543	Y
101	Capital non appelé	10	PASINV	544	Y
6190	TVA récupérable par l'impôt	61	CHA	545	Y
6740	Dépense non admise	67	CHA	546	Y
100	Capital souscrit	10	PAS	548	Y
1311	Autres réserves indisponibles	131	PAS	549	Y
132	 Réserves immunisées	13	PAS	550	Y
6711	Suppléments d'impôts estimés	671	CHA	551	Y
6712	Provisions fiscales constituées	671	CHA	552	Y
672	Impôts étrangers sur le résultat de l'exercice	67	CHA	553	Y
673	Impôts étrangers sur le résultat d'exercice antérieures	67	CHA	554	Y
690	Perte reportée de l'exercice précédent	69	CHA	557	Y
691	Dotation à la réserve légale	69	CHA	558	Y
692	Dotation aux autres réserves	69	CHA	559	Y
693	Bénéfice à reporter	69	CHA	560	Y
694	Rémunération du capital	69	CHA	561	Y
695	Administrateurs ou gérants	69	CHA	562	Y
696	Autres allocataires	69	CHA	563	Y
700	Ventes et prestations de services	70	PRO	565	Y
701	Ventes et prestations de services	70	PRO	566	Y
702	Ventes et prestations de services	70	PRO	567	Y
703	Ventes et prestations de services	70	PRO	568	Y
704	Ventes et prestations de services	70	PRO	569	Y
706	Ventes et prestations de services	70	PRO	570	Y
707	Ventes et prestations de services	70	PRO	571	Y
709	Remises, ristournes et rabais accordés(-)	70	PROINV	572	Y
712	des en-cours de fabrication	71	PRO	574	Y
713	des produits finis	71	PRO	575	Y
715	des immeubles construits destinés à la vente	71	PRO	576	Y
717	 des commandes  en cours d'éxécution	71	PRO	577	Y
7170	Valeur d'acquisition	717	PRO	578	Y
7171	Bénéfice pris en compte	717	PRO	579	Y
740	Subsides d' exploitation  et montants compensatoires	74	PRO	582	Y
741	Plus-values sur réalisation courantes d' immobilisations corporelles	74	PRO	583	Y
742	Plus-values sur réalisations de créances commerciales	74	PRO	584	Y
743	Produits d'exploitations divers	74	PRO	585	Y
744	Produits d'exploitations divers	74	PRO	586	Y
745	Produits d'exploitations divers	74	PRO	587	Y
746	Produits d'exploitations divers	74	PRO	588	Y
747	Produits d'exploitations divers	74	PRO	589	Y
748	Produits d'exploitations divers	74	PRO	590	Y
750	Produits sur immobilisations financières	75	PRO	592	Y
751	Produits des actifs circulants	75	PRO	593	Y
752	Plus-value sur réalisations d'actis circulants	75	PRO	594	Y
753	Subsides en capital et intérêts	75	PRO	595	Y
754	Différences de change	75	PRO	596	Y
755	Ecarts de conversion des devises	75	PRO	597	Y
221	Construction	22	ACT	598	Y
756	Produits financiers divers	75	PRO	599	Y
757	Produits financiers divers	75	PRO	600	Y
758	Produits financiers divers	75	PRO	601	Y
759	Produits financiers divers	75	PRO	602	Y
760	Reprise d'amortissements et de réductions de valeur	76	PRO	604	Y
7601	sur immobilisations corporelles	760	PRO	605	Y
7602	sur immobilisations incorporelles	760	PRO	606	Y
761	Reprises de réductions de valeur sur immobilisations financières	76	PRO	607	Y
762	Reprises de provisions pour risques et charges exceptionnels	76	PRO	608	Y
763	Plus-value sur réalisation d'actifs immobilisé	76	PRO	609	Y
764	Autres produits exceptionnels	76	PRO	610	Y
765	Autres produits exceptionnels	76	PRO	611	Y
766	Autres produits exceptionnels	76	PRO	612	Y
767	Autres produits exceptionnels	76	PRO	613	Y
768	Autres produits exceptionnels	76	PRO	614	Y
769	Autres produits exceptionnels	76	PRO	615	Y
771	impôts belges sur le résultat	77	PRO	617	Y
7710	Régularisations d'impôts dus ou versé	771	PRO	618	Y
7711	Régularisations d'impôts estimés	771	PRO	619	Y
7712	Reprises de provisions fiscales	771	PRO	620	Y
773	Impôts étrangers sur le résultats	77	PRO	621	Y
790	Bénéfice reporté de l'exercice précédent	79	PRO	623	Y
791	Prélévement sur le capital et les primes d'émission	79	PRO	624	Y
792	Prélévement sur les réserves	79	PRO	625	Y
793	Perte à reporter	79	PRO	626	Y
6301	Dotations aux amortissements sur immobilisations incorporelles	630	CHA	627	Y
6302	Dotations aux amortissements sur immobilisations corporelles	630	CHA	628	Y
6308	Dotations aux réductions de valeur sur immobilisations incorporelles	630	CHA	629	Y
6309	Dotations aux réductions de valeur sur immobilisations corporelles	630	CHA	630	Y
631	Réductions de valeur sur stocks	63	CHA	631	Y
6310	Dotations	631	CHA	632	Y
6311	Reprises(-)	631	CHAINV	633	Y
632	Réductions de valeur sur commande en cours d'éxécution	63	CHA	634	Y
6320	Dotations	632	CHA	635	Y
6321	Reprises(-)	632	CHAINV	636	Y
633	Réductions de valeurs sur créances commerciales à plus d'un an	63	CHA	637	Y
6330	Dotations	633	CHA	638	Y
6331	Reprises(-)	633	CHAINV	639	Y
634	Réductions de valeur sur créances commerciales à un an au plus	63	CHA	640	Y
6340	Dotations	634	CHA	641	Y
6341	Reprise	634	CHAINV	642	Y
635	Provisions pour pensions et obligations similaires	63	CHA	643	Y
6350	Dotations	635	CHA	644	Y
6351	Utilisation et reprises	635	CHAINV	645	Y
636	Provisions pour grosses réparations et gros entretien	63	CHA	646	Y
6360	Dotations	636	CHA	647	Y
6361	Reprises(-)	636	CHAINV	648	Y
637	Provisions pour autres risques et charges	63	CHA	649	Y
6370	Dotations	637	CHA	650	Y
6371	Reprises(-)	637	CHAINV	651	Y
640	Charges fiscales d'exploitation	64	CHA	653	Y
641	Moins-values sur réalisations courantes d'immobilisations corporelles	64	CHA	654	Y
642	Moins-value sur réalisation de créances commerciales	64	CHA	655	Y
643	Charges d'exploitations	64	CHA	656	Y
644	Charges d'exploitations	64	CHA	657	Y
645	Charges d'exploitations	64	CHA	658	Y
646	Charges d'exploitations	64	CHA	659	Y
647	Charges d'exploitations	64	CHA	660	Y
648	Charges d'exploitations	64	CHA	661	Y
649	Charges d'exploitation portées à l'actif au titre de frais de restructuration(-)	64	CHAINV	662	Y
650	Charges des dettes	65	CHA	664	Y
6500	Intérêts, commmissions et frais afférents aux dettes	650	CHA	665	Y
6501	Amortissements des frais d'émissions d'emrunts et des primes de remboursement	650	CHA	666	Y
6502	Autres charges des dettes	650	CHA	667	Y
6503	Intérêts intercalaires portés à l'actif(-)	650	CHA	668	Y
651	Réductions de valeur sur actifs circulants	65	CHA	669	Y
6510	Dotations	651	CHA	670	Y
6511	Reprises(-)	651	CHAINV	671	Y
652	Moins-value sur réalisation d'actifs circulants	65	CHA	672	Y
653	Charges d'escompte de créances	65	CHA	673	Y
654	Différences de changes	65	CHA	674	Y
655	Ecarts de conversion des devises	65	CHA	675	Y
656	Charges financières diverses	65	CHA	676	Y
657	Charges financières diverses	65	CHA	677	Y
658	Charges financières diverses	65	CHA	678	Y
659	Charges financières diverses	65	CHA	679	Y
660	Amortissements et réductions de valeur exceptionnels (dotations)	66	CHA	681	Y
6600	sur frais d'établissement	660	CHA	682	Y
6601	sur immobilisations incorporelles	660	CHA	683	Y
6602	sur immobilisations corporelles	660	CHA	684	Y
661	Réductions de valeur sur immobilisations financières (dotations)	66	CHA	685	Y
662	Provisions pour risques et charges exceptionnels	66	CHA	686	Y
663	Moins-values sur réalisations d'actifs immobilisés	66	CHA	687	Y
664	Autres charges exceptionnelles	66	CHA	688	Y
665	Autres charges exceptionnelles	66	CHA	689	Y
666	Autres charges exceptionnelles	66	CHA	690	Y
667	Autres charges exceptionnelles	66	CHA	691	Y
668	Autres charges exceptionnelles	66	CHA	692	Y
669	 Charges exceptionnelles portées à l'actif au titre de frais de restructuration	66	CHA	693	Y
670	Impôts belge sur le résultat de l'exercice	67	CHA	695	Y
6700	Impôts et précomptes dus ou versés	670	CHA	696	Y
6701	Excédents de versement d'impôts et de précomptes portés à l'actifs (-)	670	CHAINV	697	Y
6702	Charges fiscales estimées	670	CHA	698	Y
671	Impôts belges sur le résultats d'exercices antérieures	67	CHA	699	Y
6710	Suppléments d'impôt dus ou versés	671	CHA	700	Y
510	Valeur d'acquisition	51	ACT	703	Y
511	Montant non appelés	51	ACT	704	Y
519	Réductions de valeur actées	51	ACT	705	Y
520	Valeur d'acquisition	52	ACT	707	Y
529	Réductions de valeur actées	52	ACT	708	Y
530	de plus d'un an	53	ACT	710	Y
531	de plus d'un mois et d'un an au plus	53	ACT	711	Y
532	d'un mois au plus	53	ACT	712	Y
5500	Comptes courants	550	ACT	716	Y
5501	Chèques émis (-)	550	ACTINV	717	Y
5509	Réduction de valeur actée	550	ACT	718	Y
5510	Comptes courants	551	ACT	719	Y
5511	Chèques émis (-)	551	ACTINV	720	Y
5519	Réduction de valeur actée	551	ACT	721	Y
5520	Comptes courants	552	ACT	722	Y
5521	Chèques émis (-)	552	ACTINV	723	Y
5529	Réduction de valeur actée	552	ACT	724	Y
5530	Comptes courants	553	ACT	725	Y
5531	Chèques émis (-)	553	ACTINV	726	Y
5539	Réduction de valeur actée	553	ACT	727	Y
5540	Comptes courants	554	ACT	728	Y
5541	Chèques émis (-)	554	ACTINV	729	Y
5549	Réduction de valeur actée	554	ACT	730	Y
5550	Comptes courants	555	ACT	731	Y
5551	Chèques émis (-)	555	ACTINV	732	Y
5559	Réduction de valeur actée	555	ACT	733	Y
5560	Comptes courants	556	ACT	734	Y
5561	Chèques émis (-)	556	ACTINV	735	Y
5569	Réduction de valeur actée	556	ACT	736	Y
5570	Comptes courants	557	ACT	737	Y
5571	Chèques émis (-)	557	ACTINV	738	Y
5579	Réduction de valeur actée	557	ACT	739	Y
5580	Comptes courants	558	ACT	740	Y
5581	Chèques émis (-)	558	ACTINV	741	Y
5589	Réduction de valeur actée	558	ACT	742	Y
5590	Comptes courants	559	ACT	743	Y
5591	Chèques émis (-)	559	ACTINV	744	Y
5599	Réduction de valeur actée	559	ACT	745	Y
560	Compte courant	56	ACT	747	Y
561	Chèques émis	56	ACT	748	Y
578	Caisse timbre	57	ACT	749	Y
600	Achats de matières premières	60	CHA	752	Y
601	Achats de fournitures	60	CHA	753	Y
602	Achats de services, travaux et études	60	CHA	754	Y
603	Sous-traitances générales	60	CHA	755	Y
604	Achats de marchandises	60	CHA	756	Y
605	Achats d'immeubles destinés à la vente	60	CHA	757	Y
608	Remises, ristournes et rabais obtenus(-)	60	CHAINV	758	Y
609	Variation de stock	60	CHA	759	Y
6090	de matières premières	609	CHA	760	Y
6091	de fournitures	609	CHA	761	Y
6094	de marchandises	609	CHA	762	Y
6095	immeubles achetés destinés à la vente	609	CHA	763	Y
620	Rémunérations et avantages sociaux directs	62	CHA	766	Y
6200	Administrateurs ou gérants	620	CHA	767	Y
6201	Personnel de directions	620	CHA	768	Y
6203	Ouvriers	620	CHA	769	Y
6204	Autres membres du personnel	620	CHA	770	Y
621	Cotisations patronales d'assurances sociales	62	CHA	771	Y
622	Primes partonales pour assurances extra-légales	62	CHA	772	Y
623	Autres frais de personnel	62	CHA	773	Y
624	Pensions de retraite et de survie	62	CHA	774	Y
6240	Administrateurs ou gérants	624	CHA	775	Y
6241	Personnel	624	CHA	776	Y
630	Dotations aux amortissements et réduction de valeurs sur immobilisations	63	CHA	778	Y
6300	 Dotations aux amortissements sur frais d'établissement	630	CHA	779	Y
705	Ventes et prestations de services	70	PRO	780	Y
414	Produits à recevoir	41	ACT	781	Y
416	Créances diverses	41	ACT	782	Y
4160	Comptes de l'exploitant	416	ACT	783	Y
417	Créances douteuses	41	ACT	784	Y
418	Cautionnements versés en numéraires	41	ACT	785	Y
419	Réductions de valeur actées	41	ACT	786	Y
420	Emprunts subordonnés	42	PAS	788	Y
4200	convertibles	420	PAS	789	Y
4201	non convertibles	420	PAS	790	Y
421	Emprunts subordonnés	42	PAS	791	Y
4210	convertibles	420	PAS	792	Y
4211	non convertibles	420	PAS	793	Y
422	 Dettes de locations financement	42	PAS	794	Y
423	 Etablissement de crédit	42	PAS	795	Y
4230	Dettes en comptes	423	PAS	796	Y
4231	Promesses	423	PAS	797	Y
4232	Crédits d'acceptation	423	PAS	798	Y
424	Autres emprunts	42	PAS	799	Y
425	Dettes commerciales	42	PAS	800	Y
4250	Fournisseurs	425	PAS	801	Y
4251	Effets à payer	425	PAS	802	Y
426	Acomptes reçus sur commandes	42	PAS	803	Y
428	Cautionnement reçus en numéraires	42	PAS	804	Y
429	Dettes diverses	42	PAS	805	Y
430	Etablissements de crédit - Emprunts à compte à terme fixe	43	PAS	807	Y
431	Etablissements de crédit - Promesses	43	PAS	808	Y
432	 Etablissements de crédit - Crédits d'acceptation	43	PAS	809	Y
433	Etablissements de crédit -Dettes en comptes courant	43	PAS	810	Y
439	Autres emprunts	43	PAS	811	Y
441	Effets à payer	44	PAS	814	Y
444	Factures à recevoir	44	PAS	815	Y
450	Dettes fiscales estimées	45	PAS	817	Y
4500	Impôts belges sur le résultat	450	PAS	818	Y
4501	Impôts belges sur le résultat	450	PAS	819	Y
4502	Impôts belges sur le résultat	450	PAS	820	Y
4503	Impôts belges sur le résultat	450	PAS	821	Y
4504	Impôts belges sur le résultat	450	PAS	822	Y
4505	Autres impôts et taxes belges	450	PAS	823	Y
4506	Autres impôts et taxes belges	450	PAS	824	Y
4507	Autres impôts et taxes belges	450	PAS	825	Y
4508	Impôts et taxes étrangers	450	PAS	826	Y
451	TVA à payer	45	PAS	827	Y
4511	TVA à payer 21%	451	PAS	828	Y
4512	TVA à payer 12%	451	PAS	829	Y
4513	TVA à payer 6%	451	PAS	830	Y
4514	TVA à payer 0%	451	PAS	831	Y
452	Impôts et taxes à payer	45	PAS	832	Y
4520	Impôts belges sur le résultat	452	PAS	833	Y
4521	Impôts belges sur le résultat	452	PAS	834	Y
4522	Impôts belges sur le résultat	452	PAS	835	Y
4523	Impôts belges sur le résultat	452	PAS	836	Y
4524	Impôts belges sur le résultat	452	PAS	837	Y
4525	Autres impôts et taxes belges	452	PAS	838	Y
4526	Autres impôts et taxes belges	452	PAS	839	Y
4527	Autres impôts et taxes belges	452	PAS	840	Y
4528	Impôts et taxes étrangers	452	PAS	841	Y
453	Précomptes retenus	45	PAS	842	Y
454	Office National de la Sécurité Sociales	45	PAS	843	Y
455	Rémunérations	45	PAS	844	Y
456	Pécules de vacances	45	PAS	845	Y
459	Autres dettes sociales	45	PAS	846	Y
470	Dividendes et tantièmes d'exercices antérieurs	47	PAS	849	Y
471	Dividendes de l'exercice	47	PAS	850	Y
472	Tantièmes de l'exercice	47	PAS	851	Y
473	Autres allocataires	47	PAS	852	Y
480	Obligations et coupons échus	48	PAS	854	Y
488	Cautionnements reçus en numéraires	48	PAS	855	Y
489	Autres dettes diverses	48	PAS	856	Y
4890	Compte de l'exploitant	489	PAS	857	Y
490	Charges à reporter	49	ACT	859	Y
491	Produits acquis	49	ACT	860	Y
492	Charges à imputer	49	PAS	861	Y
493	Produits à reporter	49	PAS	862	Y
499	Comptes d'attentes	49	ACT	863	Y
2821	Montants non-appelés(-)	282	ACT	864	Y
2828	Plus-values actées	282	ACT	865	Y
2829	Réductions de valeurs actées	282	ACT	866	Y
283	Créances sur des entreprises avec lesquelles existe un lien de participation	28	ACT	867	Y
2830	Créance en compte	283	ACT	868	Y
2831	Effets à recevoir	283	ACT	869	Y
2832	Titre à revenu fixe	283	ACT	871	Y
2837	Créances douteuses	283	ACT	872	Y
2839	Réduction de valeurs actées	283	ACT	873	Y
284	Autres actions et parts	28	ACT	874	Y
2840	Valeur d'acquisition	284	ACT	875	Y
2841	Montants non-appelés(-)	284	ACT	876	Y
2848	Plus-values actées	284	ACT	877	Y
2849	Réductions de valeurs actées	284	ACT	878	Y
285	Autres créances	28	ACT	879	Y
2850	Créance en compte	285	ACT	880	Y
2851	Effets à recevoir	285	ACT	881	Y
2852	Titre à revenu fixe	285	ACT	882	Y
2857	Créances douteuses	285	ACT	883	Y
2859	Réductions de valeurs actées	285	ACT	884	Y
288	Cautionnements versés en numéraires	28	ACT	885	Y
290	Créances commerciales	29	ACT	887	Y
2900	Clients	290	ACT	888	Y
2901	Effets à recevoir	290	ACT	889	Y
2906	Acomptes versés	290	ACT	890	Y
2907	Créances douteuses	290	ACT	891	Y
2909	Réductions de valeurs actées	290	ACT	892	Y
291	Autres créances	29	ACT	893	Y
2910	Créances en comptes	291	ACT	894	Y
2911	Effets à recevoir	291	ACT	895	Y
2917	Créances douteuses	291	ACT	896	Y
2919	Réductions de valeurs actées(-)	291	ACT	897	Y
300	Valeur d'acquisition	30	ACT	899	Y
309	Réductions de valeur actées	30	ACT	900	Y
310	Valeur d'acquisition	31	ACT	902	Y
319	Réductions de valeurs actées(-)	31	ACT	903	Y
320	Valeurs d'acquisition	32	ACT	905	Y
329	Réductions de valeur actées	32	ACT	906	Y
330	Valeur d'acquisition	33	ACT	908	Y
339	Réductions de valeur actées	33	ACT	909	Y
340	Valeur d'acquisition	34	ACT	911	Y
349	Réductions de valeur actées	34	ACT	912	Y
350	Valeur d'acquisition	35	ACT	914	Y
359	Réductions de valeur actées	35	ACT	915	Y
360	Valeur d'acquisition	36	ACT	917	Y
369	Réductions de valeur actées	36	ACT	918	Y
370	Valeur d'acquisition	37	ACT	920	Y
371	Bénéfice pris en compte 	37	ACT	921	Y
379	Réductions de valeur actées	37	ACT	922	Y
400	Clients	40	ACT	924	Y
401	Effets à recevoir	40	ACT	925	Y
404	Produits à recevoir	40	ACT	926	Y
406	Acomptes versés	40	ACT	927	Y
407	Créances douteuses	40	ACT	928	Y
409	Réductions de valeur actées	40	ACT	929	Y
410	Capital appelé non versé	41	ACT	931	Y
411	TVA à récupérer	41	ACT	932	Y
4111	TVA à récupérer 21%	411	ACT	933	Y
4112	TVA à récupérer 12%	411	ACT	934	Y
4113	TVA à récupérer 6% 	411	ACT	935	Y
4114	TVA à récupérer 0%	411	ACT	936	Y
412	Impôts et précomptes à récupérer	41	ACT	937	Y
4120	Impôt belge sur le résultat	412	ACT	938	Y
4121	Impôt belge sur le résultat	412	ACT	939	Y
4122	Impôt belge sur le résultat	412	ACT	940	Y
4123	Impôt belge sur le résultat	412	ACT	941	Y
4124	Impôt belge sur le résultat	412	ACT	942	Y
4125	Autres impôts et taxes belges	412	ACT	943	Y
4126	Autres impôts et taxes belges	412	ACT	944	Y
4127	Autres impôts et taxes belges	412	ACT	945	Y
4128	Impôts et taxes étrangers	412	ACT	946	Y
6040003	Petit matériel	604	CHA	948	Y
130	Réserve légale	13	PAS	952	Y
131	Réserve indisponible	13	PAS	953	Y
1310	Réserve pour actions propres	131	PAS	954	Y
6040004	Assurance	604	CHA	955	Y
55000001	Caisse	5500	ACT	956	Y
133	Réserves disponibles	13	PAS	957	Y
140	Bénéfice reporté	14	PAS	959	Y
141	Perte reportée	14	PASINV	960	Y
160	Provisions pour pensions et obligations similaires	16	PAS	963	Y
161	Provisions pour charges fiscales	16	PAS	964	Y
749	Produits d'exploitations divers	74	PRO	965	Y
162	Provisions pour grosses réparation et gros entretien	16	PAS	966	Y
170	Emprunts subordonnés	17	PAS	968	Y
1700	convertibles	170	PAS	969	Y
1701	non convertibles	170	PAS	970	Y
171	Emprunts subordonnés	17	PAS	971	Y
1710	convertibles	170	PAS	972	Y
1711	non convertibles	170	PAS	973	Y
172	 Dettes de locations financement	17	PAS	974	Y
173	 Etablissement de crédit	17	PAS	975	Y
1730	Dettes en comptes	173	PAS	976	Y
1731	Promesses	173	PAS	977	Y
1732	Crédits d'acceptation	173	PAS	978	Y
174	Autres emprunts	17	PAS	979	Y
175	Dettes commerciales	17	PAS	980	Y
1750	Fournisseurs	175	PAS	981	Y
1751	Effets à payer	175	PAS	982	Y
176	Acomptes reçus sur commandes	17	PAS	983	Y
178	Cautionnement reçus en numéraires	17	PAS	984	Y
179	Dettes diverses	17	PAS	985	Y
200	Frais de constitution et d'augmentation de capital	20	ACT	987	Y
201	 Frais d'émission d'emprunts et primes de remboursement	20	ACT	988	Y
202	Autres frais d'établissement	20	ACT	989	Y
204	Frais de restructuration	20	ACT	990	Y
210	Frais de recherche et de développement	21	ACT	992	Y
211	Concessions, brevet, licence savoir faire, marque et droit similaires	21	ACT	993	Y
212	Goodwill	21	ACT	994	Y
213	Acomptes versés	21	ACT	995	Y
220	Terrains	22	ACT	997	Y
222	Terrains bâtis	22	ACT	998	Y
223	Autres droits réels sur des immeubles	22	ACT	999	Y
250	Terrains	25	ACT	1003	Y
251	Construction	25	ACT	1004	Y
252	Terrains bâtis	25	ACT	1005	Y
253	Mobilier et matériels roulants	25	ACT	1006	Y
280	Participation dans des entreprises liées	28	ACT	1010	Y
2800	Valeur d'acquisition	280	ACT	1011	Y
2801	Montants non-appelés(-)	280	ACT	1012	Y
2808	Plus-values actées	280	ACT	1013	Y
2809	Réductions de valeurs actées	280	ACT	1014	Y
281	Créance sur  des entreprises liées	28	ACT	1015	Y
2810	Créance en compte	281	ACT	1016	Y
2811	Effets à recevoir	281	ACT	1017	Y
2812	Titre à reveny fixe	281	ACT	1018	Y
2817	Créances douteuses	281	ACT	1019	Y
2819	Réduction de valeurs actées	281	ACT	1020	Y
282	Participations dans des entreprises avec lesquelles il existe un lien de participation	28	ACT	1021	Y
2820	Valeur d'acquisition	282	ACT	1022	Y
4516	Tva Export 0%	451	PAS	1023	Y
4115	Tva Intracomm 0%	411	ACT	1024	Y
4116	Tva Export 0%	411	ACT	1025	Y
41141	TVA pour l\\'export	4114	ACT	1026	Y
41142	TVA sur les opérations intracommunautaires	4114	ACT	1027	Y
45141	TVA pour l\\'export	451	PAS	1028	Y
45142	TVA sur les opérations intracommunautaires	4514	PAS	1029	Y
41143	TVA sur les opérations avec des assujettis art 44 Code TVA	4114	ACT	1030	Y
45143	TVA sur les opérations avec des assujettis art 44 Code TVA	4514	PAS	1031	Y
41144	TVA sur les opérations avec des cocontractants	4114	ACT	1032	Y
45144	TVA sur les opérations avec des cocontractants	4514	PAS	1033	Y
6202	Employés,620	62	CHA	1034	Y
57	Caisse	5	ACT	870	N
1	Fonds propres, provisions pour risques et charges à plus d'un an	0	PAS	520	N
2	Frais d'établissement, actifs immobilisés et créances à plus d'un an	0	ACT	521	N
3	Stocks et commandes en cours d'éxécution	0	ACT	522	N
4	Créances et dettes à un an au plus	0	ACT	523	N
5	Placements de trésorerie et valeurs disponibles	0	ACT	524	N
6	Charges	0	CHA	525	N
7	Produits	0	PRO	526	N
34	Marchandises	3	ACT	910	N
9	Comptes hors Compta	0	CON	547	N
68	Transferts aux réserves immunisées	6	CHA	555	N
69	Affectations et prélévements	6	CHA	556	N
70	Chiffre d'affaire	7	PRO	564	N
71	Variations des stocks et commandes en cours d'éxécution	7	PRO	573	N
72	Production immobilisée	7	PRO	580	N
74	Autres produits d'exploitation	7	PRO	581	N
75	Produits financiers	7	PRO	591	N
76	Produits exceptionnels	7	PRO	603	N
77	Régularisations d'impôts et reprises de provisions fiscales	7	PRO	616	N
79	Affectations et prélévements	7	PRO	622	N
64	Autres charges d'exploitation	6	CHA	652	N
65	Charges financières	6	CHA	663	N
66	Charges exceptionnelles	6	CHA	680	N
67	impôts sur le résultat	6	CHA	694	N
50	Actions propres	5	ACT	701	N
51	Actions et parts	5	ACT	702	N
52	Titres à revenu fixe	5	ACT	706	N
53	Dépôts à terme	5	ACT	709	N
54	Valeurs échues à l'encaissement	5	ACT	713	N
55	Etablissement de crédit	5	ACT	714	N
56	Office des chèques postaux	5	ACT	746	N
58	Virement interne	5	ACT	750	N
60	Approvisionnement et marchandises	6	CHA	751	N
61	Services et biens divers	6	CHA	764	N
62	Rémunérations, charges sociales et pensions	6	CHA	765	N
63	Amortissements, réductions de valeurs et provisions pour risques et charges	6	CHA	777	N
42	Dettes à plus dun an échéant dans l'année	4	PAS	787	N
43	Dettes financières	4	PAS	806	N
44	Dettes commerciales	4	PAS	812	N
45	Dettes fiscales, salariales et sociales	4	PAS	816	N
46	Acomptes reçus sur commandes	4	PAS	847	N
47	Dettes découlant de l'affectation du résultat	4	PAS	848	N
48	Dettes diverses	4	PAS	853	N
49	Comptes de régularisation	4	ACT	858	N
29	Créances à plus d'un an	2	ACT	886	N
30	Approvisionements - Matières premières	3	ACT	898	N
31	Approvisionnements - fournitures	3	ACT	901	N
32	En-cours de fabrication	3	ACT	904	N
33	Produits finis	3	ACT	907	N
35	Immeubles destinés à la vente	3	ACT	913	N
36	Acomptes versés sur achats pour stocks	3	ACT	916	N
37	Commandes en cours éxécution	3	ACT	919	N
40	Créances commerciales	4	ACT	923	N
41	Autres créances	4	ACT	930	N
10	Capital 	1	PAS	947	N
11	Prime d'émission 	1	PAS	949	N
12	Plus Value de réévaluation 	1	PAS	950	N
13	Réserve 	1	PAS	951	N
14	Bénéfice ou perte reportée	1	PAS	958	N
15	Subside en capital	1	PAS	961	N
16	Provisions pour risques et charges	1	PAS	962	N
17	 Dettes à plus d'un an	1	PAS	967	N
20	Frais d'établissement	2	ACT	986	N
21	Immobilisations incorporelles	2	ACT	991	N
22	Terrains et construction	2	ACT	996	N
23	 Installations, machines et outillages	2	ACT	1000	N
24	Mobilier et Matériel roulant	2	ACT	1001	N
25	Immobilisations détenus en location-financement et droits similaires	2	ACT	1002	N
26	Autres immobilisations corporelles	2	ACT	1007	N
27	Immobilisations corporelles en cours et acomptes versés	2	ACT	1008	N
28	Immobilisations financières	2	ACT	1009	N
\.


--
-- Data for Name: centralized; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.centralized (c_id, c_j_id, c_date, c_internal, c_montant, c_debit, c_jrn_def, c_poste, c_description, c_grp, c_comment, c_rapt, c_periode, c_order) FROM stdin;
\.


--
-- Data for Name: del_action; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.del_action (del_id, del_name, del_time) FROM stdin;
\.


--
-- Data for Name: del_jrn; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.del_jrn (jr_id, jr_def_id, jr_montant, jr_comment, jr_date, jr_grpt_id, jr_internal, jr_tech_date, jr_tech_per, jrn_ech, jr_ech, jr_rapt, jr_valid, jr_opid, jr_c_opid, jr_pj, jr_pj_name, jr_pj_type, del_jrn_date, jr_pj_number, dj_id) FROM stdin;
\.


--
-- Data for Name: del_jrnx; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.del_jrnx (j_id, j_date, j_montant, j_poste, j_grpt, j_rapt, j_jrn_def, j_debit, j_text, j_centralized, j_internal, j_tech_user, j_tech_date, j_tech_per, j_qcode, djx_id, f_id) FROM stdin;
\.


--
-- Data for Name: document; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.document (d_id, ag_id, d_lob, d_number, d_filename, d_mimetype, d_description) FROM stdin;
\.


--
-- Data for Name: document_modele; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.document_modele (md_id, md_name, md_lob, md_type, md_filename, md_mimetype, md_affect) FROM stdin;
\.


--
-- Data for Name: document_state; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.document_state (s_id, s_value, s_status) FROM stdin;
2	A suivre	\N
3	A faire	\N
1	Clôturé	C
4	Abandonné	C
\.


--
-- Data for Name: extension; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.extension (ex_id, ex_name, ex_code, ex_desc, ex_file, ex_enable) FROM stdin;
\.


--
-- Data for Name: fiche_detail; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.fiche_detail (jft_id, f_id, ad_id, ad_value) FROM stdin;
\.


--
-- Data for Name: parm_periode; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.parm_periode (p_id, p_start, p_end, p_exercice, p_closed, p_central) FROM stdin;
79	2010-01-01	2010-01-31	2010	f	f
80	2010-02-01	2010-02-28	2010	f	f
81	2010-03-01	2010-03-31	2010	f	f
82	2010-04-01	2010-04-30	2010	f	f
83	2010-05-01	2010-05-31	2010	f	f
84	2010-06-01	2010-06-30	2010	f	f
85	2010-07-01	2010-07-31	2010	f	f
86	2010-08-01	2010-08-31	2010	f	f
87	2010-09-01	2010-09-30	2010	f	f
88	2010-10-01	2010-10-31	2010	f	f
89	2010-11-01	2010-11-30	2010	f	f
90	2010-12-01	2010-12-30	2010	f	f
91	2010-12-31	2010-12-31	2010	f	f
\.


--
-- Data for Name: forecast; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.forecast (f_id, f_name, f_start_date, f_end_date) FROM stdin;
\.


--
-- Data for Name: forecast_cat; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.forecast_cat (fc_id, fc_desc, f_id, fc_order) FROM stdin;
\.


--
-- Data for Name: forecast_item; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.forecast_item (fi_id, fi_text, fi_account, fi_card, fi_order, fc_id, fi_amount, fi_debit, fi_pid) FROM stdin;
\.


--
-- Data for Name: formdef; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.formdef (fr_id, fr_label) FROM stdin;
3000000	TVA déclaration Belge
\.


--
-- Data for Name: form; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.form (fo_id, fo_fr_id, fo_pos, fo_label, fo_formula) FROM stdin;
3000398	3000000	1	Prestation [ case 03 ]	[700%]-[7000005]
3000399	3000000	2	Prestation intra [ case 47 ]	[7000005]
3000400	3000000	3	Tva due   [case 54]	[4513]+[4512]+[4511] FROM=01.2005
3000401	3000000	4	Marchandises, matière première et auxiliaire [case 81 ]	[60%]
3000402	3000000	7	Service et bien divers [case 82]	[61%]
3000403	3000000	8	bien d'invest [ case 83 ]	[2400%]
3000404	3000000	9	TVA déductible [ case 59 ]	abs([4117]-[411%])
3000405	3000000	8	TVA non ded -> voiture	[610022]*0.21/2
3000406	3000000	9	Acompte TVA	[4117]
\.


--
-- Data for Name: plan_analytique; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.plan_analytique (pa_id, pa_name, pa_description) FROM stdin;
\.


--
-- Data for Name: groupe_analytique; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.groupe_analytique (ga_id, pa_id, ga_description) FROM stdin;
\.


--
-- Data for Name: info_def; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.info_def (id_type, id_description) FROM stdin;
BON_COMMANDE	Numero de bon de commande
OTHER	Info diverses
\.


--
-- Data for Name: jnt_fic_attr; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jnt_fic_attr (fd_id, ad_id, jnt_id, jnt_order) FROM stdin;
3	1	16	0
4	1	27	0
5	1	36	0
6	1	40	0
3	4	18	2
3	12	19	3
6	19	44	2
2	13	9	31
3	13	20	31
4	13	29	31
1	2	3	1
2	12	8	1
3	3	17	1
4	12	28	1
5	2	37	1
6	2	41	1
1	6	4	120
6	6	42	120
1	7	5	130
5	7	38	130
6	7	43	130
2	14	10	40
3	14	21	40
4	14	30	40
2	16	12	70
3	16	23	70
4	16	32	70
2	17	13	80
3	17	24	80
4	17	33	80
2	18	14	90
3	18	25	90
4	18	34	90
2	23	45	400
1	23	46	400
3	23	47	400
4	23	48	400
5	23	49	400
6	23	50	400
2	24	51	60
4	24	52	60
2	15	11	50
3	15	22	50
4	15	31	50
1	5	1	30
2	5	6	30
3	5	15	30
4	5	26	30
5	5	35	30
6	5	39	30
1	1	2	0
2	1	7	0
500000	1	54	10
500000	9	55	20
500000	23	56	30
\.


--
-- Data for Name: jnt_letter; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jnt_letter (jl_id) FROM stdin;
\.


--
-- Data for Name: jrn_info; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_info (ji_id, jr_id, id_type, ji_value) FROM stdin;
\.


--
-- Data for Name: jrn_note; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_note (n_id, n_text, jr_id) FROM stdin;
\.


--
-- Data for Name: jrn_periode; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_periode (jrn_def_id, p_id, status, id) FROM stdin;
4	79	OP	1
1	79	OP	2
3	79	OP	3
2	79	OP	4
4	80	OP	5
1	80	OP	6
3	80	OP	7
2	80	OP	8
4	81	OP	9
1	81	OP	10
3	81	OP	11
2	81	OP	12
4	82	OP	13
1	82	OP	14
3	82	OP	15
2	82	OP	16
4	83	OP	17
1	83	OP	18
3	83	OP	19
2	83	OP	20
4	84	OP	21
1	84	OP	22
3	84	OP	23
2	84	OP	24
4	85	OP	25
1	85	OP	26
3	85	OP	27
2	85	OP	28
4	86	OP	29
1	86	OP	30
3	86	OP	31
2	86	OP	32
4	87	OP	33
1	87	OP	34
3	87	OP	35
2	87	OP	36
4	88	OP	37
1	88	OP	38
3	88	OP	39
2	88	OP	40
4	89	OP	41
1	89	OP	42
3	89	OP	43
2	89	OP	44
4	90	OP	45
1	90	OP	46
3	90	OP	47
2	90	OP	48
4	91	OP	49
1	91	OP	50
3	91	OP	51
2	91	OP	52
\.


--
-- Data for Name: jrn_rapt; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrn_rapt (jra_id, jr_id, jra_concerned) FROM stdin;
\.


--
-- Data for Name: jrnx; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.jrnx (j_id, j_date, j_montant, j_poste, j_grpt, j_rapt, j_jrn_def, j_debit, j_text, j_centralized, j_internal, j_tech_user, j_tech_date, j_tech_per, j_qcode, f_id) FROM stdin;
\.


--
-- Data for Name: key_distribution; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.key_distribution (kd_id, kd_name, kd_description) FROM stdin;
\.


--
-- Data for Name: key_distribution_detail; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.key_distribution_detail (ke_id, kd_id, ke_row, ke_percent) FROM stdin;
\.


--
-- Data for Name: poste_analytique; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.poste_analytique (po_id, po_name, pa_id, po_amount, po_description, ga_id) FROM stdin;
\.


--
-- Data for Name: key_distribution_activity; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.key_distribution_activity (ka_id, ke_id, po_id, pa_id) FROM stdin;
\.


--
-- Data for Name: key_distribution_ledger; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.key_distribution_ledger (kl_id, kd_id, jrn_def_id) FROM stdin;
\.


--
-- Data for Name: letter_cred; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.letter_cred (lc_id, j_id, jl_id) FROM stdin;
\.


--
-- Data for Name: letter_deb; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.letter_deb (ld_id, j_id, jl_id) FROM stdin;
\.


--
-- Data for Name: menu_default; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.menu_default (md_id, md_code, me_code) FROM stdin;
1	code_invoice	COMPTA/VENMENU/VEN
2	code_follow	GESTION/FOLLOW
\.


--
-- Data for Name: menu_ref; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.menu_ref (me_code, me_menu, me_file, me_url, me_description, me_parameter, me_javascript, me_type, me_description_etendue) FROM stdin;
ACH	Achat	compta_ach.inc.php	\N	Nouvel achat ou dépense	\N	\N	ME	Vous permet d'encoder des achats, dépenses, des notes de frais ou des notes de crédits, vous pouvez spécifier un bénéficiaire ou un autre moyen de paiement
ANCHOP	Historique	anc_history.inc.php	\N	Historique des imputations analytiques	\N	\N	ME	Historique des imputations analytiques
ANCBS	Balance simple	anc_balance_simple.inc.php	\N	Balance simple des imputations analytiques	\N	\N	ME	Balance simple des imputations analytiques
ANCTAB	Tableau	anc_acc_table.inc.php	\N	Tableau lié à la comptabilité	\N	\N	ME	Tableau lié à la comptabilité
ANCBCC	Balance Analytique/comptabilité	anc_acc_balance.inc.php	\N	Lien entre comptabilité et Comptabilité analytique	\N	\N	ME	Lien entre comptabilité et Comptabilité analytique
ANCGR	Groupe	anc_group_balance.inc.php	\N	Balance par groupe	\N	\N	ME	Balance par groupe
CFGTVA	TVA	tva.inc.php	\N	Config. de la tva	\N	\N	ME	Permet d'ajouter des taux de TVA ou de les modifier ainsi que les postes comptables de ces TVA, ces TVA sont utilisables dans les menus de vente et d'achat
VEN	Vente	compta_ven.inc.php	\N	Nouvelle vente ou recette	\N	\N	ME	Encodage de tous vos revenus ou vente
CFGMENU	Config. Menu	menu.inc.php	\N	Configuration des menus et plugins	\N	\N	ME	Ajout de menu ou de plugins
SUPPL	Fournisseur	supplier.inc.php	\N	Suivi fournisseur	\N	\N	ME	Suivi des fournisseurs : devis, lettres, email....
ANCODS	Opérations diverses	anc_od.inc.php	\N	OD analytique	\N	\N	ME	Opérations diverses en Analytique
REPORT	Création de rapport	report.inc.php	\N	Création de rapport	\N	\N	ME	Création de rapport sur mesure, comme les ratios, vous permet de créer des graphiques de vos données (vente, achat...)
new_line	saut de ligne	\N	\N	Saut de ligne	\N	\N	SP	\N
CUST	Client	customer.inc.php	\N	Suivi client	\N	\N	ME	Suivi client : devis, réunion, courrier, commande...
STOCK_HISTO	Historique stock	stock_histo.inc.php	\N	Historique des mouvement de stock	\N	\N	ME	\N
CSV:histo	Export Historique	export_histo_csv.php	\N	\N	\N	\N	PR	\N
CSV:ledger	Export Journaux	export_ledger_csv.php	\N	\N	\N	\N	PR	\N
PDF:ledger	Export Journaux	export_ledger_pdf.php	\N	\N	\N	\N	PR	\N
CSV:postedetail	Export Poste détail	export_poste_detail_csv.php	\N	\N	\N	\N	PR	\N
PDF:postedetail	Export Poste détail	export_poste_detail_pdf.php	\N	\N	\N	\N	PR	\N
CSV:fichedetail	Export Fiche détail	export_fiche_detail_csv.php	\N	\N	\N	\N	PR	\N
PDF:fichedetail	Export Fiche détail	export_fiche_detail_pdf.php	\N	\N	\N	\N	PR	\N
CSV:fiche_balance	Export Fiche balance	export_fiche_balance_csv.php	\N	\N	\N	\N	PR	\N
PDF:fiche_balance	Export Fiche balance	export_fiche_balance_pdf.php	\N	\N	\N	\N	PR	\N
CSV:report	Export report	export_form_csv.php	\N	\N	\N	\N	PR	\N
PDF:report	Export report	export_form_pdf.php	\N	\N	\N	\N	PR	\N
CSV:fiche	Export Fiche	export_fiche_csv.php	\N	\N	\N	\N	PR	\N
PDF:fiche	Export Fiche	export_fiche_pdf.php	\N	\N	\N	\N	PR	\N
CSV:glcompte	Export Grand Livre	export_gl_csv.php	\N	\N	\N	\N	PR	\N
PDF:glcompte	Export Grand Livre	export_gl_pdf.php	\N	\N	\N	\N	PR	\N
PDF:sec	Export Sécurité	export_security_pdf.php	\N	\N	\N	\N	PR	\N
CSV:AncList	Export Comptabilité analytique	export_anc_list_csv.php	\N	\N	\N	\N	PR	\N
CSV:AncBalSimple	Export Comptabilité analytique balance simple	export_anc_balance_simple_csv.php	\N	\N	\N	\N	PR	\N
PDF:AncBalSimple	Export Comptabilité analytique	export_anc_balance_simple_pdf.php	\N	\N	\N	\N	PR	\N
CSV:AncBalDouble	Export Comptabilité analytique balance double	export_anc_balance_double_csv.php	\N	\N	\N	\N	PR	\N
PDF:AncBalDouble	Export Comptabilité analytique balance double	export_anc_balance_double_pdf.php	\N	\N	\N	\N	PR	\N
CSV:balance	Export Balance comptable	export_balance_csv.php	\N	\N	\N	\N	PR	\N
PDF:balance	Export Balance comptable	export_balance_pdf.php	\N	\N	\N	\N	PR	\N
CSV:AncTable	Export Tableau Analytique	export_anc_table_csv.php	\N	\N	\N	\N	PR	\N
CSV:AncAccList	Export Historique Compt. Analytique	export_anc_acc_list_csv.php	\N	\N	\N	\N	PR	\N
CSV:AncBalGroup	Export Balance groupe analytique	export_anc_balance_group_csv.php	\N	\N	\N	\N	PR	\N
OTH:Bilan	Export Bilan	export_bilan_oth.php	\N	\N	\N	\N	PR	\N
CSV:AncGrandLivre	Impression Grand-Livre	export_anc_grandlivre_csv.php	\N	\N	\N	\N	PR	\N
CSV:reportinit	Export définition d'un raport	export_reportinit_csv.php	\N	\N	\N	\N	PR	\N
CSV:ActionGestion	Export Action Gestion	export_follow_up_csv.php	\N	\N	\N	\N	PR	\N
CSV:StockHisto	Export Historique mouvement stock	export_stock_histo_csv.php	\N	\N	\N	\N	PR	\N
CSV:StockResmList	Export Résumé list stock	export_stock_resume_list.php	\N	\N	\N	\N	PR	\N
EXT	Extension	\N	\N	Extensions (plugins)	\N	\N	ME	Menu regroupant les plugins
PLANANC	Plan Compt. analytique	anc_pa.inc.php	\N	Plan analytique	\N	\N	ME	Axe analytique
ANCGROUP	Groupe	anc_group.inc.php	\N	Groupe analytique	\N	\N	ME	Regroupement de compte analytique
CONTACT	Contact	contact.inc.php	\N	Liste des contacts	\N	\N	ME	Liste de tous vos contacts
PREDOP	Ecriture prédefinie	preod.inc.php	\N	Gestion des opérations prédéfinifies	\N	\N	ME	Les opérations prédéfinies sont des opérations que vous faites régulièrement (loyer, abonnement,...) 
ODS	Opérations Diverses	compta_ods.inc.php	\N	Nouvelle opérations diverses	\N	\N	ME	Opération diverses tels que les amortissements, les augmentations de capital, les salaires, ...
FIN	Nouvel extrait	compta_fin.inc.php	\N	Nouvel extrait bancaire	\N	\N	ME	Encodage d'un extrait bancaire (=relevé bancaire)
JSSEARCH	Recherche	\N	\N	Recherche	\N	search_reconcile()	ME	Historique de toutes vos opérations un menu de recherche dans une nouvelle fenêtre, vous permettra de retrouver rapidement l'opération qui vous intéresse
PARAM	Paramètre	\N	\N	Module paramètre	\N	\N	ME	Module paramètres
CFGCATDOC	Catégorie de documents	cat_document.inc.php	\N	Config. catégorie de documents	\N	\N	ME	Vous permet d'ajouter de nouveaux type de documents (bordereau de livraison, devis..)
LETCARD	Lettrage par Fiche	lettering.card.inc.php	\N	Lettrage par fiche	\N	\N	ME	Lettrage par fiche
ACHISTO	Historique achat	history_operation.inc.php	\N	Historique achat	ledger_type=ACH	\N	ME	Historique de toutes vos opérations dans les journaux d'achats un menu de recherche, vous permettra de retrouver rapidement l'opération qui vous intéresse
ODHISTO	Historique opérations diverses	history_operation.inc.php	\N	Historique opérations diverses	ledger_type=ODS	\N	ME	Historique de toutes vos opérations dans les journaux d'opérations diverses un menu de recherche, vous permettra de retrouver rapidement l'opération qui vous intéresse
PRINTPOSTE	Poste	impress_poste.inc.php	\N	Impression du détail d'un poste comptable	\N	\N	ME	Impression du détail d'un poste comptable
PRINTREPORT	Rapport	impress_rapport.inc.php	\N	Impression de rapport	\N	\N	ME	Impression de rapport personnalisé, il est aussi possible d'exporter en CSV afin de faire des graphiques
PRINTGL	Grand Livre	impress_gl_comptes.inc.php	\N	Impression du grand livre	\N	\N	ME	Impression du grand livre
PRINTBAL	Balance	balance.inc.php	\N	Impression des balances comptables	\N	\N	ME	Impression des balances comptables
MENUACH	Achat	\N	\N	Menu achat	\N	\N	ME	Regroupement pour les menus d'achats(nouvelle opération, historique...)
MOD	Menu et profil	\N	\N	Menu 	\N	\N	ME	Regroupement pour les menus et les profils
PRINT	Impression	\N	\N	Menu impression	\N	\N	ME	Menu impression
BK	Banque	bank.inc.php	\N	Information Banque	\N	\N	ME	Regroupement des menus des journaux de trésorerie
ANCGL	Grand'Livre	anc_great_ledger.inc.php	\N	Grand livre analytique	\N	\N	ME	Grand livre pour la comptabilité analytique
GESTION	Gestion	\N	\N	Module gestion	\N	\N	ME	Module gestion
LET	Lettrage	\N	\N	Lettrage	\N	\N	ME	Menu Lettrage
ACCESS	Accueil	\N	user_login.php	Accueil	\N	\N	ME	Choix de votre dossier
COMPTA	Comptabilité	\N	\N	Module comptabilité	\N	\N	ME	Module comptabilité
DIVPARM	Divers	\N	\N	Paramètres divers	\N	\N	ME	Menu de différents paramètres
CFGPRO	Profil	profile.inc.php	\N	Configuration profil	\N	\N	ME	Configuration des profils des utilisateurs, permet de fixer les journaux, profils dans les documents et stock que  ce profil peut utiliser. Cela limite les utilisateurs puisque ceux-ci ont un profil
CFGACC	Poste	poste.inc.php	\N	Config. poste comptable de base	\N	\N	ME	Config. poste comptable de base
CARD	Fiche	fiche.inc.php	\N	Liste,Balance,Historique par fiche	\N	\N	ME	Permet d'avoir la balance de toutes vos fiches, les résumés exportables en CSV, les historiques avec ou sans lettrages
PREFERENCE	Préférence	\N	\N	Préférence	\N	set_preference(<DOSSIER>)	ME	Préférence de l'utilisateur, apparence de l'application pour l'utilisateur, période par défaut et mot de passe
CFGTAG	Configuration étiquette	cfgtags.inc.php	\N	Configuration des tags	\N	\N	ME	Configuration des tags ou dossiers, on l'appele tag ou dossier suivant la façon dont vous utilisez \ncette fonctionnalité. Vous pouvez en ajouter, en supprimer ou les modifier
ANCBC2	Balance croisée double	anc_balance_double.inc.php	\N	Balance double croisées des imputations analytiques	\N	\N	ME	Balance double croisées des imputations analytiques
COMPANY	Sociétés	company.inc.php	\N	Parametre societe	\N	\N	ME	Information sur votre société : nom, adresse... utilisé lors de la génération de documents
PERIODE	Période	periode.inc.php	\N	Gestion des périodes	\N	\N	ME	Gestion des périodes : clôture, ajout de période, afin de créer des périodes vous pouvez aussi utiliser le plugin outil comptable
VERIFBIL	Vérification 	verif_bilan.inc.php	\N	Vérification de la comptabilité	\N	\N	ME	Vérifie que votre comptabilité ne contient pas d'erreur de base, tels que l'équilibre entre le passif et l'actif, l'utilisation des postes comptables...
OPEN	Ecriture Ouverture	opening.inc.php	\N	Ecriture d'ouverture	\N	\N	ME	Ecriture d'ouverture ou écriture à nouveau, reporte les soldes des comptes de l'année passé du poste comptable 0xxx à 5xxxx sur l'année courante
CFGDOC	Document	document_modele.inc.php	\N	Config. modèle de document	\N	\N	ME	Chargement de modèles de documents qui seront générés par NOALYSS, les formats utilisables sont libreoffice, html, text et rtf
CFGLED	journaux	cfgledger.inc.php	\N	Configuration des journaux	\N	\N	ME	Création et modification des journaux, préfixe des pièces justificatives, numérotation, catégories de fiches accessibles à ce journal
CFGSEC	Sécurité	param_sec.inc.php	\N	configuration de la sécurité	\N	\N	ME	Configuration de la sécurité, vous permet de donner un profil à vos utilisateurs, cela leur permettra d'utiliser ce que vous souhaitez qu'ils puissent utiliser
CFGATCARD	Attribut de fiche	card_attr.inc.php	\N	Gestion des attributs de fiches 	\N	\N	ME	Permet d'ajouter de nouveaux attributs que vous pourrez par la suite ajouter à des catégories de fiches
STOCK_STATE	Etat des stock	stock_state.inc.php	\N	Etat des stock	\N	\N	ME	Etat des stock de l'exercice indiqué
STOCK_INV	Modification Stocks	stock_inv.inc.php	\N	Modification des stocks (inventaire)	\N	\N	ME	Modification des stocks, menu utilisé pour l'inventaire
STOCK_INVHISTO	Histo. Changement	stock_inv_histo.inc.php	\N	Liste des changements manuels des stocks	\N	\N	ME	Liste des changements manuels des stocks, inventaire, transfert de marchandises entre dépôts...
NAVI	Navigateur	\N	\N	Menu simplifié pour retrouver rapidement un menu	\N	ask_navigator(<DOSSIER>)	ME	Le navigateur vous présente une liste de menu auquel vous avez accès et vous permet d'accèder plus rapidement au menu que vous souhaitez
SEARCH	Recherche	\N	\N	Recherche	\N	popup_recherche(<DOSSIER>)	ME	Historique de toutes vos opérations dans tous  les journaux auquels vous avez accès, vous permettra de retrouver rapidement l'opération qui vous intéresse sur base de la date, du poste comptable, des montants...
HIST	Historique	history_operation.inc.php	\N	Historique	ledger_type=ALL	\N	ME	Historique de toutes vos opérations un menu de recherche, vous permettra de retrouver rapidement l'opération qui vous intéresse
FREC	Rapprochement	compta_fin_rec.inc.php	\N	Rapprochement bancaire	\N	\N	ME	Permet de faire correspondre vos extraits bancaires avec les opérations de vente ou d'achat, le lettrage se fait automatiquement
FSALDO	Soldes	compta_fin_saldo.inc.php	\N	Solde des comptes en banques, caisse...	\N	\N	ME	Solde des journaux de trésorerie cela concerne les comptes en banques, caisse , les chèques... 
LOGOUT	Sortie &#9094	\N	logout.php	Sortie	\N	\N	ME	Déconnexion 
LETACC	Lettrage par Poste	lettering.account.inc.php	\N	lettrage par poste comptable	\N	\N	ME	lettrage par poste comptable
CARDBAL	Balance	balance_card.inc.php	\N	Balance par catégorie de fiche	\N	\N	ME	Balance par catégorie de fiche ou pour toutes les fiches ayant un poste comptable
CFGPCMN	Plan Comptable	param_pcmn.inc.php	\N	Config. du plan comptable	\N	\N	ME	Modification de votre plan comptable, parfois il est plus rapide d'utiliser le plugin "Poste Comptable"
VEHISTO	Historique vente	history_operation.inc.php	\N	Historique des ventes	ledger_type=VEN	\N	ME	Historique de toutes vos opérations dans les journaux de vente un menu de recherche, vous permettra de retrouver rapidement l'opération qui vous intéresse
FIHISTO	Historique financier	history_operation.inc.php	\N	Historique financier	ledger_type=FIN	\N	ME	Historique de toutes vos opérations dans les journaux de trésorerie un menu de recherche, vous permettra de retrouver rapidement l'opération qui vous intéresse
PRINTREC	Rapprochement	impress_rec.inc.php	\N	Impression des rapprochements	\N	\N	ME	Impression des rapprochements : opérations non rapprochées ou avec des montants différents
PRINTBILAN	Bilan	impress_bilan.inc.php	\N	Impression de bilan	\N	\N	ME	Impression de bilan, ce module est basique, il est plus intéressant d'utiliser le plugin "rapport avancés"
CFGSTOCK	Configuration des dépôts	stock_cfg.inc.php	\N	Configuration dépôts	\N	\N	ME	Configuration des entrepots de dépôts
STOCK	Stock	\N	\N	Stock	\N	\N	ME	Permet d'ajouter de nouvelles catégorie de fiche, d'ajouter des attributs à ces catégories (numéro de téléphone, gsm, email...)
CFGCARDCAT	Catégorie de fiche	fiche_def.inc.php	\N	Gestion catégorie de fiche	\N	\N	ME	Permet de changer le poste comptable de base des catégories de fiches
CFGCARD	Fiche	cfgfiche.inc.php	\N	Configuration de catégorie de fiches	\N	\N	ME	Permet d'ajouter de nouvelles catégorie de fiche, d'ajouter des attributs à ces catégories (numéro de téléphone, gsm, email...)
CFGDOCST	Etat des documents	doc_state.inc.php	\N	Etat des documents	\N	\N	ME	Permet d'ajouter des état pour les documents utilisés dans le suivi (à faire, à suivre...)
MENUODS	Opérations diverses	\N	\N	Menu opérations diverses	\N	\N	ME	Regroupement pour les menus d'opérations diverses (nouvelle opération, historique...)
PRINTJRN	Impression Journaux	impress_jrn.inc.php	\N	Impression des journaux	\N	\N	ME	Impression des journaux avec les détails pour les parties privés, la TVA et ce qui est non déductibles en ce qui concerne les journaux de vente et d'achat
VENMENU	Vente / Recette	\N	\N	Menu ventes et recettes	\N	\N	ME	Regroupement des menus ventes et recettes
ANCIMP	Impression	\N	\N	Impression compta. analytique	\N	\N	ME	Impression compta. analytique
ANC	Compta Analytique	\N	\N	Module comptabilité analytique	\N	\N	ME	Module comptabilité analytique
DASHBOARD	Tableau de bord	dashboard.inc.php	\N	Tableau de bord	\N	\N	ME	Tableau de suivi, vous permet de voir en un coup d'oeil vos dernières opérations, un petit calendrier, une liste de chose à faire...
ADV	Avancé	\N	\N	Menu avancé	\N	\N	ME	Menu regroupant la création de rapport, la vérification de la comptabilité...
MENUFIN	Trésorerie	\N	\N	Menu Financier	\N	\N	ME	Regroupement pour les menus de trésorerie (nouvelle opération, historique...)
FOLLOW	Liste Suivi	action.inc.php	\N	Document de suivi sous forme de liste	\N	\N	ME	Liste de vos suivis, en fait de tous les documents, réunions ... dont vous avez besoin afin de suivre vos clients, fournisseurs ou administrations. Il permet la génération de documents comme les devis, les bordereau de livraison...
CFGPAY	Moyen de paiement	payment_middle.inc.php	\N	Config. des méthodes de paiement	\N	\N	ME	Configuration des moyens de paiements que vous voulez utiliser dans les journaux de type VEN ou ACH, les moyens de paiement permettent de générer l'opération de trésorerie en même temps que l'achat, la note de frais ou la vente
ADM	Administration	adm.inc.php	\N	Suivi administration, banque	\N	\N	ME	Suivi des administrations : courrrier, déclarations.
FORECAST	Prévision	forecast.inc.php	\N	Prévision	\N	\N	ME	Prévision de vos achats, revenus, permet de suivre l'évolution de votre société. Vos prévisions sont des formules sur les postes comptables et vous permettent aussi vos marges brutes.
CSV:Reconciliation	Export opérations rapprochées	export_rec_csv.php	\N	Export opérations rapprochées en CSV	\N	\N	PR	
MANAGER	Administrateur	manager.inc.php	\N	Suivi des gérants, administrateurs et salariés	\N	\N	ME	Suivi de vos salariés, managers ainsi que des administrateurs, pour les documents et les opérations comptables
CFGDEFMENU	Menu par défaut	default_menu.inc.php	\N	Configuration des menus par défaut	\N	\N	ME	Configuration des menus par défaut, ces menus sont appelés par des actions dans d'autres menus
AGENDA	Agenda	calendar.inc.php	\N	Agenda	\N	\N	ME	Agenda, présentation du suivi sous forme d'agenda 
PDF:AncReceipt	Export pièce PDF	export_anc_receipt_pdf.php	\N	\N	\N	\N	PR	\N
ANCKEY	Clef de répartition	anc_key.inc.php	\N	\N	\N	\N	ME	Permet de gèrer les clefs de répartition en comptabilité analytique
CFGPLUGIN	Configuration extension	cfgplugin.inc.php	\N	\N	\N	\N	ME	Permet d'installer et d'activer facilement des extensions
BOOKMARK	Favori &#9733 	\N	\N	Raccourci vers vos menus préférés	\N	show_bookmark(<DOSSIER>)	ME	Ce menu vous présente  un menu rapide de vos menus préférés
BALAGE	Balance agée	balance_age.inc.php	\N	Balance agée	\N	\N	ME	Balance agée pour les clients et fournisseurs
CSV:balance_age	Export Balance agée	export_balance_age_csv.php	\N	Balance agée	\N	\N	PR	Balance agée pour les clients et fournisseurs
RAW:receipt	Exporte la pièce	export_receipt.php	\N	export la pièce justificative d'une opération	\N	\N	PR	\N
RAW:document	Export le document	export_document.php	\N	exporte le document d'un événement	\N	\N	PR	\N
RAW:document_template	Exporte le modèle de document	export_document_template.php	\N	export le modèle de document utilisé dans le suivi	\N	\N	PR	\N
\.


--
-- Data for Name: mod_payment; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.mod_payment (mp_id, mp_lib, mp_jrn_def_id, mp_fd_id, mp_qcode, jrn_def_id) FROM stdin;
2	Caisse	1	\N	\N	2
1	Paiement électronique	1	\N	\N	2
4	Caisse	1	\N	\N	3
3	Par gérant ou administrateur	2	\N	\N	3
\.


--
-- Data for Name: op_predef; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.op_predef (od_id, jrn_def_id, od_name, od_item, od_jrn_type, od_direct, od_description) FROM stdin;
\.


--
-- Data for Name: op_predef_detail; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.op_predef_detail (opd_id, od_id, opd_poste, opd_amount, opd_tva_id, opd_quantity, opd_debit, opd_tva_amount, opd_comment, opd_qc) FROM stdin;
\.


--
-- Data for Name: operation_analytique; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.operation_analytique (oa_id, po_id, oa_amount, oa_description, oa_debit, j_id, oa_group, oa_date, oa_row, oa_jrnx_id_source, oa_positive, f_id) FROM stdin;
\.


--
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.parameter (pr_id, pr_value) FROM stdin;
MY_NAME	\N
MY_CP	\N
MY_COMMUNE	\N
MY_TVA	\N
MY_STREET	\N
MY_NUMBER	\N
MY_TEL	\N
MY_PAYS	\N
MY_FAX	\N
MY_ANALYTIC	nu
MY_COUNTRY	BE
MY_STRICT	Y
MY_TVA_USE	Y
MY_PJ_SUGGEST	Y
MY_DATE_SUGGEST	Y
MY_ALPHANUM	N
MY_CHECK_PERIODE	N
MY_UPDLAB	N
MY_STOCK	N
\.


--
-- Data for Name: parm_code; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.parm_code (p_code, p_value, p_comment) FROM stdin;
CUSTOMER	400	Poste comptable de base pour les clients
COMPTE_TVA	451	TVA à payer
BANQUE	550	Poste comptable de base pour les banques
VIREMENT_INTERNE	58	Poste Comptable pour les virements internes
COMPTE_COURANT	56	Poste comptable pour le compte courant
CAISSE	57	Poste comptable pour la caisse
TVA_DNA	6740	Tva non déductible s
TVA_DED_IMPOT	619000	Tva déductible par l'impôt
VENTE	70	Poste comptable de base pour les ventes
DEP_PRIV	4890	Depense a charge du gerant
SUPPLIER	440	Poste par défaut pour les fournisseurs
DNA	67	Dépense non déductible
\.


--
-- Data for Name: parm_money; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.parm_money (pm_id, pm_code, pm_rate) FROM stdin;
1	EUR	1.0000
\.


--
-- Data for Name: parm_poste; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.parm_poste (p_value, p_type) FROM stdin;
1	PAS
101	PASINV
141	PASINV
42	PAS
43	PAS
44	PAS
45	PAS
46	PAS
47	PAS
48	PAS
492	PAS
493	PAS
2	ACT
2409	ACTINV
3	ACT
5	ACT
491	ACT
490	ACT
6	CHA
7	PRO
4	ACT
40	ACT
5501	ACTINV
5511	ACTINV
5521	ACTINV
5531	ACTINV
5541	ACTINV
5551	ACTINV
5561	ACTINV
5571	ACTINV
5581	ACTINV
5591	ACTINV
6311	CHAINV
6321	CHAINV
6331	CHAINV
6341	CHAINV
6351	CHAINV
6361	CHAINV
6371	CHAINV
649	CHAINV
6511	CHAINV
6701	CHAINV
608	CHAINV
709	PROINV
\.


--
-- Data for Name: profile_menu_type; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.profile_menu_type (pm_type, pm_desc) FROM stdin;
P	Impression
S	Extension
E	Menu
M	Module
\.


--
-- Data for Name: profile_menu; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.profile_menu (pm_id, me_code, me_code_dep, p_id, p_order, p_type_display, pm_default, pm_id_dep) FROM stdin;
59	CFGPAY	DIVPARM	1	40	E	0	56
68	CFGATCARD	DIVPARM	1	90	E	0	56
61	CFGACC	DIVPARM	1	60	E	0	56
54	COMPANY	PARAM	1	10	E	0	45
2	ANC	\N	1	500	M	0	\N
526	PRINTGL	PRINT	1	200	E	0	6
523	PRINTBAL	PRINT	1	500	E	0	6
529	PRINTREPORT	PRINT	1	850	E	0	6
527	PRINTJRN	PRINT	1	100	E	0	6
530	PRINTREC	PRINT	1	1000	E	0	6
524	PRINTBILAN	PRINT	1	900	E	0	6
686	PRINTREPORT	PRINT	2	850	E	0	716
651	ANCHOP	ANCIMP	1	100	E	0	78
173	COMPTA	\N	1	400	M	0	\N
55	PERIODE	PARAM	1	20	E	0	45
56	DIVPARM	PARAM	1	30	E	0	45
652	ANCGL	ANCIMP	1	200	E	0	78
60	CFGTVA	DIVPARM	1	50	E	0	56
653	ANCBS	ANCIMP	1	300	E	0	78
654	ANCBC2	ANCIMP	1	400	E	0	78
655	ANCTAB	ANCIMP	1	500	E	0	78
656	ANCBCC	ANCIMP	1	600	E	0	78
657	ANCGR	ANCIMP	1	700	E	0	78
658	CSV:AncGrandLivre	\N	1	\N	P	0	\N
662	new_line	\N	1	350	M	0	\N
67	CFGCATDOC	DIVPARM	1	80	E	0	56
69	CFGPCMN	PARAM	1	40	E	0	45
23	LET	COMPTA	1	80	E	0	173
72	PREDOP	PARAM	1	70	E	0	45
75	PLANANC	ANC	1	10	E	0	2
65	CFGCARDCAT	DIVPARM	1	70	E	0	56
76	ANCODS	ANC	1	20	E	0	2
77	ANCGROUP	ANC	1	30	E	0	2
78	ANCIMP	ANC	1	40	E	0	2
45	PARAM	\N	1	200	M	0	\N
79	PREFERENCE	\N	1	150	M	0	\N
37	CUST	GESTION	1	10	E	0	34
38	SUPPL	GESTION	1	20	E	0	34
39	ADM	GESTION	1	30	E	0	34
40	STOCK	GESTION	1	50	E	0	34
41	FORECAST	GESTION	1	70	E	0	34
42	FOLLOW	GESTION	1	80	E	0	34
29	VERIFBIL	ADV	1	210	E	0	28
31	PREDOP	ADV	1	230	E	0	28
32	OPEN	ADV	1	240	E	0	28
33	REPORT	ADV	1	250	E	0	28
43	HIST	COMPTA	1	10	E	0	173
28	ADV	COMPTA	1	200	E	0	173
688	PLANANC	ANC	2	10	E	0	727
690	ANCODS	ANC	2	20	E	0	727
528	PRINTPOSTE	PRINT	1	300	E	0	6
683	PRINTGL	PRINT	2	200	E	0	716
685	PRINTBAL	PRINT	2	500	E	0	716
694	PRINTJRN	PRINT	2	100	E	0	716
695	PRINTREC	PRINT	2	1000	E	0	716
696	PRINTBILAN	PRINT	2	900	E	0	716
53	ACCESS	\N	1	250	M	0	\N
785	STOCK_HISTO	STOCK	1	10	E	\N	30
820	STOCK_HISTO	STOCK	1	10	E	\N	40
786	STOCK_STATE	STOCK	1	20	E	\N	30
821	STOCK_STATE	STOCK	1	20	E	\N	40
789	STOCK_INVHISTO	STOCK	1	30	E	\N	30
822	STOCK_INVHISTO	STOCK	1	30	E	\N	40
795	STOCK_INV	STOCK	1	30	E	\N	30
823	STOCK_INV	STOCK	1	30	E	\N	40
824	PRINTGL	PRINT	1	200	E	0	35
825	PRINTBAL	PRINT	1	500	E	0	35
826	PRINTREPORT	PRINT	1	850	E	0	35
827	PRINTJRN	PRINT	1	100	E	0	35
828	PRINTREC	PRINT	1	1000	E	0	35
829	PRINTBILAN	PRINT	1	900	E	0	35
830	PRINTPOSTE	PRINT	1	300	E	0	35
816	BALAGE	PRINT	1	550	E	0	6
831	BALAGE	PRINT	1	550	E	0	35
787	STOCK_HISTO	STOCK	2	10	E	\N	702
832	STOCK_HISTO	STOCK	2	10	E	\N	706
788	STOCK_STATE	STOCK	2	20	E	\N	702
833	STOCK_STATE	STOCK	2	20	E	\N	706
790	STOCK_INVHISTO	STOCK	2	30	E	\N	702
834	STOCK_INVHISTO	STOCK	2	30	E	\N	706
796	STOCK_INV	STOCK	2	30	E	\N	702
835	STOCK_INV	STOCK	2	30	E	\N	706
836	PRINTREPORT	PRINT	2	850	E	0	719
837	PRINTGL	PRINT	2	200	E	0	719
838	PRINTBAL	PRINT	2	500	E	0	719
839	PRINTJRN	PRINT	2	100	E	0	719
840	PRINTREC	PRINT	2	1000	E	0	719
841	PRINTBILAN	PRINT	2	900	E	0	719
769	PRINTPOSTE	PRINT	2	300	E	0	716
842	PRINTPOSTE	PRINT	2	300	E	0	719
817	BALAGE	PRINT	2	550	E	0	716
843	BALAGE	PRINT	2	550	E	0	719
123	CSV:histo	\N	1	\N	P	0	\N
20	LOGOUT	\N	1	300	M	0	\N
35	PRINT	GESTION	1	40	E	0	34
124	CSV:ledger	\N	1	\N	P	0	\N
125	PDF:ledger	\N	1	\N	P	0	\N
6	PRINT	COMPTA	1	60	E	0	173
126	CSV:postedetail	\N	1	\N	P	0	\N
3	MENUACH	COMPTA	1	30	E	0	173
34	GESTION	\N	1	450	M	0	\N
18	MENUODS	COMPTA	1	50	E	0	173
88	ODS	MENUODS	1	10	E	0	18
4	VENMENU	COMPTA	1	20	E	0	173
90	VEN	VENMENU	1	10	E	0	4
19	FIN	MENUFIN	1	10	E	0	92
73	CFGDOC	PARAM	1	80	E	0	45
74	CFGLED	PARAM	1	90	E	0	45
71	CFGSEC	PARAM	1	60	E	0	45
82	EXT	\N	1	550	M	0	\N
95	FREC	MENUFIN	1	40	E	0	92
94	FSALDO	MENUFIN	1	30	E	0	92
27	LETACC	LET	1	20	E	0	23
24	LETCARD	LET	1	10	E	0	23
167	MOD	PARAM	1	10	E	0	45
92	MENUFIN	COMPTA	1	40	E	0	173
151	SEARCH	\N	1	600	M	0	\N
85	ACH	MENUACH	1	10	E	0	3
127	PDF:postedetail	\N	1	\N	P	0	\N
128	CSV:fichedetail	\N	1	\N	P	0	\N
129	PDF:fichedetail	\N	1	\N	P	0	\N
130	CSV:fiche_balance	\N	1	\N	P	0	\N
131	PDF:fiche_balance	\N	1	\N	P	0	\N
132	CSV:report	\N	1	\N	P	0	\N
133	PDF:report	\N	1	\N	P	0	\N
134	CSV:fiche	\N	1	\N	P	0	\N
135	PDF:fiche	\N	1	\N	P	0	\N
136	CSV:glcompte	\N	1	\N	P	0	\N
137	PDF:glcompte	\N	1	\N	P	0	\N
138	PDF:sec	\N	1	\N	P	0	\N
139	CSV:AncList	\N	1	\N	P	0	\N
140	CSV:AncBalSimple	\N	1	\N	P	0	\N
141	PDF:AncBalSimple	\N	1	\N	P	0	\N
142	CSV:AncBalDouble	\N	1	\N	P	0	\N
143	PDF:AncBalDouble	\N	1	\N	P	0	\N
144	CSV:balance	\N	1	\N	P	0	\N
145	PDF:balance	\N	1	\N	P	0	\N
146	CSV:AncTable	\N	1	\N	P	0	\N
147	CSV:AncAccList	\N	1	\N	P	0	\N
148	CSV:AncBalGroup	\N	1	\N	P	0	\N
149	OTH:Bilan	\N	1	\N	P	0	\N
1	DASHBOARD	\N	1	100	M	1	\N
172	CFGPRO	MOD	1	\N	E	0	167
171	CFGMENU	MOD	1	\N	E	0	167
86	ACHISTO	MENUACH	1	20	E	0	3
91	VEHISTO	VENMENU	1	20	E	0	4
781	BK	GESTION	1	35	E	0	34
783	CSV:ActionGestion	\N	1	\N	P	0	\N
784	CFGSTOCK	PARAM	1	40	E	0	45
30	STOCK	COMPTA	1	90	E	0	173
791	CSV:StockHisto	\N	1	\N	P	\N	\N
792	CSV:StockResmList	\N	1	\N	P	\N	\N
779	CSV:reportinit	\N	1	\N	P	\N	\N
797	CFGDOCST	DIVPARM	1	9	E	0	56
36	CARD	GESTION	1	60	E	0	34
5	CARD	COMPTA	1	70	E	0	173
525	CFGCARD	PARAM	1	400	E	0	45
93	FIHISTO	MENUFIN	1	20	E	0	92
89	ODHISTO	MENUODS	1	20	E	0	18
799	NAVI	\N	1	90	M	0	\N
801	BOOKMARK	\N	1	85	M	0	\N
803	CFGTAG	PARAM	1	390	E	0	45
804	CSV:Reconciliation	\N	1	0	P	0	\N
806	MANAGER	GESTION	1	25	E	0	34
808	CFGDEFMENU	MOD	1	30	E	0	167
809	AGENDA	NULL	1	410	M	0	\N
811	PDF:AncReceipt	\N	1	\N	P	0	\N
812	ANCKEY	ANC	1	15	E	0	2
814	CFGPLUGIN	PARAM	1	15	E	0	45
818	CSV:balance_age	\N	1	\N	P	0	\N
668	ANCHOP	ANCIMP	2	100	E	0	692
669	COMPTA	\N	2	400	M	0	\N
672	ANCGL	ANCIMP	2	200	E	0	692
674	ANCBS	ANCIMP	2	300	E	0	692
675	ANCBC2	ANCIMP	2	400	E	0	692
676	ANCTAB	ANCIMP	2	500	E	0	692
677	ANCBCC	ANCIMP	2	600	E	0	692
678	ANCGR	ANCIMP	2	700	E	0	692
679	CSV:AncGrandLivre	\N	2	\N	P	0	\N
680	new_line	\N	2	350	M	0	\N
684	LET	COMPTA	2	80	E	0	669
717	CSV:ledger	\N	2	\N	P	0	\N
718	PDF:ledger	\N	2	\N	P	0	\N
719	PRINT	COMPTA	2	60	E	0	669
720	CSV:postedetail	\N	2	\N	P	0	\N
721	MENUACH	COMPTA	2	30	E	0	669
723	GESTION	\N	2	450	M	0	\N
724	MENUODS	COMPTA	2	50	E	0	669
725	ODS	MENUODS	2	10	E	0	724
727	ANC	\N	2	500	M	0	\N
728	VENMENU	COMPTA	2	20	E	0	669
729	VEN	VENMENU	2	10	E	0	728
731	FIN	MENUFIN	2	10	E	0	742
735	EXT	\N	2	550	M	0	\N
736	FREC	MENUFIN	2	40	E	0	742
737	FSALDO	MENUFIN	2	30	E	0	742
738	LETACC	LET	2	20	E	0	684
691	ANCGROUP	ANC	2	30	E	0	727
692	ANCIMP	ANC	2	40	E	0	727
697	PREFERENCE	\N	2	150	M	0	\N
698	CUST	GESTION	2	10	E	0	723
699	SUPPL	GESTION	2	20	E	0	723
700	ADM	GESTION	2	30	E	0	723
702	STOCK	GESTION	2	50	E	0	723
703	FORECAST	GESTION	2	70	E	0	723
704	FOLLOW	GESTION	2	80	E	0	723
705	VERIFBIL	ADV	2	210	E	0	712
707	PREDOP	ADV	2	230	E	0	712
708	OPEN	ADV	2	240	E	0	712
709	REPORT	ADV	2	250	E	0	712
711	HIST	COMPTA	2	10	E	0	669
712	ADV	COMPTA	2	200	E	0	669
713	ACCESS	\N	2	250	M	0	\N
714	CSV:histo	\N	2	\N	P	0	\N
715	LOGOUT	\N	2	300	M	0	\N
716	PRINT	GESTION	2	40	E	0	723
739	LETCARD	LET	2	10	E	0	684
742	MENUFIN	COMPTA	2	40	E	0	669
744	SEARCH	\N	2	600	M	0	\N
745	ACH	MENUACH	2	10	E	0	721
746	PDF:postedetail	\N	2	\N	P	0	\N
747	CSV:fichedetail	\N	2	\N	P	0	\N
748	PDF:fichedetail	\N	2	\N	P	0	\N
749	CSV:fiche_balance	\N	2	\N	P	0	\N
750	PDF:fiche_balance	\N	2	\N	P	0	\N
751	CSV:report	\N	2	\N	P	0	\N
752	PDF:report	\N	2	\N	P	0	\N
722	ACHISTO	MENUACH	2	20	E	0	721
730	VEHISTO	VENMENU	2	20	E	0	728
753	CSV:fiche	\N	2	\N	P	0	\N
754	PDF:fiche	\N	2	\N	P	0	\N
755	CSV:glcompte	\N	2	\N	P	0	\N
756	PDF:glcompte	\N	2	\N	P	0	\N
757	PDF:sec	\N	2	\N	P	0	\N
758	CSV:AncList	\N	2	\N	P	0	\N
759	CSV:AncBalSimple	\N	2	\N	P	0	\N
760	PDF:AncBalSimple	\N	2	\N	P	0	\N
761	CSV:AncBalDouble	\N	2	\N	P	0	\N
762	PDF:AncBalDouble	\N	2	\N	P	0	\N
763	CSV:balance	\N	2	\N	P	0	\N
764	PDF:balance	\N	2	\N	P	0	\N
765	CSV:AncTable	\N	2	\N	P	0	\N
766	CSV:AncAccList	\N	2	\N	P	0	\N
767	CSV:AncBalGroup	\N	2	\N	P	0	\N
768	OTH:Bilan	\N	2	\N	P	0	\N
772	DASHBOARD	\N	2	100	M	1	\N
782	BK	GESTION	2	35	E	0	723
706	STOCK	COMPTA	2	90	E	0	669
793	CSV:StockHisto	\N	2	\N	P	\N	\N
794	CSV:StockResmList	\N	2	\N	P	\N	\N
780	CSV:reportinit	\N	2	\N	P	\N	\N
798	CFGDOCST	DIVPARM	2	9	E	0	\N
701	CARD	GESTION	2	60	E	0	723
710	CARD	COMPTA	2	70	E	0	669
770	CFGCARD	PARAM	2	400	E	0	\N
743	FIHISTO	MENUFIN	2	20	E	0	742
726	ODHISTO	MENUODS	2	20	E	0	724
800	NAVI	\N	2	90	M	0	\N
802	BOOKMARK	\N	2	85	M	0	\N
805	CSV:Reconciliation	\N	2	\N	P	0	\N
807	MANAGER	GESTION	2	25	E	0	723
810	AGENDA	NULL	2	410	M	0	\N
813	ANCKEY	ANC	2	15	E	0	727
815	CFGPLUGIN	PARAM	2	15	E	0	\N
819	CSV:balance_age	\N	2	\N	P	0	\N
844	CONTACT	GESTION	1	22	E	0	34
845	CONTACT	GESTION	2	22	E	0	723
846	RAW:receipt	\N	1	\N	P	\N	\N
847	RAW:receipt	\N	2	\N	P	\N	\N
848	RAW:document	\N	1	\N	P	\N	\N
849	RAW:document	\N	2	\N	P	\N	\N
850	RAW:document_template	\N	1	\N	P	\N	\N
851	RAW:document_template	\N	2	\N	P	\N	\N
\.


--
-- Data for Name: stock_repository; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stock_repository (r_id, r_name, r_adress, r_country, r_city, r_phone) FROM stdin;
1	Dépôt par défaut	\N	\N	\N	\N
\.


--
-- Data for Name: profile_sec_repository; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.profile_sec_repository (ur_id, p_id, r_id, ur_right) FROM stdin;
1	1	1	W
2	2	1	W
\.


--
-- Data for Name: profile_user; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.profile_user (user_name, pu_id, p_id) FROM stdin;
phpcompta	1	1
\.


--
-- Data for Name: quant_fin; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.quant_fin (qf_id, qf_bank, jr_id, qf_other, qf_amount) FROM stdin;
\.


--
-- Data for Name: tva_rate; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tva_rate (tva_id, tva_label, tva_rate, tva_comment, tva_poste, tva_both_side) FROM stdin;
1	21%	0.2100	Tva applicable à tout ce qui bien et service divers	4111,4511	0
2	12%	0.1200	Tva 	4112,4512	0
3	6%	0.0600	Tva applicable aux journaux et livres	4113,4513	0
4	0%	0.0000	Aucune tva n'est applicable	4114,4514	0
6	EXPORT	0.0000	Tva pour les exportations	41141,45144	0
5	INTRA	0.0000	Tva pour les livraisons / acquisition intra communautaires	41142,45142	0
7	COC	0.0000	Opérations avec des cocontractants	41144,45144	0
8	ART44	0.0000	Opérations pour les opérations avec des assujettis à l\\'art 44 Code TVA	41143,45143	0
\.


--
-- Data for Name: quant_purchase; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.quant_purchase (qp_id, qp_internal, j_id, qp_fiche, qp_quantite, qp_price, qp_vat, qp_vat_code, qp_nd_amount, qp_nd_tva, qp_nd_tva_recup, qp_supplier, qp_valid, qp_dep_priv, qp_vat_sided, qp_unit) FROM stdin;
\.


--
-- Data for Name: quant_sold; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.quant_sold (qs_id, qs_internal, qs_fiche, qs_quantite, qs_price, qs_vat, qs_vat_code, qs_client, qs_valid, j_id, qs_vat_sided, qs_unit) FROM stdin;
\.


--
-- Data for Name: stock_change; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stock_change (c_id, c_comment, c_date, tech_user, r_id, tech_date) FROM stdin;
\.


--
-- Data for Name: stock_goods; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.stock_goods (sg_id, j_id, f_id, sg_code, sg_quantity, sg_type, sg_date, sg_tech_date, sg_tech_user, sg_comment, sg_exercice, r_id, c_id) FROM stdin;
\.


--
-- Data for Name: tmp_stockgood; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tmp_stockgood (s_id, s_date) FROM stdin;
\.


--
-- Data for Name: tmp_stockgood_detail; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tmp_stockgood_detail (d_id, s_id, sg_code, s_qin, s_qout, r_id, f_id) FROM stdin;
\.


--
-- Data for Name: todo_list; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.todo_list (tl_id, tl_date, tl_title, tl_desc, use_login, is_public) FROM stdin;
\.


--
-- Data for Name: todo_list_shared; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.todo_list_shared (id, todo_list_id, use_login) FROM stdin;
\.


--
-- Data for Name: tool_uos; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.tool_uos (uos_value) FROM stdin;
\.


--
-- Data for Name: user_active_security; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_active_security (id, us_login, us_ledger, us_action) FROM stdin;
1	phpcompta	Y	Y
\.


--
-- Data for Name: user_filter; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_filter (id, login, nb_jrn, date_start, date_end, description, amount_min, amount_max, qcode, accounting, r_jrn, date_paid_start, date_paid_end, ledger_type, all_ledger, filter_name, unpaid) FROM stdin;
\.


--
-- Data for Name: user_local_pref; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_local_pref (user_id, parameter_type, parameter_value) FROM stdin;
\.


--
-- Data for Name: user_sec_act; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_sec_act (ua_id, ua_login, ua_act_id) FROM stdin;
\.


--
-- Data for Name: user_sec_action_profile; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_sec_action_profile (ua_id, p_id, p_granted, ua_right) FROM stdin;
1	1	1	W
2	1	2	W
3	1	-1	W
4	2	1	W
5	2	2	W
6	2	-1	W
\.


--
-- Data for Name: user_sec_jrn; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.user_sec_jrn (uj_id, uj_login, uj_jrn_id, uj_priv) FROM stdin;
\.


--
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public.version (val, v_description, v_date) FROM stdin;
126	\N	\N
127	Add filter for search, inactive tag or ledger, type of operation, security	2018-02-10 22:46:38.653432
128	Add a view to manage VAT	2018-02-10 22:46:39.22354
\.


--
-- Name: action_detail_ad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_detail_ad_id_seq', 1, false);


--
-- Name: action_gestion_ag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_gestion_ag_id_seq', 1, false);


--
-- Name: action_gestion_comment_agc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_gestion_comment_agc_id_seq', 1, false);


--
-- Name: action_gestion_operation_ago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_gestion_operation_ago_id_seq', 1, false);


--
-- Name: action_gestion_related_aga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_gestion_related_aga_id_seq', 1, false);


--
-- Name: action_person_ap_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_person_ap_id_seq', 1, false);


--
-- Name: action_tags_at_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.action_tags_at_id_seq', 1, false);


--
-- Name: bilan_b_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.bilan_b_id_seq', 9, true);


--
-- Name: bookmark_b_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.bookmark_b_id_seq', 1, false);


--
-- Name: bud_card_bc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.bud_card_bc_id_seq', 1, false);


--
-- Name: bud_detail_bd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.bud_detail_bd_id_seq', 1, false);


--
-- Name: bud_detail_periode_bdp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.bud_detail_periode_bdp_id_seq', 1, false);


--
-- Name: del_action_del_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.del_action_del_id_seq', 1, false);


--
-- Name: del_jrn_dj_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.del_jrn_dj_id_seq', 1, false);


--
-- Name: del_jrnx_djx_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.del_jrnx_djx_id_seq', 1, false);


--
-- Name: document_d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.document_d_id_seq', 1, false);


--
-- Name: document_modele_md_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.document_modele_md_id_seq', 1, false);


--
-- Name: document_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.document_seq', 1, false);


--
-- Name: document_state_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.document_state_s_id_seq', 100, false);


--
-- Name: document_type_dt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.document_type_dt_id_seq', 25, false);


--
-- Name: extension_ex_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.extension_ex_id_seq', 1, true);


--
-- Name: forecast_cat_fc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.forecast_cat_fc_id_seq', 1, false);


--
-- Name: forecast_f_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.forecast_f_id_seq', 1, false);


--
-- Name: forecast_item_fi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.forecast_item_fi_id_seq', 1, false);


--
-- Name: historique_analytique_ha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.historique_analytique_ha_id_seq', 1, false);


--
-- Name: jnt_letter_jl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.jnt_letter_jl_id_seq', 1, false);


--
-- Name: jrn_info_ji_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.jrn_info_ji_id_seq', 1, false);


--
-- Name: jrn_note_n_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.jrn_note_n_id_seq', 1, false);


--
-- Name: jrn_periode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.jrn_periode_id_seq', 52, true);


--
-- Name: key_distribution_activity_ka_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.key_distribution_activity_ka_id_seq', 1, false);


--
-- Name: key_distribution_detail_ke_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.key_distribution_detail_ke_id_seq', 1, false);


--
-- Name: key_distribution_kd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.key_distribution_kd_id_seq', 1, false);


--
-- Name: key_distribution_ledger_kl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.key_distribution_ledger_kl_id_seq', 1, false);


--
-- Name: letter_cred_lc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.letter_cred_lc_id_seq', 1, false);


--
-- Name: letter_deb_ld_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.letter_deb_ld_id_seq', 1, false);


--
-- Name: link_action_type_l_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.link_action_type_l_id_seq', 1, false);


--
-- Name: menu_default_md_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.menu_default_md_id_seq', 2, true);


--
-- Name: mod_payment_mp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.mod_payment_mp_id_seq', 10, true);


--
-- Name: op_def_op_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.op_def_op_seq', 1, false);


--
-- Name: op_predef_detail_opd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.op_predef_detail_opd_id_seq', 1, false);


--
-- Name: plan_analytique_pa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.plan_analytique_pa_id_seq', 1, false);


--
-- Name: poste_analytique_po_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.poste_analytique_po_id_seq', 1, false);


--
-- Name: profile_menu_pm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.profile_menu_pm_id_seq', 851, true);


--
-- Name: profile_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.profile_p_id_seq', 11, true);


--
-- Name: profile_sec_repository_ur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.profile_sec_repository_ur_id_seq', 2, true);


--
-- Name: profile_user_pu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.profile_user_pu_id_seq', 6, true);


--
-- Name: quant_fin_qf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.quant_fin_qf_id_seq', 1, false);


--
-- Name: s_attr_def; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_attr_def', 9001, false);


--
-- Name: s_cbc; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_cbc', 1, false);


--
-- Name: s_central; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_central', 1, false);


--
-- Name: s_central_order; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_central_order', 1, false);


--
-- Name: s_centralized; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_centralized', 1, false);


--
-- Name: s_currency; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_currency', 1, true);


--
-- Name: s_fdef; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_fdef', 6, true);


--
-- Name: s_fiche; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_fiche', 20, true);


--
-- Name: s_fiche_def_ref; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_fiche_def_ref', 16, true);


--
-- Name: s_form; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_form', 1, false);


--
-- Name: s_formdef; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_formdef', 1, false);


--
-- Name: s_grpt; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_grpt', 2, true);


--
-- Name: s_idef; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_idef', 1, false);


--
-- Name: s_internal; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_internal', 1, false);


--
-- Name: s_invoice; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_invoice', 1, false);


--
-- Name: s_isup; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_isup', 1, false);


--
-- Name: s_jnt_fic_att_value; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jnt_fic_att_value', 371, true);


--
-- Name: s_jnt_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jnt_id', 56, true);


--
-- Name: s_jrn; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn', 1, false);


--
-- Name: s_jrn_1; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_1', 1, false);


--
-- Name: s_jrn_2; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_2', 1, false);


--
-- Name: s_jrn_3; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_3', 1, false);


--
-- Name: s_jrn_4; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_4', 1, false);


--
-- Name: s_jrn_def; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_def', 5, false);


--
-- Name: s_jrn_op; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_op', 1, false);


--
-- Name: s_jrn_pj1; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_pj1', 1, false);


--
-- Name: s_jrn_pj2; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_pj2', 1, false);


--
-- Name: s_jrn_pj3; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_pj3', 1, false);


--
-- Name: s_jrn_pj4; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_pj4', 1, false);


--
-- Name: s_jrn_rapt; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrn_rapt', 1, false);


--
-- Name: s_jrnaction; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrnaction', 5, true);


--
-- Name: s_jrnx; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_jrnx', 1, false);


--
-- Name: s_oa_group; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_oa_group', 1, true);


--
-- Name: s_periode; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_periode', 91, true);


--
-- Name: s_quantity; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_quantity', 7, true);


--
-- Name: s_stock_goods; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_stock_goods', 1, false);


--
-- Name: s_tva; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_tva', 1001, true);


--
-- Name: s_user_act; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_user_act', 1, false);


--
-- Name: s_user_jrn; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.s_user_jrn', 1, false);


--
-- Name: seq_bud_hypothese_bh_id; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_bud_hypothese_bh_id', 1, false);


--
-- Name: seq_doc_type_1; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_1', 1, false);


--
-- Name: seq_doc_type_10; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_10', 1, false);


--
-- Name: seq_doc_type_2; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_2', 1, false);


--
-- Name: seq_doc_type_20; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_20', 1, false);


--
-- Name: seq_doc_type_21; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_21', 1, false);


--
-- Name: seq_doc_type_22; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_22', 1, false);


--
-- Name: seq_doc_type_3; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_3', 1, false);


--
-- Name: seq_doc_type_4; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_4', 1, false);


--
-- Name: seq_doc_type_5; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_5', 1, false);


--
-- Name: seq_doc_type_6; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_6', 1, false);


--
-- Name: seq_doc_type_7; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_7', 1, false);


--
-- Name: seq_doc_type_8; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_8', 1, false);


--
-- Name: seq_doc_type_9; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.seq_doc_type_9', 1, false);


--
-- Name: stock_change_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.stock_change_c_id_seq', 1, false);


--
-- Name: stock_repository_r_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.stock_repository_r_id_seq', 1, true);


--
-- Name: tags_t_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.tags_t_id_seq', 1, false);


--
-- Name: tmp_pcmn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.tmp_pcmn_id_seq', 1034, true);


--
-- Name: tmp_stockgood_detail_d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.tmp_stockgood_detail_d_id_seq', 1, false);


--
-- Name: tmp_stockgood_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.tmp_stockgood_s_id_seq', 1, false);


--
-- Name: todo_list_shared_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.todo_list_shared_id_seq', 1, false);


--
-- Name: todo_list_tl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.todo_list_tl_id_seq', 1, false);


--
-- Name: uos_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.uos_pk_seq', 1, false);


--
-- Name: user_active_security_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.user_active_security_id_seq', 1, true);


--
-- Name: user_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.user_filter_id_seq', 1, false);


--
-- Name: user_sec_action_profile_ua_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
--

SELECT pg_catalog.setval('public.user_sec_action_profile_ua_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

