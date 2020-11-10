CREATE SEQUENCE dbo.account_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_conversations (
    id bigint NOT NULL,
    account_id bigint,
    conversation_id bigint,
    participant_account_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    status_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    last_status_id bigint,
    lock_version integer DEFAULT 0 NOT NULL,
    unread bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.account_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_domain_blocks (
    id bigint NOT NULL,
    domain character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint
);

CREATE SEQUENCE dbo.account_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_identity_proofs (
    id bigint NOT NULL,
    account_id bigint,
    provider character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_username character varying DEFAULT cast('' as character varying) NOT NULL,
    token varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    verified bit DEFAULT 0 NOT NULL,
    live bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_identity_proofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_migrations (
    id bigint NOT NULL,
    account_id bigint,
    acct character varying DEFAULT cast('' as character varying) NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    target_account_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_moderation_notes (
    id bigint NOT NULL,
    content varchar(max) NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_moderation_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_pins (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_stats (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    statuses_count bigint DEFAULT 0 NOT NULL,
    following_count bigint DEFAULT 0 NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    last_status_at datetime2,
    lock_version integer DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.account_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_tag_stats (
    id bigint NOT NULL,
    tag_id bigint NOT NULL,
    accounts_count bigint DEFAULT 0 NOT NULL,
    hidden bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_tag_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_warning_presets (
    id bigint NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_warning_presets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.account_warnings (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    action integer DEFAULT 0 NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.account_warnings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.accounts (
    id bigint NOT NULL,
    username character varying DEFAULT cast('' as character varying) NOT NULL,
    domain character varying,
    secret character varying DEFAULT cast('' as character varying) NOT NULL,
    private_key varchar(max),
    dbo_key varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    salmon_url character varying DEFAULT cast('' as character varying) NOT NULL,
    hub_url character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    note varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    display_name character varying DEFAULT cast('' as character varying) NOT NULL,
    uri character varying DEFAULT cast('' as character varying) NOT NULL,
    url character varying,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at datetime2,
    header_file_name character varying,
    header_content_type character varying,
    header_file_size integer,
    header_updated_at datetime2,
    avatar_remote_url character varying,
    subscription_expires_at datetime2,
    locked bit DEFAULT 0 NOT NULL,
    header_remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    last_webfingered_at datetime2,
    inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    outbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    shared_inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    followers_url character varying DEFAULT cast('' as character varying) NOT NULL,
    protocol integer DEFAULT 0 NOT NULL,
    memorial bit DEFAULT 0 NOT NULL,
    moved_to_account_id bigint,
    featured_collection_url character varying,
    fields NVARCHAR(255),
    actor_type character varying,
    discoverable bit,
    also_known_as character varying,
    silenced_at datetime2,
    suspended_at datetime2,
    trust_level integer
);

CREATE SEQUENCE dbo.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.accounts_tags (
    account_id bigint NOT NULL,
    tag_id bigint NOT NULL
);

CREATE TABLE dbo.admin_action_logs (
    id bigint NOT NULL,
    account_id bigint,
    action character varying DEFAULT cast('' as character varying) NOT NULL,
    target_type character varying,
    target_id bigint,
    recorded_changes varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.admin_action_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.announcement_mutes (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.announcement_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.announcement_reactions (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    name character varying DEFAULT cast('' as character varying) NOT NULL,
    custom_emoji_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.announcement_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.announcements (
    id bigint NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    published bit DEFAULT 0 NOT NULL,
    all_day bit DEFAULT 0 NOT NULL,
    scheduled_at datetime2,
    starts_at datetime2,
    ends_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    published_at datetime2
);

CREATE SEQUENCE dbo.announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ar_internal_metadata (
    id bigint NOT NULL,
    value character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE TABLE dbo.backups (
    id bigint NOT NULL,
    user_id bigint,
    dump_file_name character varying,
    dump_content_type character varying,
    dump_updated_at datetime2,
    processed bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    dump_file_size bigint
);

CREATE SEQUENCE dbo.backups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.blocks (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    uri character varying
);

CREATE SEQUENCE dbo.blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.bookmarks (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.bookmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.conversation_mutes (
    id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    account_id bigint NOT NULL
);

CREATE SEQUENCE dbo.conversation_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.conversations (
    id bigint NOT NULL,
    uri character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.custom_emoji_categories (
    id bigint NOT NULL,
    name character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.custom_emoji_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.custom_emojis (
    id bigint NOT NULL,
    shortcode character varying DEFAULT cast('' as character varying) NOT NULL,
    domain character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    disabled bit DEFAULT 0 NOT NULL,
    uri character varying,
    image_remote_url character varying,
    visible_in_picker bit DEFAULT 1 NOT NULL,
    category_id bigint
);

CREATE SEQUENCE dbo.custom_emojis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.custom_filters (
    id bigint NOT NULL,
    account_id bigint,
    expires_at datetime2,
    phrase varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    context character varying DEFAULT cast('{}' as character varying) NOT NULL,
    irreversible bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    whole_word bit DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.custom_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.domain_allows (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.domain_allows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    severity integer DEFAULT 0,
    reject_media bit DEFAULT 0 NOT NULL,
    reject_reports bit DEFAULT 0 NOT NULL,
    private_comment varchar(max),
    dbo_comment varchar(max)
);

CREATE SEQUENCE dbo.domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.email_domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.email_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.favourites (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL
);

CREATE SEQUENCE dbo.favourites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.featured_tags (
    id bigint NOT NULL,
    account_id bigint,
    tag_id bigint,
    statuses_count bigint DEFAULT 0 NOT NULL,
    last_status_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.featured_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.follow_requests (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs bit DEFAULT 1 NOT NULL,
    uri character varying
);

CREATE SEQUENCE dbo.follow_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.follows (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs bit DEFAULT 1 NOT NULL,
    uri character varying
);

CREATE SEQUENCE dbo.follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.identities (
    id bigint NOT NULL,
    provider character varying DEFAULT cast('' as character varying) NOT NULL,
    uid character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_id bigint
);

CREATE SEQUENCE dbo.identities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.imports (
    id bigint NOT NULL,
    type integer NOT NULL,
    approved bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    data_file_name character varying,
    data_content_type character varying,
    data_file_size integer,
    data_updated_at datetime2,
    account_id bigint NOT NULL,
    overwrite bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.imports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.invites (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    code character varying DEFAULT cast('' as character varying) NOT NULL,
    expires_at datetime2,
    max_uses integer,
    uses integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    autofollow bit DEFAULT 0 NOT NULL,
    comment varchar(max)
);

CREATE SEQUENCE dbo.invites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.list_accounts (
    id bigint NOT NULL,
    list_id bigint NOT NULL,
    account_id bigint NOT NULL,
    follow_id bigint
);

CREATE SEQUENCE dbo.list_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.lists (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    title character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.markers (
    id bigint NOT NULL,
    user_id bigint,
    timeline character varying DEFAULT cast('' as character varying) NOT NULL,
    last_read_id bigint DEFAULT 0 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.markers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.media_attachments (
    id bigint NOT NULL,
    status_id bigint,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at datetime2,
    remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    shortcode character varying,
    type integer DEFAULT 0 NOT NULL,
    file_meta NVARCHAR(255),
    account_id bigint,
    description varchar(max),
    scheduled_status_id bigint,
    blurhash character varying
);

CREATE SEQUENCE dbo.media_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.mentions (
    id bigint NOT NULL,
    status_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint,
    silent bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.mentions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.mutes (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    hide_notifications bit DEFAULT 1 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL
);

CREATE SEQUENCE dbo.mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.notifications (
    id bigint NOT NULL,
    activity_id bigint NOT NULL,
    activity_type character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    from_account_id bigint NOT NULL
);

CREATE SEQUENCE dbo.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_access_grants (
    id bigint NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri varchar(max) NOT NULL,
    created_at datetime2 NOT NULL,
    revoked_at datetime2,
    scopes character varying,
    application_id bigint NOT NULL,
    resource_owner_id bigint NOT NULL
);

CREATE SEQUENCE dbo.oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_access_tokens (
    id bigint NOT NULL,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at datetime2,
    created_at datetime2 NOT NULL,
    scopes character varying,
    application_id bigint,
    resource_owner_id bigint
);

CREATE SEQUENCE dbo.oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_applications (
    id bigint NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri varchar(max) NOT NULL,
    scopes character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2,
    updated_at datetime2,
    superapp bit DEFAULT 0 NOT NULL,
    website character varying,
    owner_type character varying,
    owner_id bigint,
    confidential bit DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.pghero_space_stats (
    id bigint NOT NULL,
    database_base varchar(max),
    schema_base varchar(max),
    relation varchar(max),
    size bigint,
    captured_at datetime2
);

CREATE SEQUENCE dbo.pghero_space_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.poll_votes (
    id bigint NOT NULL,
    account_id bigint,
    poll_id bigint,
    choice integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    uri character varying
);

CREATE SEQUENCE dbo.poll_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.polls (
    id bigint NOT NULL,
    account_id bigint,
    status_id bigint,
    expires_at datetime2,
    options character varying DEFAULT cast('{}' as character varying) NOT NULL,
    cached_tallies bigint DEFAULT cast('{}' as bigint) NOT NULL,
    multiple bit DEFAULT 0 NOT NULL,
    hide_totals bit DEFAULT 0 NOT NULL,
    votes_count bigint DEFAULT 0 NOT NULL,
    last_fetched_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    voters_count bigint
);

CREATE SEQUENCE dbo.polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.preview_cards (
    id bigint NOT NULL,
    url character varying DEFAULT cast('' as character varying) NOT NULL,
    title character varying DEFAULT cast('' as character varying) NOT NULL,
    description character varying DEFAULT cast('' as character varying) NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at datetime2,
    type integer DEFAULT 0 NOT NULL,
    html varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    author_name character varying DEFAULT cast('' as character varying) NOT NULL,
    author_url character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_name character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_url character varying DEFAULT cast('' as character varying) NOT NULL,
    width integer DEFAULT 0 NOT NULL,
    height integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    embed_url character varying DEFAULT cast('' as character varying) NOT NULL
);

CREATE SEQUENCE dbo.preview_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.preview_cards_statuses (
    preview_card_id bigint NOT NULL,
    status_id bigint NOT NULL
);

CREATE TABLE dbo.relays (
    id bigint NOT NULL,
    inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    follow_activity_id character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    state integer DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.relays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.report_notes (
    id bigint NOT NULL,
    content varchar(max) NOT NULL,
    report_id bigint NOT NULL,
    account_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.report_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.reports (
    id bigint NOT NULL,
    status_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    comment varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    action_taken bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    action_taken_by_account_id bigint,
    target_account_id bigint NOT NULL,
    assigned_account_id bigint,
    uri character varying
);

CREATE SEQUENCE dbo.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.scheduled_statuses (
    id bigint NOT NULL,
    account_id bigint,
    scheduled_at datetime2,
    params NVARCHAR(255)
);

CREATE SEQUENCE dbo.scheduled_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.schema_migrations (
    version character varying NOT NULL
);

CREATE TABLE dbo.session_activations (
    id bigint NOT NULL,
    session_id character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_agent character varying DEFAULT cast('' as character varying) NOT NULL,
    ip NVARCHAR(255),
    access_token_id bigint,
    user_id bigint NOT NULL,
    web_push_subscription_id bigint
);

CREATE SEQUENCE dbo.session_activations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.settings (
    id bigint NOT NULL,
    var character varying NOT NULL,
    value varchar(max),
    thing_type character varying,
    created_at datetime2,
    updated_at datetime2,
    thing_id bigint
);

CREATE SEQUENCE dbo.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.site_uploads (
    id bigint NOT NULL,
    var character varying DEFAULT cast('' as character varying) NOT NULL,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at datetime2,
    meta NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.site_uploads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.status_pins (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
);

CREATE SEQUENCE dbo.status_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.status_stats (
    id bigint NOT NULL,
    status_id bigint NOT NULL,
    replies_count bigint DEFAULT 0 NOT NULL,
    reblogs_count bigint DEFAULT 0 NOT NULL,
    favourites_count bigint DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.status_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.statuses (
    id bigint DEFAULT dbo.datetime_id(cast('statuses' as varchar(max))) NOT NULL,
    uri character varying,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    in_reply_to_id bigint,
    reblog_of_id bigint,
    url character varying,
    sensitive bit DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL,
    spoiler_text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    reply bit DEFAULT 0 NOT NULL,
    language character varying,
    conversation_id bigint,
    local bit,
    account_id bigint NOT NULL,
    application_id bigint,
    in_reply_to_account_id bigint,
    poll_id bigint,
    deleted_at datetime2
);

CREATE SEQUENCE dbo.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.statuses_tags (
    status_id bigint NOT NULL,
    tag_id bigint NOT NULL
);

CREATE TABLE dbo.tags (
    id bigint NOT NULL,
    name character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    usable bit,
    trendable bit,
    listable bit,
    reviewed_at datetime2,
    requested_review_at datetime2,
    last_status_at datetime2,
    max_score float,
    max_score_at datetime2
);

CREATE SEQUENCE dbo.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
CREATE TABLE dbo.tombstones (
    id bigint NOT NULL,
    account_id bigint,
    uri character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    by_moderator bit
);

CREATE SEQUENCE dbo.tombstones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_invite_requests (
    id bigint NOT NULL,
    user_id bigint,
    text varchar(max),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);

CREATE SEQUENCE dbo.user_invite_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.users (
    id bigint NOT NULL,
    email character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    encrypted_password character varying DEFAULT cast('' as character varying) NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at datetime2,
    remember_created_at datetime2,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at datetime2,
    last_sign_in_at datetime2,
    current_sign_in_ip NVARCHAR(255),
    last_sign_in_ip NVARCHAR(255),
    admin bit DEFAULT 0 NOT NULL,
    confirmation_token character varying,
    confirmed_at datetime2,
    confirmation_sent_at datetime2,
    unconfirmed_email character varying,
    locale character varying,
    encrypted_otp_secret character varying,
    encrypted_otp_secret_iv character varying,
    encrypted_otp_secret_salt character varying,
    consumed_timestep integer,
    otp_required_for_login bit DEFAULT 0 NOT NULL,
    last_emailed_at datetime2,
    otp_backup_codes character varying,
    filtered_languages character varying DEFAULT cast('{}' as character varying) NOT NULL,
    account_id bigint NOT NULL,
    disabled bit DEFAULT 0 NOT NULL,
    moderator bit DEFAULT 0 NOT NULL,
    invite_id bigint,
    remember_token character varying,
    chosen_languages character varying,
    created_by_application_id bigint,
    approved bit DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.web_push_subscriptions (
    id bigint NOT NULL,
    endpoint character varying NOT NULL,
    key_p256dh character varying NOT NULL,
    key_auth character varying NOT NULL,
    data NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    access_token_id bigint,
    user_id bigint
);

CREATE SEQUENCE dbo.web_push_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.web_settings (
    id bigint NOT NULL,
    data NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_id bigint NOT NULL
);

CREATE SEQUENCE dbo.web_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER TABLE  dbo.account_aliases
    ADD CONSTRAINT account_aliases_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT account_conversations_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_domain_blocks
    ADD CONSTRAINT account_domain_blocks_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_identity_proofs
    ADD CONSTRAINT account_identity_proofs_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT account_migrations_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT account_moderation_notes_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT account_pins_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_stats
    ADD CONSTRAINT account_stats_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_tag_stats
    ADD CONSTRAINT account_tag_stats_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_warning_presets
    ADD CONSTRAINT account_warning_presets_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT account_warnings_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.admin_action_logs
    ADD CONSTRAINT admin_action_logs_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT announcement_mutes_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT announcement_reactions_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key_base);
ALTER TABLE  dbo.backups
    ADD CONSTRAINT backups_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT conversation_mutes_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.custom_emoji_categories
    ADD CONSTRAINT custom_emoji_categories_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.custom_emojis
    ADD CONSTRAINT custom_emojis_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.custom_filters
    ADD CONSTRAINT custom_filters_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.domain_allows
    ADD CONSTRAINT domain_allows_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.domain_blocks
    ADD CONSTRAINT domain_blocks_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.email_domain_blocks
    ADD CONSTRAINT email_domain_blocks_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT featured_tags_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT follow_requests_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.imports
    ADD CONSTRAINT imports_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.invites
    ADD CONSTRAINT invites_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT list_accounts_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.markers
    ADD CONSTRAINT markers_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT media_attachments_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.mentions
    ADD CONSTRAINT mentions_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.mutes
    ADD CONSTRAINT mutes_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.pghero_space_stats
    ADD CONSTRAINT pghero_space_stats_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.preview_cards
    ADD CONSTRAINT preview_cards_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.relays
    ADD CONSTRAINT relays_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT report_notes_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.scheduled_statuses
    ADD CONSTRAINT scheduled_statuses_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT session_activations_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.site_uploads
    ADD CONSTRAINT site_uploads_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT status_pins_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.status_stats
    ADD CONSTRAINT status_stats_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.tombstones
    ADD CONSTRAINT tombstones_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.user_invite_requests
    ADD CONSTRAINT user_invite_requests_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT web_push_subscriptions_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.web_settings
    ADD CONSTRAINT web_settings_pkey PRIMARY KEY (id);
ALTER TABLE  dbo.web_settings
    ADD CONSTRAINT fk_11910667b2 FOREIGN KEY (user_id) REFERENCES dbo.users(id);
ALTER TABLE  dbo.account_domain_blocks
    ADD CONSTRAINT fk_206c6029bd FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT fk_225b4212bb FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.statuses_tags
    ADD CONSTRAINT fk_3081861e21 FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);

ALTER TABLE  dbo.follows
    ADD CONSTRAINT fk_32ed1b5560 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT fk_34d54b0a33 FOREIGN KEY (application_id) REFERENCES dbo.oauth_applications(id);

ALTER TABLE  dbo.blocks
    ADD CONSTRAINT fk_4269e03e65 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_4b81f7522c FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_50500f500d FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.favourites
    ADD CONSTRAINT fk_5eb6c2b873 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT fk_63b044929b FOREIGN KEY (resource_owner_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.imports
    ADD CONSTRAINT fk_6db1b6e408 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.follows
    ADD CONSTRAINT fk_745ca29eac FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT fk_76d644b0e7 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT fk_9291ec025d FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.blocks
    ADD CONSTRAINT fk_9571bfabc1 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT fk_957e5bda89 FOREIGN KEY (access_token_id) REFERENCES dbo.oauth_access_tokens(id);

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_96dd81e81b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.mentions
    ADD CONSTRAINT fk_970d43f9d1 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_9bda1543f7 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.oauth_applications
    ADD CONSTRAINT fk_b0988c7c0a FOREIGN KEY (owner_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.favourites
    ADD CONSTRAINT fk_b0e856845e FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.mutes
    ADD CONSTRAINT fk_b8d8daf315 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_bca45b75fd FOREIGN KEY (action_taken_by_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.identities
    ADD CONSTRAINT fk_bea040f377 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT fk_c141c8ee55 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_c7fa917661 FOREIGN KEY (in_reply_to_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT fk_d4cb435b62 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT fk_e5fda67334 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT fk_e84df68546 FOREIGN KEY (resource_owner_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_eb37af34f0 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.mutes
    ADD CONSTRAINT fk_eecff219ea FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT fk_f5fc4c1ee3 FOREIGN KEY (application_id) REFERENCES dbo.oauth_applications(id);

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT fk_fbd6b0bf9e FOREIGN KEY (from_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.backups
    ADD CONSTRAINT fk_rails_096669d221 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT fk_rails_11207ffcfd FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT fk_rails_1491654f9f FOREIGN KEY (conversation_id) REFERENCES dbo.conversations(id);

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT fk_rails_174efcf15f FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_tag_stats
    ADD CONSTRAINT fk_rails_1fa34bab2d FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);

ALTER TABLE  dbo.account_stats
    ADD CONSTRAINT fk_rails_215bb31ff1 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.accounts
    ADD CONSTRAINT fk_rails_2320833084 FOREIGN KEY (moved_to_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT fk_rails_23a9055c7c FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);

ALTER TABLE  dbo.scheduled_statuses
    ADD CONSTRAINT fk_rails_23bd9018f9 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_rails_256483a9ab FOREIGN KEY (reblog_of_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_rails_31fc5aeef1 FOREIGN KEY (scheduled_status_id) REFERENCES dbo.scheduled_statuses(id);

ALTER TABLE  dbo.user_invite_requests
    ADD CONSTRAINT fk_rails_3773f15361 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.lists
    ADD CONSTRAINT fk_rails_3853b78dac FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.polls
    ADD CONSTRAINT fk_rails_3e0d9f1115 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_rails_3ec0cfdd70 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT fk_rails_3f8b75089b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_40f9cc29f1 FOREIGN KEY (follow_id) REFERENCES dbo.follows(id);

ALTER TABLE  dbo.status_stats
    ADD CONSTRAINT fk_rails_4a247aac42 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_rails_4e7a498fb4 FOREIGN KEY (assigned_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.mentions
    ADD CONSTRAINT fk_rails_59edbe2887 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT fk_rails_5ab139311f FOREIGN KEY (conversation_id) REFERENCES dbo.conversations(id);

ALTER TABLE  dbo.polls
    ADD CONSTRAINT fk_rails_5b19a0c011 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT fk_rails_65c05552f1 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.account_identity_proofs
    ADD CONSTRAINT fk_rails_6a219ca385 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT fk_rails_6f5278b6e9 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_7444ad831f FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT fk_rails_751a9f390b FOREIGN KEY (access_token_id) REFERENCES dbo.oauth_access_tokens(id);

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT fk_rails_7fa83a61eb FOREIGN KEY (report_id) REFERENCES dbo.reports(id);

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_85fee9d6ab FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.custom_filters
    ADD CONSTRAINT fk_rails_8b8d786993 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_rails_8fb2a43e88 FOREIGN KEY (invite_id) REFERENCES dbo.invites(id);

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_rails_94a6f70399 FOREIGN KEY (in_reply_to_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT fk_rails_9c99f8e835 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT fk_rails_9f6ac182a6 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_a1226eaa5c FOREIGN KEY (announcement_id) REFERENCES dbo.announcements(id);

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT fk_rails_a176e26c37 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT fk_rails_a65a1bf71b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT fk_rails_a6e6974b7e FOREIGN KEY (poll_id) REFERENCES dbo.polls(id);

ALTER TABLE  dbo.markers
    ADD CONSTRAINT fk_rails_a7009bc2b6 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.admin_action_logs
    ADD CONSTRAINT fk_rails_a7667297fa FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT fk_rails_a7ebbb1e37 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT fk_rails_b006f28dac FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT fk_rails_b6c18cf44a FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_b742c91c0e FOREIGN KEY (custom_emoji_id) REFERENCES dbo.custom_emojis(id);

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT fk_rails_c9f701caaf FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT fk_rails_cae66353f3 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT fk_rails_d44979e5dd FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT fk_rails_d9a8dad070 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT fk_rails_dd62ed5ac3 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.statuses_tags
    ADD CONSTRAINT fk_rails_df0fe11427 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT fk_rails_e35401adf1 FOREIGN KEY (announcement_id) REFERENCES dbo.announcements(id);

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_e54e356c88 FOREIGN KEY (list_id) REFERENCES dbo.lists(id);

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_rails_ecc9536e7c FOREIGN KEY (created_by_application_id) REFERENCES dbo.oauth_applications(id);

ALTER TABLE  dbo.tombstones
    ADD CONSTRAINT fk_rails_f95b861449 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.account_aliases
    ADD CONSTRAINT fk_rails_fc91575d08 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);

ALTER TABLE  dbo.invites
    ADD CONSTRAINT fk_rails_ff69dbb2ac FOREIGN KEY (user_id) REFERENCES dbo.users(id);