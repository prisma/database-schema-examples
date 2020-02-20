--
-- PostgreSQL database dump
--
-- Dumped from database version 9.6.3
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
  -- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.accounts (
    id,
    username,
    domain,
    secret,
    private_key,
    public_key,
    remote_url,
    salmon_url,
    hub_url,
    created_at,
    updated_at,
    note,
    display_name,
    uri,
    url,
    avatar_file_name,
    avatar_content_type,
    avatar_file_size,
    avatar_updated_at,
    header_file_name,
    header_content_type,
    header_file_size,
    header_updated_at,
    avatar_remote_url,
    subscription_expires_at,
    locked,
    header_remote_url,
    last_webfingered_at,
    inbox_url,
    outbox_url,
    shared_inbox_url,
    followers_url,
    protocol,
    memorial,
    moved_to_account_id,
    featured_collection_url,
    fields,
    actor_type,
    discoverable,
    also_known_as,
    silenced_at,
    suspended_at,
    trust_level
  )
FROM stdin;
-99 mastodon.dev \ N -----BEGIN RSA PRIVATE KEY-----\nMIIEpgIBAAKCAQEAvzpywGkkfZhG0U5F9Dj99Q+5UOootZFCgu1sy/rkw4FgHS7p\ng1bs6LdVGuFFQKWzmZGUmXSDsgvEOQqy1487SbEGgVpKJwkTp1c/2/7w1GIQLD7F\nwdR1hz0edAiphDtWgvDJ/2fBabvft/alWZMFdHHGUpbuggeFpkhPxEI0vbUF29JM\nHlNkriv3R3i8ICiO7C3Rz+qTgnjB2GHs7SdhOAsXBleOWJGQ8nseelcSEFi1OVUO\nadArQPQDmAdTi8VabdHfDT0sr4z1ZxcBDZVEme3JAyCT7NcT1WPYRlBr80JdArlM\nl1lXA2tchDH5yvh8bxGz5NQHC8gW0iGgsNJdbwIDAQABAoIBAQCKlkljuM+BVkK8\nngWEoWkrmWGsiodGTyfsyzT1/7abGcAWZlFFplG7tmIvQON3np8yxJb1P8PR3UUw\nMdi68Er/dRRJ2q2y7JkZxdm6DmFrCka+Sh/4AYnLoTfY0A5KjtZ7vxYly4QYpNfV\n8yKScEKbyXj5kfj4s4rgn7dvfKvMb4s0R0aqdViUlSynWDKx3v+SGWC1wFQm4H67\nSM9VEdD2pr7UpkRO56cc8dWQp75YBqzaceex+gkVDYbh12p/62fB4hXxAeoaY0kC\n7i3fQ/Vc+0gSjJwLC/5s9mJ/XMbruDJDCrRhTzwFWIi9RFPO2t72Jl34JZeByZ9Z\ni7jwPKsBAoGBAO/7+a8Oqw3jPR3ZlfoEoJGbwbvyhAIv36dkPdIu+HnmdZqCxHm3\niIkefDrBAoPXoILEKIF3oINRJeBzKAp7e8TdiYeZJzgD4xKEZyc6lFftec9QATqU\nsMSejOURaw1xkoYujiPMdzlWTzxXz8e8A/pgbBN99QVoaUMMDY8Ny+xRAoGBAMv9\nf7qAm9xz2AhRncyeFnLD+iYVGvgUnEORuTKDXLT+7PI2MNlw+pikNthTtlsVSpq2\n5QwKig+ZyhsgkcbCpAHk6oPDeCo+q/sVyazSQr4vk2HYRCMwLYCfuShMfHgH1g3J\n4SBc0rGNFzhrGFOAfuPYuA86DQRFlGAcQe8/0f2/AoGBANr66N2lG87DUKxhNCn8\neOwE3WX7qBs6xfE/Ve3pcFADS8Kemluablr4V1Fhd0MIye0owvFIUE4jCNXjHmFa\nRhjgMbNqu8+wNE5cRKgWGvCUwDa8gTKMJTR0nIoVN8L/pD0OVCM0WoIWUJz2X6GY\n3WRlAZlTsPWrTYmhgOnNJAvRAoGBAMblGNEj7NR6Lz2NNqr3yTOFWjYfhfg1QFex\nkj1qT846cZWIuQCKZAzIsKEknj0Y+XD4u0OOUyb68FCa5QhDZ95g8TggMt4d1Vov\n2EAlkuYVRUK1t1oH85XiJorgaMwv98nh+Ruw5c4wn19nLITeWNqXyH8wPtjXbuB3\nLOK1+23JAoGBAO/wU8CIg3feqDXmPRjyElTC134jWf7E1g7iPfHJhOCO4rVGJpX6\nDSAWDWMkYhSOs7/GPi16IS7+xk6IV66iBX4/42mnexMdX1rhU7Y6Qc9lEMbzbB5L\ntSmvRhDKmhWg4l65vbhrgxTSHyiqyC9FY5WuE35c3a4vitX6rLNSu8RJ\n-----END RSA PRIVATE KEY-----\n	-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvzpywGkkfZhG0U5F9Dj9\n9Q+5UOootZFCgu1sy/rkw4FgHS7pg1bs6LdVGuFFQKWzmZGUmXSDsgvEOQqy1487\nSbEGgVpKJwkTp1c/2/7w1GIQLD7FwdR1hz0edAiphDtWgvDJ/2fBabvft/alWZMF\ndHHGUpbuggeFpkhPxEI0vbUF29JMHlNkriv3R3i8ICiO7C3Rz+qTgnjB2GHs7Sdh\nOAsXBleOWJGQ8nseelcSEFi1OVUOadArQPQDmAdTi8VabdHfDT0sr4z1ZxcBDZVE\nme3JAyCT7NcT1WPYRlBr80JdArlMl1lXA2tchDH5yvh8bxGz5NQHC8gW0iGgsNJd\nbwIDAQAB\n-----END PUBLIC KEY-----\n				2020-02-11 18:20:20.611702	2020-02-11 18:20:20.611702				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t		\N					0	f	\N	\N	\N	Application	\N	\N	\N	\N	\N
  \.--
  -- Data for Name: account_aliases; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_aliases (
    id,
    account_id,
    acct,
    uri,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.conversations (id, uri, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: account_conversations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_conversations (
    id,
    account_id,
    conversation_id,
    participant_account_ids,
    status_ids,
    last_status_id,
    lock_version,
    unread
  )
FROM stdin;
\.--
  -- Data for Name: account_domain_blocks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_domain_blocks (id, domain, created_at, updated_at, account_id)
FROM stdin;
\.--
  -- Data for Name: account_identity_proofs; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_identity_proofs (
    id,
    account_id,
    provider,
    provider_username,
    token,
    verified,
    live,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: account_migrations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_migrations (
    id,
    account_id,
    acct,
    followers_count,
    target_account_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: account_moderation_notes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_moderation_notes (
    id,
    content,
    account_id,
    target_account_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: account_pins; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_pins (
    id,
    account_id,
    target_account_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: account_stats; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_stats (
    id,
    account_id,
    statuses_count,
    following_count,
    followers_count,
    created_at,
    updated_at,
    last_status_at,
    lock_version
  )
FROM stdin;
\.--
  -- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.tags (
    id,
    name,
    created_at,
    updated_at,
    usable,
    trendable,
    listable,
    reviewed_at,
    requested_review_at,
    last_status_at,
    max_score,
    max_score_at
  )
FROM stdin;
\.--
  -- Data for Name: account_tag_stats; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_tag_stats (
    id,
    tag_id,
    accounts_count,
    hidden,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: account_warning_presets; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_warning_presets (id, text, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: account_warnings; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.account_warnings (
    id,
    account_id,
    target_account_id,
    action,
    text,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: accounts_tags; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.accounts_tags (account_id, tag_id)
FROM stdin;
\.--
  -- Data for Name: admin_action_logs; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.admin_action_logs (
    id,
    account_id,
    action,
    target_type,
    target_id,
    recorded_changes,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.announcements (
    id,
    text,
    published,
    all_day,
    scheduled_at,
    starts_at,
    ends_at,
    created_at,
    updated_at,
    published_at
  )
FROM stdin;
\.--
  -- Data for Name: announcement_mutes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.announcement_mutes (
    id,
    account_id,
    announcement_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: custom_emojis; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.custom_emojis (
    id,
    shortcode,
    domain,
    image_file_name,
    image_content_type,
    image_file_size,
    image_updated_at,
    created_at,
    updated_at,
    disabled,
    uri,
    image_remote_url,
    visible_in_picker,
    category_id
  )
FROM stdin;
\.--
  -- Data for Name: announcement_reactions; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.announcement_reactions (
    id,
    account_id,
    announcement_id,
    name,
    custom_emoji_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.ar_internal_metadata (key, value, created_at, updated_at)
FROM stdin;
environment production 2020 -02 -11 18 :20 :20.02909 2020 -02 -11 18 :20 :20.02909 \.--
  -- Data for Name: invites; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.invites (
    id,
    user_id,
    code,
    expires_at,
    max_uses,
    uses,
    created_at,
    updated_at,
    autofollow,
    comment
  )
FROM stdin;
\.--
  -- Data for Name: oauth_applications; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.oauth_applications (
    id,
    name,
    uid,
    secret,
    redirect_uri,
    scopes,
    created_at,
    updated_at,
    superapp,
    website,
    owner_type,
    owner_id,
    confidential
  )
FROM stdin;
1 Web wk - B - IEWa5U850 - S1cb2GeY5ecbHhunQUu1fzWhlIRc 8A7ORAJKmGIzmlYxrpXyjLndljd7rqtWlP4IS3nHLBQ urn :ietf :wg :oauth :2.0 :oob read write follow push 2020 -02 -11 18 :20 :20.36588 2020 -02 -11 18 :20 :20.36588 t \ N \ N \ N t \.--
  -- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.users (
    id,
    email,
    created_at,
    updated_at,
    encrypted_password,
    reset_password_token,
    reset_password_sent_at,
    remember_created_at,
    sign_in_count,
    current_sign_in_at,
    last_sign_in_at,
    current_sign_in_ip,
    last_sign_in_ip,
    admin,
    confirmation_token,
    confirmed_at,
    confirmation_sent_at,
    unconfirmed_email,
    locale,
    encrypted_otp_secret,
    encrypted_otp_secret_iv,
    encrypted_otp_secret_salt,
    consumed_timestep,
    otp_required_for_login,
    last_emailed_at,
    otp_backup_codes,
    filtered_languages,
    account_id,
    disabled,
    moderator,
    invite_id,
    remember_token,
    chosen_languages,
    created_by_application_id,
    approved
  )
FROM stdin;
\.--
  -- Data for Name: backups; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.backups (
    id,
    user_id,
    dump_file_name,
    dump_content_type,
    dump_updated_at,
    processed,
    created_at,
    updated_at,
    dump_file_size
  )
FROM stdin;
\.--
  -- Data for Name: blocks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.blocks (
    id,
    created_at,
    updated_at,
    account_id,
    target_account_id,
    uri
  )
FROM stdin;
\.--
  -- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.statuses (
    id,
    uri,
    text,
    created_at,
    updated_at,
    in_reply_to_id,
    reblog_of_id,
    url,
    sensitive,
    visibility,
    spoiler_text,
    reply,
    language,
    conversation_id,
    local,
    account_id,
    application_id,
    in_reply_to_account_id,
    poll_id,
    deleted_at
  )
FROM stdin;
\.--
  -- Data for Name: bookmarks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.bookmarks (
    id,
    account_id,
    status_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: conversation_mutes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.conversation_mutes (id, conversation_id, account_id)
FROM stdin;
\.--
  -- Data for Name: custom_emoji_categories; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.custom_emoji_categories (id, name, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: custom_filters; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.custom_filters (
    id,
    account_id,
    expires_at,
    phrase,
    context,
    irreversible,
    created_at,
    updated_at,
    whole_word
  )
FROM stdin;
\.--
  -- Data for Name: domain_allows; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.domain_allows (id, domain, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: domain_blocks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.domain_blocks (
    id,
    domain,
    created_at,
    updated_at,
    severity,
    reject_media,
    reject_reports,
    private_comment,
    public_comment
  )
FROM stdin;
\.--
  -- Data for Name: email_domain_blocks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.email_domain_blocks (id, domain, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: favourites; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.favourites (
    id,
    created_at,
    updated_at,
    account_id,
    status_id
  )
FROM stdin;
\.--
  -- Data for Name: featured_tags; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.featured_tags (
    id,
    account_id,
    tag_id,
    statuses_count,
    last_status_at,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: follow_requests; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.follow_requests (
    id,
    created_at,
    updated_at,
    account_id,
    target_account_id,
    show_reblogs,
    uri
  )
FROM stdin;
\.--
  -- Data for Name: follows; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.follows (
    id,
    created_at,
    updated_at,
    account_id,
    target_account_id,
    show_reblogs,
    uri
  )
FROM stdin;
\.--
  -- Data for Name: identities; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.identities (
    id,
    provider,
    uid,
    created_at,
    updated_at,
    user_id
  )
FROM stdin;
\.--
  -- Data for Name: imports; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.imports (
    id,
    type,
    approved,
    created_at,
    updated_at,
    data_file_name,
    data_content_type,
    data_file_size,
    data_updated_at,
    account_id,
    overwrite
  )
FROM stdin;
\.--
  -- Data for Name: lists; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.lists (id, account_id, title, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: list_accounts; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.list_accounts (id, list_id, account_id, follow_id)
FROM stdin;
\.--
  -- Data for Name: markers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.markers (
    id,
    user_id,
    timeline,
    last_read_id,
    lock_version,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: scheduled_statuses; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.scheduled_statuses (id, account_id, scheduled_at, params)
FROM stdin;
\.--
  -- Data for Name: media_attachments; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.media_attachments (
    id,
    status_id,
    file_file_name,
    file_content_type,
    file_file_size,
    file_updated_at,
    remote_url,
    created_at,
    updated_at,
    shortcode,
    type,
    file_meta,
    account_id,
    description,
    scheduled_status_id,
    blurhash
  )
FROM stdin;
\.--
  -- Data for Name: mentions; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.mentions (
    id,
    status_id,
    created_at,
    updated_at,
    account_id,
    silent
  )
FROM stdin;
\.--
  -- Data for Name: mutes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.mutes (
    id,
    created_at,
    updated_at,
    hide_notifications,
    account_id,
    target_account_id
  )
FROM stdin;
\.--
  -- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.notifications (
    id,
    activity_id,
    activity_type,
    created_at,
    updated_at,
    account_id,
    from_account_id
  )
FROM stdin;
\.--
  -- Data for Name: oauth_access_grants; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.oauth_access_grants (
    id,
    token,
    expires_in,
    redirect_uri,
    created_at,
    revoked_at,
    scopes,
    application_id,
    resource_owner_id
  )
FROM stdin;
\.--
  -- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.oauth_access_tokens (
    id,
    token,
    refresh_token,
    expires_in,
    revoked_at,
    created_at,
    scopes,
    application_id,
    resource_owner_id
  )
FROM stdin;
\.--
  -- Data for Name: pghero_space_stats; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.pghero_space_stats (
    id,
    database,
    schema,
    relation,
    size,
    captured_at
  )
FROM stdin;
\.--
  -- Data for Name: polls; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.polls (
    id,
    account_id,
    status_id,
    expires_at,
    options,
    cached_tallies,
    multiple,
    hide_totals,
    votes_count,
    last_fetched_at,
    created_at,
    updated_at,
    lock_version,
    voters_count
  )
FROM stdin;
\.--
  -- Data for Name: poll_votes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.poll_votes (
    id,
    account_id,
    poll_id,
    choice,
    created_at,
    updated_at,
    uri
  )
FROM stdin;
\.--
  -- Data for Name: preview_cards; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.preview_cards (
    id,
    url,
    title,
    description,
    image_file_name,
    image_content_type,
    image_file_size,
    image_updated_at,
    type,
    html,
    author_name,
    author_url,
    provider_name,
    provider_url,
    width,
    height,
    created_at,
    updated_at,
    embed_url
  )
FROM stdin;
\.--
  -- Data for Name: preview_cards_statuses; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.preview_cards_statuses (preview_card_id, status_id)
FROM stdin;
\.--
  -- Data for Name: relays; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.relays (
    id,
    inbox_url,
    follow_activity_id,
    created_at,
    updated_at,
    state
  )
FROM stdin;
\.--
  -- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.reports (
    id,
    status_ids,
    comment,
    action_taken,
    created_at,
    updated_at,
    account_id,
    action_taken_by_account_id,
    target_account_id,
    assigned_account_id,
    uri
  )
FROM stdin;
\.--
  -- Data for Name: report_notes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.report_notes (
    id,
    content,
    report_id,
    account_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.schema_migrations (version)
FROM stdin;
20200126203551 20180106000232 20180204034416 20181010141500 20170905044538 20170322143850 20181116173541 20190627222826 20181226021420 20191218153258 20161205214545 20181204215309 20170508230434 20190820003045 20161123093447 20160905150353 20170604144747 20161105130633 20170714184731 20161221152630 20180628181026 20171122120436 20190927232842 20170507141759 20181204193439 20190420025523 20170114203041 20181207011115 20170127165745 20170330021336 20170423005413 20161104173623 20160223165855 20181024224956 20170414132105 20170901142658 20160314164231 20170409170753 20190117114553 20170205175257 20170609145826 20190225031625 20170824103029 20160223164502 20191031163205 20170330164118 20180514140000 20181219235220 20160919221059 20170829215220 20181116165755 20171109012327 20190701022101 20171028221157 20170913000752 20180808175627 20190226003449 20170317193015 20190729185330 20190627222225 20160227230233 20180608213548 20170418160728 20170624134742 20171119172437 20171116161857 20180402031200 20161003145426 20160220174730 20191212003415 20160305115639 20160221003140 20160223162837 20170713175513 20180820232245 20161122163057 20170905165803 20170105224407 20170304202101 20170720000000 20180206000000 20170112154826 20171005171936 20171125190735 20170713112503 20160222143943 20160306172223 20171107143624 20160312193225 20190103124649 20181007025445 20170718211102 20190904222339 20161128103007 20170610000000 20160223171800 20170129000348 20200114113335 20190914202517 20170623152212 20170918125918 20171212195226 20170406215816 20170322162804 20180109143959 20171129172043 20171010023049 20180510214435 20170322021028 20180528141303 20180609104432 20190409054914 20170920024819 20170901141119 20170516072309 20170625140443 20180616192031 20171114231651 20170403172249 20190314181829 20170424003227 20181203021853 20190317135723 20161003142332 20190823221802 20170303212857 20171130000000 20180304013859 20160325130944 20170405112956 20181213184704 20190509164208 20170424112722 20161006213403 20160826155805 20170209184350 20160322193748 20170125145934 20161116162355 20180812173710 20160221003621 20180514130000 20170330163835 20181026034033 20171201000000 20170123162658 20190307234537 20170301222600 20190715164535 20160224223247 20170425131920 20190529143559 20171114080328 20161009120834 20190705002136 20161222204147 20161202132159 20181127130500 20171020084748 20180416210259 20191007013357 20190805123746 20170506235850 20160222122600 20171118012443 20180814171349 20180510230049 20170109120109 20171107143332 20170114194937 20190403141604 20170920032311 20180711152640 20180707154237 20160926213048 20170606113804 20170713190709 20190304152020 20161119211120 20171010025614 20170520145338 20171125024930 20180506221944 20161222201034 20180615122121 20170928082043 20181213185533 20171006142024 20181203003808 20160220211917 20170425202925 20190819134503 20171125031751 20171125185353 20170711225116 20171226094803 20191001213028 20170507000211 20190316190352 20180831171112 20190726175042 20161027172456 20180617162849 20180410204633 20200113125135 20161130142058 20170217012631 20181017170937 20161130185319 20190225031541 20160223165723 20170123203248 20180402040909 20170601210557 20180211015820 20170318214217 20190915194355 20161203164520 20180812123222 20190815225426 20171005102658 20181018205649 20160920003904 20180812162710 20180929222014 20190511134027 20190103124754 20170924022025 20190901035623 20180310000000 20160316103650 20190917213523 20170414080609 20170716191202 20190201012802 20170119214911 20170927215609 20190807135426 20200119112504 20170427011934 20190203180359 20190306145741 20170823162448 20170917153509 20170214110202 20181116184611 20190715031050 20180813113448 20190511152737 20190927124642 20190706233204 20190901040524 20190519130537 \.--
  -- Data for Name: session_activations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.session_activations (
    id,
    session_id,
    created_at,
    updated_at,
    user_agent,
    ip,
    access_token_id,
    user_id,
    web_push_subscription_id
  )
FROM stdin;
\.--
  -- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.settings (
    id,
    var,
    value,
    thing_type,
    created_at,
    updated_at,
    thing_id
  )
FROM stdin;
\.--
  -- Data for Name: site_uploads; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.site_uploads (
    id,
    var,
    file_file_name,
    file_content_type,
    file_file_size,
    file_updated_at,
    meta,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: status_pins; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.status_pins (
    id,
    account_id,
    status_id,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: status_stats; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.status_stats (
    id,
    status_id,
    replies_count,
    reblogs_count,
    favourites_count,
    created_at,
    updated_at
  )
FROM stdin;
\.--
  -- Data for Name: statuses_tags; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.statuses_tags (status_id, tag_id)
FROM stdin;
\.--
  -- Data for Name: tombstones; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.tombstones (
    id,
    account_id,
    uri,
    created_at,
    updated_at,
    by_moderator
  )
FROM stdin;
\.--
  -- Data for Name: user_invite_requests; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.user_invite_requests (id, user_id, text, created_at, updated_at)
FROM stdin;
\.--
  -- Data for Name: web_push_subscriptions; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.web_push_subscriptions (
    id,
    endpoint,
    key_p256dh,
    key_auth,
    data,
    created_at,
    updated_at,
    access_token_id,
    user_id
  )
FROM stdin;
\.--
  -- Data for Name: web_settings; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public.web_settings (id, data, created_at, updated_at, user_id)
FROM stdin;
\.--
  -- Name: account_aliases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_aliases_id_seq', 1, false);
--
  -- Name: account_conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_conversations_id_seq', 1, false);
--
  -- Name: account_domain_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_domain_blocks_id_seq', 1, false);
--
  -- Name: account_identity_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval(
    'public.account_identity_proofs_id_seq',
    1,
    false
  );
--
  -- Name: account_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_migrations_id_seq', 1, false);
--
  -- Name: account_moderation_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval(
    'public.account_moderation_notes_id_seq',
    1,
    false
  );
--
  -- Name: account_pins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_pins_id_seq', 1, false);
--
  -- Name: account_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_stats_id_seq', 1, false);
--
  -- Name: account_tag_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_tag_stats_id_seq', 1, false);
--
  -- Name: account_warning_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval(
    'public.account_warning_presets_id_seq',
    1,
    false
  );
--
  -- Name: account_warnings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.account_warnings_id_seq', 1, false);
--
  -- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.accounts_id_seq', 1, false);
--
  -- Name: admin_action_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.admin_action_logs_id_seq', 1, false);
--
  -- Name: announcement_mutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.announcement_mutes_id_seq', 1, false);
--
  -- Name: announcement_reactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.announcement_reactions_id_seq', 1, false);
--
  -- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.announcements_id_seq', 1, false);
--
  -- Name: backups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.backups_id_seq', 1, false);
--
  -- Name: blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.blocks_id_seq', 1, false);
--
  -- Name: bookmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.bookmarks_id_seq', 1, false);
--
  -- Name: conversation_mutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.conversation_mutes_id_seq', 1, false);
--
  -- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.conversations_id_seq', 1, false);
--
  -- Name: custom_emoji_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval(
    'public.custom_emoji_categories_id_seq',
    1,
    false
  );
--
  -- Name: custom_emojis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.custom_emojis_id_seq', 1, false);
--
  -- Name: custom_filters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.custom_filters_id_seq', 1, false);
--
  -- Name: domain_allows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.domain_allows_id_seq', 1, false);
--
  -- Name: domain_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.domain_blocks_id_seq', 1, false);
--
  -- Name: email_domain_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.email_domain_blocks_id_seq', 1, false);
--
  -- Name: favourites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.favourites_id_seq', 1, false);
--
  -- Name: featured_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.featured_tags_id_seq', 1, false);
--
  -- Name: follow_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.follow_requests_id_seq', 1, false);
--
  -- Name: follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.follows_id_seq', 1, false);
--
  -- Name: identities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.identities_id_seq', 1, false);
--
  -- Name: imports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.imports_id_seq', 1, false);
--
  -- Name: invites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.invites_id_seq', 1, false);
--
  -- Name: list_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.list_accounts_id_seq', 1, false);
--
  -- Name: lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.lists_id_seq', 1, false);
--
  -- Name: markers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.markers_id_seq', 1, false);
--
  -- Name: media_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.media_attachments_id_seq', 1, false);
--
  -- Name: mentions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.mentions_id_seq', 1, false);
--
  -- Name: mutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.mutes_id_seq', 1, false);
--
  -- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.notifications_id_seq', 1, false);
--
  -- Name: oauth_access_grants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.oauth_access_grants_id_seq', 1, false);
--
  -- Name: oauth_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.oauth_access_tokens_id_seq', 1, false);
--
  -- Name: oauth_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.oauth_applications_id_seq', 1, true);
--
  -- Name: pghero_space_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.pghero_space_stats_id_seq', 1, false);
--
  -- Name: poll_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.poll_votes_id_seq', 1, false);
--
  -- Name: polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.polls_id_seq', 1, false);
--
  -- Name: preview_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.preview_cards_id_seq', 1, false);
--
  -- Name: relays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.relays_id_seq', 1, false);
--
  -- Name: report_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.report_notes_id_seq', 1, false);
--
  -- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.reports_id_seq', 1, false);
--
  -- Name: scheduled_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.scheduled_statuses_id_seq', 1, false);
--
  -- Name: session_activations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.session_activations_id_seq', 1, false);
--
  -- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.settings_id_seq', 1, false);
--
  -- Name: site_uploads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.site_uploads_id_seq', 1, false);
--
  -- Name: status_pins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.status_pins_id_seq', 1, false);
--
  -- Name: status_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.status_stats_id_seq', 1, false);
--
  -- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.statuses_id_seq', 1, false);
--
  -- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.tags_id_seq', 1, false);
--
  -- Name: tombstones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.tombstones_id_seq', 1, false);
--
  -- Name: user_invite_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.user_invite_requests_id_seq', 1, false);
--
  -- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.users_id_seq', 1, false);
--
  -- Name: web_push_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.web_push_subscriptions_id_seq', 1, false);
--
  -- Name: web_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
SELECT
  pg_catalog.setval('public.web_settings_id_seq', 1, false);
--
  -- PostgreSQL database dump complete
  --