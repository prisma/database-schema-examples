CREATE TABLE matches (
  match_id bigint PRIMARY KEY,
  match_seq_num bigint,
  radiant_win bit,
  start_time integer,
  duration integer,
  tower_status_radiant integer,
  tower_status_dire integer,
  barracks_status_radiant integer,
  barracks_status_dire integer,
  cluster integer,
  first_blood_time integer,
  lobby_type integer,
  human_players integer,
  leagueid integer,
  positive_votes integer,
  negative_votes integer,
  game_mode integer,
  engine integer,
  radiant_score integer,
  dire_score integer,
  picks_bans NVARCHAR,
  radiant_team_id integer,
  dire_team_id integer,
  radiant_team_name varchar(255),
  dire_team_name varchar(255),
  radiant_team_complete smallint,
  dire_team_complete smallint,
  radiant_captain bigint,
  dire_captain bigint,
  chat NVARCHAR,
  objectives NVARCHAR,
  radiant_gold_adv integer,
  radiant_xp_adv integer,
  teamfights NVARCHAR,
  draft_timings NVARCHAR,
  version integer,
  cosmetics NVARCHAR,
  series_id integer,
  series_type integer
);

CREATE TABLE player_matches (
  PRIMARY KEY(match_id, player_slot),
  match_id bigint REFERENCES matches(match_id) ON DELETE CASCADE,
  account_id bigint,
  player_slot integer,
  hero_id integer,
  item_0 integer,
  item_1 integer,
  item_2 integer,
  item_3 integer,
  item_4 integer,
  item_5 integer,
  backpack_0 integer,
  backpack_1 integer,
  backpack_2 integer,
  backpack_3 integer,
  kills integer,
  deaths integer,
  assists integer,
  leaver_status integer,
  gold integer,
  last_hits integer,
  denies integer,
  gold_per_min integer,
  xp_per_min integer,
  gold_spent integer,
  hero_damage integer,
  tower_damage bigint,
  hero_healing bigint,
  level integer,
  additional_units NVARCHAR,
  stuns real,
  max_hero_hit NVARCHAR,
  times integer,
  gold_t integer,
  lh_t integer,
  dn_t integer,
  xp_t integer,
  obs_log NVARCHAR,
  sen_log NVARCHAR,
  obs_left_log NVARCHAR,
  sen_left_log NVARCHAR,
  purchase_log NVARCHAR,
  kills_log NVARCHAR,
  buyback_log NVARCHAR,
  runes_log NVARCHAR,
  connection_log NVARCHAR,
  lane_pos NVARCHAR,
  obs NVARCHAR,
  sen NVARCHAR,
  actions NVARCHAR,
  pings NVARCHAR,
  purchase NVARCHAR,
  gold_reasons NVARCHAR,
  xp_reasons NVARCHAR,
  killed NVARCHAR,
  item_uses NVARCHAR,
  ability_uses NVARCHAR,
  ability_targets NVARCHAR,
  damage_targets NVARCHAR,
  hero_hits NVARCHAR,
  damage NVARCHAR,
  damage_taken NVARCHAR,
  damage_inflictor NVARCHAR,
  runes NVARCHAR,
  killed_by NVARCHAR,
  kill_streaks NVARCHAR,
  multi_kills NVARCHAR,
  life_state NVARCHAR,
  damage_inflictor_received NVARCHAR,
  obs_placed int,
  sen_placed int,
  creeps_stacked int,
  camps_stacked int,
  rune_pickups int,
  ability_upgrades_arr integer,
  party_id int,
  permanent_buffs NVARCHAR,
  lane int,
  lane_role int,
  is_roaming bit,
  firstblood_claimed int,
  teamfight_participation real,
  towers_killed int,
  roshans_killed int,
  observers_placed int,
  party_size int
);

CREATE TABLE players (
  account_id bigint PRIMARY KEY,
  steamid varchar(32),
  avatar varchar(255),
  avatarmedium varchar(255),
  avatarfull varchar(255),
  profileurl varchar(255),
  personaname varchar(255),
  plus bit DEFAULT 0,
  last_login datetimeoffset,
  full_history_time datetimeoffset,
  cheese integer DEFAULT 0,
  fh_unavailable bit,
  loccountrycode varchar(2),
  last_match_time datetimeoffset
);

