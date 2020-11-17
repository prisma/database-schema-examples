USE [standup-slack-bot]
GO

CREATE TABLE dbo.convos (
    [user] varchar(max) NOT NULL,
    intent varchar(max),
    slot varchar(max),
    state NVARCHAR DEFAULT cast('{}' as NVARCHAR) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL, 
);

CREATE TABLE dbo.eventids (
    event_id varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE TABLE dbo.migrate (
    version bigint NOT NULL
);

CREATE TABLE dbo.posts (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE SEQUENCE dbo.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE dbo.questions (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    [order] smallint NOT NULL,
    question varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


CREATE SEQUENCE dbo.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE dbo.reports (
    id integer NOT NULL,
    user_id integer NOT NULL,
    standup_id integer NOT NULL,
    post_id integer,
    --  status_base VARCHAR(10) NOT NULL CHECK (status_base IN('ASKED', 'SKIP', 'COMPLETE', 'PENDING'))
    questions NVARCHAR NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE SEQUENCE dbo.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE dbo.reviews (
    id integer NOT NULL,
    user_id integer NOT NULL,
    --  type VARCHAR(10) NOT NULL CHECK (type IN('REFERRED_BY', 'COMMENT', 'EXIT_FEEDBACK'))
    text varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE SEQUENCE dbo.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.standups (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name NVARCHAR(100) NOT NULL,
    [time] time NOT NULL,
    timezone varchar(max) NOT NULL,
    channel_id varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL,
    is_threaded bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.standups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.standups_users (
    standup_id integer NOT NULL,
    user_id integer NOT NULL,
    [time] time NOT NULL,
    --  status_base VARCHAR(10) NOT NULL CHECK(status_base IN ('ACTIVE','INACTIVE','INVITED'))
    is_standup_owner bit DEFAULT 0 NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE TABLE dbo.teams (
    id integer NOT NULL,
    team_access_token varchar(max) NOT NULL,
    team_slack_id varchar(max) NOT NULL,
    bot_access_token varchar(max) NOT NULL,
    bot_slack_id varchar(max) NOT NULL,
    team_name varchar(max) NOT NULL,
    scope varchar(max) DEFAULT cast('{}' as varchar(max)) NOT NULL,
    stripe_id varchar(max),
    cost_per_user integer DEFAULT 100 NOT NULL,
    minimum_monthly_cost integer DEFAULT 0 NOT NULL,
    trial_ends datetimeoffset DEFAULT getdate() NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL,
    --  status_base VARCHAR(10) NOT NULL DEFAULT 'ACTIVE' CHECK(status_base IN('ACTIVE','INACTIVE','DELINQUENT'))
);

CREATE SEQUENCE dbo.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE dbo.users (
    id integer NOT NULL,
    team_id integer NOT NULL,
    slack_id varchar(max) NOT NULL,
    username varchar(max) NOT NULL,
    timezone varchar(max) NOT NULL,
    email varchar(max),
    first_name varchar(max),
    last_name varchar(max),
    avatar_url varchar(max),
    is_team_owner bit DEFAULT 0 NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);

CREATE SEQUENCE dbo.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.events (
    id integer NOT NULL,
    --  create index varchar on dbo.events(max) NOT NULL,
    [time] datetimeoffset NOT NULL,
    checked_at datetimeoffset,
    -- created_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate())
);

CREATE SEQUENCE dbo.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.tasks (
    --  create index varchar on dbo.tasks(max) NOT NULL,
    active bit DEFAULT 1 NOT NULL,
    rate varchar(max) NOT NULL,
    timezone varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate()),
    updated_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate()),
    rate_type varchar(max) DEFAULT cast('CRON' as varchar(max)) NOT NULL,
    --  CONSTRAINT tasks_rate_type_check CHECK ((rate_type = ANY (ARRAY['CRON'::text, 'RRULE'::text])))
);

ALTER TABLE  dbo.convos
    ADD CONSTRAINT convos_pkey PRIMARY KEY ([user]);

ALTER TABLE  dbo.eventids
    ADD CONSTRAINT eventids_pkey PRIMARY KEY (event_id);

ALTER TABLE  dbo.migrate
    ADD CONSTRAINT migrate_pkey PRIMARY KEY (version);

ALTER TABLE  dbo.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_user_id_post_id_key UNIQUE (user_id, post_id);

ALTER TABLE  dbo.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_team_id_name_key UNIQUE (team_id, name);


ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_standup_id_user_id_key UNIQUE (standup_id, user_id);

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_bot_access_token_key UNIQUE (bot_access_token);

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_team_access_token_key UNIQUE (team_access_token);

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_team_slack_id_key UNIQUE (team_slack_id);

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_slack_id_team_id_key UNIQUE (slack_id, team_id);

ALTER TABLE  dbo.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


ALTER TABLE  dbo.posts
    ADD CONSTRAINT posts_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.questions
    ADD CONSTRAINT questions_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_post_id_fkey FOREIGN KEY (post_id) REFERENCES dbo.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.reviews
    ADD CONSTRAINT reviews_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_team_id_fkey FOREIGN KEY (team_id) REFERENCES dbo.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE  dbo.users
    ADD CONSTRAINT users_team_id_fkey FOREIGN KEY (team_id) REFERENCES dbo.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;

