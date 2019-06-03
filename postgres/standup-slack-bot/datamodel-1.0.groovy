type Eventid @pgTable(name: "eventids") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: ID! @pgColumn(name: "event_id") @unique
}

type Migrate @pgTable(name: "migrate") {
  id: Int! @pgColumn(name: "version") @unique
}

type Post @pgTable(name: "posts") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  reports: [Report]
  standup: Standup! @pgColumn(name: "standup_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type Question @pgTable(name: "questions") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  order: Int!
  question: String!
  standup: Standup! @pgColumn(name: "standup_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type Report @pgTable(name: "reports") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  post: Post @pgColumn(name: "post_id")
  questions: Json!
  standup: Standup! @pgColumn(name: "standup_id")
  status: ReportStatus!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  user: User! @pgColumn(name: "user_id")
}

type Review @pgTable(name: "reviews") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  text: String!
  type: ReviewType!
  user: User! @pgColumn(name: "user_id")
}

type Standup @pgTable(name: "standups") {
  channelId: String! @pgColumn(name: "channel_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  isThreaded: Boolean! @default(value: false) @pgColumn(name: "is_threaded")
  # Type citext is not supported
  # name: citext!
  posts: [Post]
  questions: [Question]
  reports: [Report]
  standupsUsers: [StandupsUser]
  team: Team! @pgColumn(name: "team_id")
  # Type time is not supported
  # time: time!
  timezone: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type StandupsUser @pgTable(name: "standups_users") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  isStandupOwner: Boolean! @default(value: false) @pgColumn(name: "is_standup_owner")
  standup: Standup! @pgColumn(name: "standup_id")
  status: StandupUserStatus!
  # Type time is not supported
  # time: time!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  user: User! @pgColumn(name: "user_id")
}

type Team @pgTable(name: "teams") {
  botAccessToken: String! @pgColumn(name: "bot_access_token") @unique
  botSlackId: String! @pgColumn(name: "bot_slack_id")
  costPerUser: Int! @default(value: 100) @pgColumn(name: "cost_per_user")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  minimumMonthlyCost: Int! @default(value: 0) @pgColumn(name: "minimum_monthly_cost")
  scope: String! @default(value: "{}")
  standups: [Standup]
  status: TeamStatus!
  stripeId: String @pgColumn(name: "stripe_id")
  teamAccessToken: String! @pgColumn(name: "team_access_token") @unique
  teamName: String! @pgColumn(name: "team_name")
  teamSlackId: String! @pgColumn(name: "team_slack_id") @unique
  trialEnds: DateTime! @pgColumn(name: "trial_ends")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  users: [User]
}

type User @pgTable(name: "users") {
  avatarUrl: String @pgColumn(name: "avatar_url")
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String
  firstName: String @pgColumn(name: "first_name")
  id: Int! @unique
  isTeamOwner: Boolean! @default(value: false) @pgColumn(name: "is_team_owner")
  lastName: String @pgColumn(name: "last_name")
  reports: [Report]
  reviews: [Review]
  slackId: String! @pgColumn(name: "slack_id")
  standupsUsers: [StandupsUser]
  team: Team! @pgColumn(name: "team_id")
  timezone: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
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