CREATE TABLE player_ratings (
  PRIMARY KEY(account_id, time),
  account_id bigint,
  match_id bigint,
  solo_competitive_rank integer,
  competitive_rank integer,
  time datetimeoffset
);

CREATE TABLE subscriptions (
  PRIMARY KEY(customer_id),
  account_id bigint REFERENCES players(account_id) ON DELETE CASCADE,
  customer_id varchar(255),
  amount int,
  active_until date
);

CREATE TABLE webhooks (
  PRIMARY KEY(hook_id),
  hook_id NVARCHAR UNIQUE,
  account_id bigint,
  url varchar(max) NOT NULL,
  subscriptions NVARCHAR NOT NULL
);

CREATE TABLE api_keys (
  PRIMARY KEY(account_id),
  account_id bigint UNIQUE,
  api_key NVARCHAR UNIQUE,
  customer_id varchar(max) NOT NULL,
  subscription_id varchar(max) NOT NULL
);

CREATE TABLE api_key_usage (
  PRIMARY KEY(account_id, api_key, ip, datetime),
  account_id bigint REFERENCES api_keys(account_id),
  customer_id NVARCHAR,
  api_key NVARCHAR,
  usage_count bigint,
  ip NVARCHAR,
  datetime datetime default getdate()
);

CREATE TABLE user_usage (
  account_id bigint,
  ip varchar(max),
  usage_count bigint,
  datetime datetime2 default getdate()
);

CREATE TABLE notable_players (
  account_id bigint PRIMARY KEY,
  name varchar(255),
  country_code varchar(2),
  fantasy_role int,
  team_id int,
  team_name varchar(255),
  team_tag varchar(255),
  is_locked bit,
  is_pro bit,
  locked_until integer
);

CREATE TABLE match_logs (
  match_id bigint REFERENCES matches(match_id) ON DELETE CASCADE,
  time int,
  type varchar(100),
  team smallint,
  unit varchar(100),
  key_base varchar(1000),
  value int,
  slot smallint,
  player_slot smallint,
  player1 int,
  player2 int,
  attackerhero bit,
  targethero bit,
  attackerillusion bit,
  targetillusion bit,
  inflictor varchar(100),
  gold_reason smallint,
  xp_reason smallint,
  attackername varchar(100),
  targetname varchar(100),
  sourcename varchar(100),
  targetsourcename varchar(100),
  valuename varchar(100),
  gold int,
  lh int,
  xp int,
  x smallint,
  y smallint,
  z smallint,
  entityleft bit,
  ehandle int,
  stuns real,
  hero_id smallint,
  life_state smallint,
  level smallint,
  kills smallint,
  deaths smallint,
  assists smallint,
  denies smallint,
  attackername_slot smallint,
  targetname_slot smallint,
  sourcename_slot smallint,
  targetsourcename_slot smallint,
  player1_slot smallint,
  obs_placed int,
  sen_placed int,
  creeps_stacked int,
  camps_stacked int,
  rune_pickups int
);

CREATE TABLE picks_bans(
  match_id bigint REFERENCES matches(match_id) ON DELETE CASCADE,
  is_pick bit,
  hero_id int,
  team smallint,
  ord smallint,
  PRIMARY key(match_id, ord)
);

CREATE TABLE leagues(
  leagueid bigint PRIMARY KEY,
  ticket varchar(255),
  banner varchar(255),
  tier varchar(255),
  name varchar(255)
);

CREATE TABLE teams(
  team_id bigint PRIMARY KEY,
  name varchar(255),
  tag varchar(255),
  logo_url varchar(max)
);

CREATE TABLE heroes(
  id int PRIMARY KEY,
  name varchar(max),
  localized_name varchar(max),
  primary_attr varchar(max),
  attack_type varchar(max),
  roles varchar(max)
);

CREATE TABLE match_patch(
  match_id bigint REFERENCES matches(match_id) ON DELETE CASCADE PRIMARY KEY,
  patch NVARCHAR
);

