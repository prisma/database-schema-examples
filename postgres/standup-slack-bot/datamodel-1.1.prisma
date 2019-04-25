type Eventid @db(name: "eventids") {
  createdAt: DateTime! @db(name: "created_at")
  event_id: ID! @id
}

type Migrate @db(name: "migrate") {
  version: Int! @id
}

type Post @db(name: "posts") {
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "posts_id_seq", initialValue: 1, allocationSize: 1)
  reports: [Report]
  standup: Standup! @db(name: "standup_id")
  updatedAt: DateTime! @db(name: "updated_at")
}

type Question @db(name: "questions") {
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "questions_id_seq", initialValue: 1, allocationSize: 1)
  order: Int!
  question: String!
  standup: Standup! @db(name: "standup_id")
  updatedAt: DateTime! @db(name: "updated_at")
}

type Report @db(name: "reports") {
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "reports_id_seq", initialValue: 1, allocationSize: 1)
  post: Post @db(name: "post_id")
  questions: Json!
  standup: Standup! @db(name: "standup_id")
  status: ReportStatus!
  updatedAt: DateTime! @db(name: "updated_at")
  user: User! @db(name: "user_id")
}

type Review @db(name: "reviews") {
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "reviews_id_seq", initialValue: 1, allocationSize: 1)
  text: String!
  type: ReviewType!
  user: User! @db(name: "user_id")
}

type Standup @db(name: "standups") {
  channelId: String! @db(name: "channel_id")
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "standups_id_seq", initialValue: 1, allocationSize: 1)
  isThreaded: Boolean! @db(name: "is_threaded") @default(value: false)
  # Type citext is not supported
  # name: citext!
  posts: [Post]
  questions: [Question]
  reports: [Report]
  standupsUsers: [StandupsUser]
  team: Team! @db(name: "team_id")
  # Type time is not supported
  # time: time!
  timezone: String!
  updatedAt: DateTime! @db(name: "updated_at")
}

type StandupsUser @db(name: "standups_users") {
  createdAt: DateTime! @db(name: "created_at")
  isStandupOwner: Boolean! @db(name: "is_standup_owner") @default(value: false)
  standup: Standup! @db(name: "standup_id")
  status: StandupUserStatus!
  # Type time is not supported
  # time: time!
  updatedAt: DateTime! @db(name: "updated_at")
  user: User! @db(name: "user_id")
}

type Team @db(name: "teams") {
  botAccessToken: String! @db(name: "bot_access_token") @unique
  botSlackId: String! @db(name: "bot_slack_id")
  costPerUser: Int! @db(name: "cost_per_user") @default(value: 100)
  createdAt: DateTime! @db(name: "created_at")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "teams_id_seq", initialValue: 1, allocationSize: 1)
  minimumMonthlyCost: Int! @db(name: "minimum_monthly_cost") @default(value: 0)
  scope: String! @default(value: "{}")
  standups: [Standup]
  status: TeamStatus!
  stripeId: String @db(name: "stripe_id")
  teamAccessToken: String! @db(name: "team_access_token") @unique
  teamName: String! @db(name: "team_name")
  teamSlackId: String! @db(name: "team_slack_id") @unique
  trialEnds: DateTime! @db(name: "trial_ends")
  updatedAt: DateTime! @db(name: "updated_at")
  users: [User]
}

type User @db(name: "users") {
  avatarUrl: String @db(name: "avatar_url")
  createdAt: DateTime! @db(name: "created_at")
  email: String
  firstName: String @db(name: "first_name")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "users_id_seq", initialValue: 1, allocationSize: 1)
  isTeamOwner: Boolean! @db(name: "is_team_owner") @default(value: false)
  lastName: String @db(name: "last_name")
  reports: [Report]
  reviews: [Review]
  slackId: String! @db(name: "slack_id")
  standupsUsers: [StandupsUser]
  team: Team! @db(name: "team_id")
  timezone: String!
  updatedAt: DateTime! @db(name: "updated_at")
  username: String!
}

enum ReportStatus {
  ASKED
  COMPLETE
  PENDING
  SKIP
}

enum ReviewType {
  COMMENT
  EXIT_FEEDBACK
  REFERRED_BY
}

enum StandupUserStatus {
  ACTIVE
  INACTIVE
  INVITED
}

enum TeamStatus {
  ACTIVE
  DELINQUENT
  INACTIVE
}
