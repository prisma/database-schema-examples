CREATE TABLE dbo.tbl_ticket
(
  id character varying(30) NOT NULL,
  iduser character varying(30),
  iduserlast character varying(30),
  idsolver character varying(30),
  idsolution character varying(30), -- ID comment
  category character varying(50),
  project character varying(50),
  company character varying(50),
  name character varying(80),
  search character varying(80),
  linker character varying(80),
  language character varying(2),
  labels character varying(200),
  tags character varying(100),
  ip character varying(80),
  countcomments integer DEFAULT 0,
  countupdates integer DEFAULT 0,
  minutes integer DEFAULT 0,
  issolved bit DEFAULT 0,
  ispriority bit DEFAULT 0,
  isremoved bit DEFAULT 0,
  datesolved datetime2,
  datechanged datetime2,
  dateupdated datetime2,
  datecreated datetime2 DEFAULT getdate(),
  CONSTRAINT tbl_ticket_pkey PRIMARY KEY (id)
);

CREATE TABLE dbo.tbl_ticket_comment
(
  id character varying(30) NOT NULL,
  idticket character varying(30),
  idparent character varying(30),
  iduser character varying(30),
  search character varying(300),
  ip character varying(80),
  body varchar(max),
  countupdates integer DEFAULT 0,
  operation smallint DEFAULT cast('0' as smallint),
  isoperation bit DEFAULT 0,
  issolution bit DEFAULT 0,
  isremoved bit DEFAULT 0,
  dateupdated datetime2,
  datecreated datetime2 DEFAULT getdate(),
  CONSTRAINT tbl_ticket_comment_pkey PRIMARY KEY (id)
);

CREATE TABLE dbo.tbl_time
(
  id character varying(30) NOT NULL,
  idsolver character varying(30),
  iduser character varying(30),
  idticket character varying(30),
  company character varying(50),
  minutes integer DEFAULT 0,
  minutesuser integer DEFAULT 0,
  day smallint DEFAULT cast('0' as smallint),
  month smallint DEFAULT cast('0' as smallint),
  year smallint DEFAULT cast('0' as smallint),
  datecreated datetime2 DEFAULT getdate(),
  CONSTRAINT tbl_time_pkey PRIMARY KEY (id)
);

CREATE TABLE dbo.tbl_user
(
  id character varying(30) NOT NULL,
  token character varying(50),
  photo character varying(30),
  name character varying(50),
  search character varying(200),
  language character varying(2),
  firstname character varying(30),
  lastname character varying(30),
  company character varying(50),
  [position] character varying(50),
  email character varying(200),
  password character varying(60),
  notes character varying(200),
  minutes smallint DEFAULT 0,
  ispriority bit DEFAULT 0,
  isremoved bit DEFAULT 0,
  isconfirmed bit DEFAULT 0,
  iscustomer bit DEFAULT 0,
  isadmin bit DEFAULT 0,
  isnotification bit DEFAULT 0,
  isactivated bit DEFAULT 0,
  countlogins smallint DEFAULT 0,
  countupdates smallint DEFAULT 0,
  datelogged datetime2,
  dateupdated datetime2,
  dateconfirmed datetime2,
  datecreated datetime2 DEFAULT getdate(),
  CONSTRAINT tbl_user_pkey PRIMARY KEY (id)
);

CREATE TABLE dbo.tbl_user_project
(
  iduser character varying(30),
  company character varying(50),
  name character varying(30)
);

CREATE TABLE dbo.cdl_project
(
   name character varying(30),
   primary key(name)
);

CREATE TABLE dbo.cdl_label
(
   name character varying(30),
   primary key(name)
);
CREATE TABLE dbo.cdl_language
(
   name character varying(30),
   primary key(name)
);

BEGIN
  EXECUTE('CREATE VIEW OR ALTER VIEW  dbo.view_ticket AS
  SELECT a.id,
      a.name,
      a.project,
      a.search,
      a.labels,
      a.minutes,
      b.name AS [user],
      b.email,
      b.language,
      b.photo,
      b.company,
      a.iduser,
      a.iduserlast,
      a.idsolver,
      a.issolved,
      a.ispriority,
      b.isnotification,
      a.datecreated,
      a.dateupdated,
      b.minutes AS minutesuser,
      a.idsolution,
      b.[position],
      a.countcomments
    FROM tbl_ticket a
      JOIN tbl_user b ON cast(b.id as varchar(max)) = cast(a.iduser as varchar(max))
    WHERE a.isremoved = 0;');
END;

BEGIN
  EXECUTE('
    CREATE VIEW OR ALTER VIEW  dbo.view_ticket_comment AS
    SELECT a.id,
        a.iduser,
        a.idparent,
        a.idticket,
        a.body,
        b.name AS [user],
        b.email,
        b.photo,
        b.language,
        a.isoperation,
        a.datecreated,
        a.dateupdated,
        b.company,
        b.isnotification,
        a.issolution AS issolved,
        a.operation,
        b.[position],
        b.iscustomer
      FROM tbl_ticket_comment a
        JOIN tbl_user b ON cast(a.iduser as varchar(max)) = cast(b.id as varchar(max))
      WHERE a.isremoved = 0;');
END;

-- BEGIN
--   EXECUTE('
--     CREATE VIEW OR ALTER VIEW  dbo.view_user AS
--     SELECT a.id,
--         a.name,
--         a.photo,
--         a.email,
--         a.company,
--         a.iscustomer,
--         a.minutes,
--         a.[position],
--         a.isactivated,
--         a.isconfirmed,
--         a.isadmin,
--         a.ispriority,
--         a.datecreated,
--         a.dateupdated,
--         a.datelogged,
--         ( SELECT sum(tbl_time.minutes) AS sum
--               FROM tbl_time
--               WHERE (cast(tbl_time.iduser as varchar(max)) = cast(a.id as varchar(max))
--               OR cast(tbl_time.idsolver as varchar(max)) = cast(a.id as varchar(max)))
--               AND cast(tbl_time.year as  float) = cast(format(getdate(), 'yyyy') as varchar(max)),
--               cast(getdate() as varchar(max)) as date)) AND tbl_time.month = cast(format(getdate(), 'mm') as varchar(max)),
--               cast(getdate() as varchar(max)) as date))) AS minutesmonth,
--         a.search
--       FROM tbl_user a
--       WHERE a.isremoved = 0;');
-- END;