CREATE TABLE team_match(
  team_id bigint,
  match_id bigint REFERENCES matches(match_id) ON DELETE CASCADE,
  radiant bit,
  PRIMARY key(team_id, match_id)
);

CREATE TABLE match_gcdata(
  match_id bigint PRIMARY KEY,
  cluster int,
  replay_salt int,
  series_id int,
  series_type int
);

CREATE TABLE items(
  id int PRIMARY KEY,
  name varchar(max),
  cost int,
  secret_shop smallint,
  side_shop smallint,
  recipe smallint,
  localized_name varchar(max)
);

CREATE TABLE cosmetics(
  item_id int PRIMARY KEY,
  name varchar(max),
  prefab varchar(max),
  creation_date datetimeoffset,
  image_inventory varchar(max),
  image_path varchar(max),
  item_description varchar(max),
  item_name varchar(max),
  item_rarity varchar(max),
  item_type_name varchar(max),
  used_by_heroes varchar(max)
);

CREATE TABLE public_matches (
  match_id bigint PRIMARY KEY,
  match_seq_num bigint,
  radiant_win bit,
  start_time integer,
  duration integer,
  avg_mmr integer,
  num_mmr integer,
  lobby_type integer,
  game_mode integer,
  avg_rank_tier float,
  num_rank_tier integer,
  cluster integer
);

CREATE TABLE public_player_matches (
  PRIMARY KEY(match_id, player_slot),
  match_id bigint REFERENCES public_matches(match_id) ON DELETE CASCADE,
  player_slot integer,
  hero_id integer
);

CREATE TABLE team_rating (
  PRIMARY KEY(team_id),
  team_id bigint,
  rating real,
  wins int,
  losses int,
  last_match_time bigint
);

CREATE TABLE hero_ranking (
  PRIMARY key(account_id, hero_id),
  account_id bigint,
  hero_id int,
  score float
);


CREATE TABLE queue (
  PRIMARY key(id),
  id bigint,
  type varchar(max),
  datetime datetimeoffset,
  attempts int,
  data NVARCHAR,
  next_attempt_time datetimeoffset,
  priority int
);

CREATE TABLE mmr_estimates (
  PRIMARY key(account_id),
  account_id bigint,
  estimate int
);

CREATE TABLE solo_competitive_rank (
  PRIMARY key(account_id),
  account_id bigint,
  rating int
);

CREATE TABLE competitive_rank (
  PRIMARY key(account_id),
  account_id bigint,
  rating int
);

CREATE TABLE rank_tier (
  PRIMARY key(account_id),
  account_id bigint,
  rating int
);

CREATE TABLE leaderboard_rank (
  PRIMARY key(account_id),
  account_id bigint,
  rating int
);

CREATE TABLE scenarios (
  hero_id smallint,
  item varchar(255),
  time integer,
  lane_role smallint,
  games bigint DEFAULT 1,
  wins bigint,
  epoch_week integer,
  UNIQUE (hero_id, item, time, epoch_week),
  UNIQUE (hero_id, lane_role, time, epoch_week)
);

CREATE TABLE team_scenarios (
  scenario varchar(255),
  is_radiant bit,
  region smallint,
  games bigint DEFAULT 1,
  wins bigint,
  epoch_week integer,
  UNIQUE (scenario, is_radiant, region, epoch_week)
);

CREATE TABLE hero_search (
  match_id bigint,
  teamA int,
  teamB int,
  teamAWin bit,
  start_time int
);

-- CREATE INDEX hero_search_teamA_idx_gin ON hero_search USING dbo.GIN(teamA);
-- CREATE INDEX hero_search_teamB_idx_gin ON hero_search USING dbo.GIN(teamB);

-- BEGIN
--     IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'readonly') BEGIN
--         GRANT SELECT ON matches TO readonly;
--         GRANT SELECT ON player_matches TO readonly;
--         GRANT SELECT ON heroes TO readonly;
--         GRANT SELECT ON leagues TO readonly;
--         GRANT SELECT ON items TO readonly;
--         GRANT SELECT ON teams TO readonly;
--         GRANT SELECT ON team_match TO readonly;
--         GRANT SELECT ON match_patch TO readonly;
--         GRANT SELECT ON picks_bans TO readonly;
--         GRANT SELECT ON match_logs TO readonly;
--         GRANT SELECT ON notable_players TO readonly;
--         GRANT SELECT ON public_matches TO readonly;
--         GRANT SELECT ON public_player_matches TO readonly;
--         GRANT SELECT ON players TO readonly;
--         GRANT SELECT ON team_rating TO readonly;
--     END 
-- END

CREATE INDEX matches_leagueid_idx ON dbo.matches([leagueid]) WHERE leagueid > 0;
CREATE INDEX matches_start_time_idx ON dbo.matches([start_time]);
CREATE INDEX player_matches_account_id_idx ON dbo.player_matches(account_id) WHERE account_id IS NOT NULL;
CREATE INDEX player_matches_hero_id_idx ON dbo.player_matches(hero_id);
CREATE INDEX players_cheese_idx ON dbo.players(cheese) WHERE cheese IS NOT NULL AND cheese > 0;
-- CREATE INDEX players_personaname_idx_gin ON dbo.players USING GIN(personaname gin_trgm_ops);
CREATE INDEX subscriptions_account_id_idx  ON dbo.subscriptions(account_id);
CREATE INDEX subscriptions_customer_id_idx  ON dbo.subscriptions(customer_id);
CREATE INDEX webhooks_account_id_idx  ON dbo.webhooks(account_id);
CREATE INDEX api_keys_usage_account_id_idx  ON dbo.api_key_usage(account_id);
CREATE INDEX api_keys_usage_datetime_idx  ON dbo.api_key_usage(datetime);
CREATE INDEX user_usage_account_id_idx  ON dbo.user_usage(account_id);
CREATE INDEX user_usage_datetime_idx  ON dbo.user_usage(datetime);
CREATE UNIQUE INDEX user_usage_unique_idx  ON dbo.user_usage(account_id, ip, datetime);
CREATE INDEX match_logs_match_id_idx  ON dbo.match_logs(match_id);
CREATE INDEX match_logs_match_id_player_slot_idx  ON dbo.match_logs(match_id, player_slot) WHERE player_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_player1_slot_idx  ON dbo.match_logs(match_id, player1_slot) WHERE player1_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_attackername_slot_idx  ON dbo.match_logs(match_id, attackername_slot) WHERE attackername_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_targetname_slot_idx  ON dbo.match_logs(match_id, targetname_slot) WHERE targetname_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_sourcename_slot_idx  ON dbo.match_logs(match_id, sourcename_slot) WHERE sourcename_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_targetsourcename_slot_idx  ON dbo.match_logs(match_id, targetsourcename_slot) WHERE targetsourcename_slot IS NOT NULL;
CREATE INDEX match_logs_match_id_valuename_idx  ON dbo.match_logs(match_id, valuename) WHERE valuename IS NOT NULL;
CREATE INDEX match_logs_match_id_type_idx  ON dbo.match_logs(match_id, type);
CREATE INDEX match_logs_valuename_idx  ON dbo.match_logs(valuename) WHERE valuename IS NOT NULL;
CREATE INDEX match_logs_type_idx  ON dbo.match_logs(type);
CREATE INDEX public_matches_start_time_idx  ON dbo.public_matches(start_time);
CREATE INDEX public_matches_avg_mmr_idx  ON dbo.public_matches(avg_mmr);
CREATE INDEX public_matches_avg_rank_tier_idx  ON dbo.public_matches(avg_rank_tier) WHERE avg_rank_tier IS NOT NULL;
CREATE INDEX public_player_matches_hero_id_idx  ON dbo.public_player_matches(hero_id);
CREATE INDEX public_player_matches_match_id_idx  ON dbo.public_player_matches(match_id);
CREATE INDEX team_rating_rating_idx  ON dbo.team_rating(rating);
CREATE INDEX hero_ranking_hero_id_score_idx  ON dbo.hero_ranking(hero_id, score);
CREATE INDEX queue_priority_id_idx  ON dbo.queue(priority, id);
