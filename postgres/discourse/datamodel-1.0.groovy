type ApiKey @pgTable(name: "api_keys") {
  # Type _inet is not supported
  # allowedIps: _inet @pgColumn(name: "allowed_ips")
  createdAt: DateTime! @pgColumn(name: "created_at")
  createdById: Int @pgColumn(name: "created_by_id")
  hidden: Boolean! @default(value: false)
  id: Int! @unique
  key: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id") @unique
}

type ApplicationRequest @pgTable(name: "application_requests") {
  count: Int! @default(value: 0)
  date: DateTime!
  id: Int! @unique
  reqType: Int! @pgColumn(name: "req_type")
}

type ArInternalMetadatum @pgTable(name: "ar_internal_metadata") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: ID! @pgColumn(name: "key") @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type Badge @pgTable(name: "badges") {
  allowTitle: Boolean! @default(value: false) @pgColumn(name: "allow_title")
  autoRevoke: Boolean! @default(value: true) @pgColumn(name: "auto_revoke")
  badgeGroupingId: Int! @default(value: 5) @pgColumn(name: "badge_grouping_id")
  badgeTypeId: Int! @pgColumn(name: "badge_type_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  description: String
  enabled: Boolean! @default(value: true)
  grantCount: Int! @default(value: 0) @pgColumn(name: "grant_count")
  icon: String @default(value: "fa-certificate")
  id: Int! @unique
  image: String
  listable: Boolean @default(value: true)
  longDescription: String @pgColumn(name: "long_description")
  multipleGrant: Boolean! @default(value: false) @pgColumn(name: "multiple_grant")
  name: String! @unique
  query: String
  showPosts: Boolean! @default(value: false) @pgColumn(name: "show_posts")
  system: Boolean! @default(value: false)
  targetPosts: Boolean @default(value: false) @pgColumn(name: "target_posts")
  trigger: Int
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type BadgeGrouping @pgTable(name: "badge_groupings") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  description: String
  id: Int! @unique
  name: String!
  position: Int!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type BadgeType @pgTable(name: "badge_types") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String! @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type CategoriesWebHook @pgTable(name: "categories_web_hooks") {
  categoryId: Int! @pgColumn(name: "category_id")
  webHookId: Int! @pgColumn(name: "web_hook_id")
}

type Category @pgTable(name: "categories") {
  allowBadges: Boolean! @default(value: true) @pgColumn(name: "allow_badges")
  allTopicsWiki: Boolean! @default(value: false) @pgColumn(name: "all_topics_wiki")
  autoCloseBasedOnLastPost: Boolean @default(value: false) @pgColumn(name: "auto_close_based_on_last_post")
  autoCloseHours: Float @pgColumn(name: "auto_close_hours")
  color: String! @default(value: "AB9364")
  containsMessages: Boolean @pgColumn(name: "contains_messages")
  createdAt: DateTime! @pgColumn(name: "created_at")
  defaultTopPeriod: String @default(value: "all") @pgColumn(name: "default_top_period")
  defaultView: String @pgColumn(name: "default_view")
  description: String
  emailIn: String @pgColumn(name: "email_in") @unique
  emailInAllowStrangers: Boolean @default(value: false) @pgColumn(name: "email_in_allow_strangers")
  id: Int! @unique
  latestPostId: Int @pgColumn(name: "latest_post_id")
  latestTopicId: Int @pgColumn(name: "latest_topic_id")
  mailinglistMirror: Boolean! @default(value: false) @pgColumn(name: "mailinglist_mirror")
  minimumRequiredTags: Int @default(value: 0) @pgColumn(name: "minimum_required_tags")
  name: String! @unique
  nameLower: String! @pgColumn(name: "name_lower")
  navigateToFirstPostAfterRead: Boolean! @default(value: false) @pgColumn(name: "navigate_to_first_post_after_read")
  numFeaturedTopics: Int @default(value: 3) @pgColumn(name: "num_featured_topics")
  parentCategoryId: Int @pgColumn(name: "parent_category_id")
  position: Int
  postCount: Int! @default(value: 0) @pgColumn(name: "post_count")
  postsDay: Int @default(value: 0) @pgColumn(name: "posts_day")
  postsMonth: Int @default(value: 0) @pgColumn(name: "posts_month")
  postsWeek: Int @default(value: 0) @pgColumn(name: "posts_week")
  postsYear: Int @default(value: 0) @pgColumn(name: "posts_year")
  readRestricted: Boolean! @default(value: false) @pgColumn(name: "read_restricted")
  showSubcategoryList: Boolean @default(value: false) @pgColumn(name: "show_subcategory_list")
  slug: String!
  sortAscending: Boolean @pgColumn(name: "sort_ascending")
  sortOrder: String @pgColumn(name: "sort_order")
  subcategoryListStyle: String @default(value: "rows_with_featured_topics") @pgColumn(name: "subcategory_list_style")
  suppressFromLatest: Boolean @default(value: false) @pgColumn(name: "suppress_from_latest")
  textColor: String! @default(value: "FFFFFF") @pgColumn(name: "text_color")
  topicCount: Int! @default(value: 0) @pgColumn(name: "topic_count")
  topicFeaturedLinkAllowed: Boolean @default(value: true) @pgColumn(name: "topic_featured_link_allowed")
  topicId: Int @pgColumn(name: "topic_id")
  topicsDay: Int @default(value: 0) @pgColumn(name: "topics_day")
  topicsMonth: Int @default(value: 0) @pgColumn(name: "topics_month")
  topicsWeek: Int @default(value: 0) @pgColumn(name: "topics_week")
  topicsYear: Int @default(value: 0) @pgColumn(name: "topics_year")
  topicTemplate: String @pgColumn(name: "topic_template")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  uploadedBackgroundId: Int @pgColumn(name: "uploaded_background_id")
  uploadedLogoId: Int @pgColumn(name: "uploaded_logo_id")
  userId: Int! @pgColumn(name: "user_id")
}

type CategoryCustomField @pgTable(name: "category_custom_fields") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type CategoryFeaturedTopic @pgTable(name: "category_featured_topics") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  rank: Int! @default(value: 0)
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type CategoryGroup @pgTable(name: "category_groups") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  permissionType: Int @default(value: 1) @pgColumn(name: "permission_type")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type CategorySearchDatum @pgTable(name: "category_search_data") {
  id: Int! @pgColumn(name: "category_id") @unique
  locale: String
  rawData: String @pgColumn(name: "raw_data")
  # Type tsvector is not supported
  # searchData: tsvector @pgColumn(name: "search_data")
  version: Int @default(value: 0)
}

type CategoryTag @pgTable(name: "category_tags") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  tagId: Int! @pgColumn(name: "tag_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type CategoryTagGroup @pgTable(name: "category_tag_groups") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  tagGroupId: Int! @pgColumn(name: "tag_group_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type CategoryTagStat @pgTable(name: "category_tag_stats") {
  categoryId: Int! @pgColumn(name: "category_id")
  id: Int! @unique
  tagId: Int! @pgColumn(name: "tag_id")
  topicCount: Int! @default(value: 0) @pgColumn(name: "topic_count")
}

type CategoryUser @pgTable(name: "category_users") {
  categoryId: Int! @pgColumn(name: "category_id")
  id: Int! @unique
  notificationLevel: Int! @pgColumn(name: "notification_level")
  userId: Int! @pgColumn(name: "user_id")
}

type ChildTheme @pgTable(name: "child_themes") {
  childThemeId: Int @pgColumn(name: "child_theme_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  parentThemeId: Int @pgColumn(name: "parent_theme_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type ColorScheme @pgTable(name: "color_schemes") {
  baseSchemeId: String @pgColumn(name: "base_scheme_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  themeId: Int @pgColumn(name: "theme_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  version: Int! @default(value: 1)
  viaWizard: Boolean! @default(value: false) @pgColumn(name: "via_wizard")
}

type ColorSchemeColor @pgTable(name: "color_scheme_colors") {
  colorSchemeId: Int! @pgColumn(name: "color_scheme_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  hex: String!
  id: Int! @unique
  name: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type CustomEmoji @pgTable(name: "custom_emojis") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String! @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  uploadId: Int! @pgColumn(name: "upload_id")
}

type Developer @pgTable(name: "developers") {
  id: Int! @unique
  userId: Int! @pgColumn(name: "user_id")
}

type DirectoryItem @pgTable(name: "directory_items") {
  createdAt: DateTime @pgColumn(name: "created_at")
  daysVisited: Int! @default(value: 0) @pgColumn(name: "days_visited")
  id: Int! @unique
  likesGiven: Int! @pgColumn(name: "likes_given")
  likesReceived: Int! @pgColumn(name: "likes_received")
  periodType: Int! @pgColumn(name: "period_type")
  postCount: Int! @pgColumn(name: "post_count")
  postsRead: Int! @default(value: 0) @pgColumn(name: "posts_read")
  topicCount: Int! @pgColumn(name: "topic_count")
  topicsEntered: Int! @pgColumn(name: "topics_entered")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type Draft @pgTable(name: "drafts") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  data: String!
  draftKey: String! @pgColumn(name: "draft_key")
  id: Int! @unique
  revisions: Int! @default(value: 1)
  sequence: Int! @default(value: 0)
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type DraftSequence @pgTable(name: "draft_sequences") {
  draftKey: String! @pgColumn(name: "draft_key")
  id: Int! @unique
  sequence: Int!
  userId: Int! @pgColumn(name: "user_id")
}

type EmailChangeRequest @pgTable(name: "email_change_requests") {
  changeState: Int! @pgColumn(name: "change_state")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  newEmail: String! @pgColumn(name: "new_email")
  newEmailTokenId: Int @pgColumn(name: "new_email_token_id")
  oldEmail: String! @pgColumn(name: "old_email")
  oldEmailTokenId: Int @pgColumn(name: "old_email_token_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type EmailLog @pgTable(name: "email_logs") {
  bounced: Boolean! @default(value: false)
  bounceKey: UUID @pgColumn(name: "bounce_key")
  createdAt: DateTime! @pgColumn(name: "created_at")
  emailType: String! @pgColumn(name: "email_type")
  id: Int! @unique
  messageId: String @pgColumn(name: "message_id")
  postId: Int @pgColumn(name: "post_id")
  toAddress: String! @pgColumn(name: "to_address")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type EmailToken @pgTable(name: "email_tokens") {
  confirmed: Boolean! @default(value: false)
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String!
  expired: Boolean! @default(value: false)
  id: Int! @unique
  token: String! @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type EmbeddableHost @pgTable(name: "embeddable_hosts") {
  categoryId: Int! @pgColumn(name: "category_id")
  className: String @pgColumn(name: "class_name")
  createdAt: DateTime @pgColumn(name: "created_at")
  host: String!
  id: Int! @unique
  pathWhitelist: String @pgColumn(name: "path_whitelist")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type FacebookUserInfo @pgTable(name: "facebook_user_infos") {
  aboutMe: String @pgColumn(name: "about_me")
  avatarUrl: String @pgColumn(name: "avatar_url")
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String
  facebookUserId: Int! @pgColumn(name: "facebook_user_id") @unique
  firstName: String @pgColumn(name: "first_name")
  gender: String
  id: Int! @unique
  lastName: String @pgColumn(name: "last_name")
  link: String
  location: String
  name: String
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id") @unique
  username: String
  website: String
}

type GithubUserInfo @pgTable(name: "github_user_infos") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  githubUserId: Int! @pgColumn(name: "github_user_id") @unique
  id: Int! @unique
  screenName: String! @pgColumn(name: "screen_name")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id") @unique
}

type GivenDailyLike @pgTable(name: "given_daily_likes") {
  givenDate: DateTime! @pgColumn(name: "given_date")
  likesGiven: Int! @pgColumn(name: "likes_given")
  limitReached: Boolean! @default(value: false) @pgColumn(name: "limit_reached")
  userId: Int! @pgColumn(name: "user_id")
}

type GoogleUserInfo @pgTable(name: "google_user_infos") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String
  firstName: String @pgColumn(name: "first_name")
  gender: String
  googleUserId: String! @pgColumn(name: "google_user_id") @unique
  id: Int! @unique
  lastName: String @pgColumn(name: "last_name")
  link: String
  name: String
  picture: String
  profileLink: String @pgColumn(name: "profile_link")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id") @unique
}

type Group @pgTable(name: "groups") {
  allowMembershipRequests: Boolean! @default(value: false) @pgColumn(name: "allow_membership_requests")
  automatic: Boolean! @default(value: false)
  automaticMembershipEmailDomains: String @pgColumn(name: "automatic_membership_email_domains")
  automaticMembershipRetroactive: Boolean @default(value: false) @pgColumn(name: "automatic_membership_retroactive")
  bioCooked: String @pgColumn(name: "bio_cooked")
  bioRaw: String @pgColumn(name: "bio_raw")
  createdAt: DateTime! @pgColumn(name: "created_at")
  defaultNotificationLevel: Int! @default(value: 3) @pgColumn(name: "default_notification_level")
  flairBgColor: String @pgColumn(name: "flair_bg_color")
  flairColor: String @pgColumn(name: "flair_color")
  flairUrl: String @pgColumn(name: "flair_url")
  fullName: String @pgColumn(name: "full_name")
  grantTrustLevel: Int @pgColumn(name: "grant_trust_level")
  hasMessages: Boolean! @default(value: false) @pgColumn(name: "has_messages")
  id: Int! @unique
  incomingEmail: String @pgColumn(name: "incoming_email") @unique
  membershipRequestTemplate: String @pgColumn(name: "membership_request_template")
  mentionableLevel: Int @default(value: 0) @pgColumn(name: "mentionable_level")
  messageableLevel: Int @default(value: 0) @pgColumn(name: "messageable_level")
  name: String! @unique
  primaryGroup: Boolean! @default(value: false) @pgColumn(name: "primary_group")
  publicAdmission: Boolean! @default(value: false) @pgColumn(name: "public_admission")
  publicExit: Boolean! @default(value: false) @pgColumn(name: "public_exit")
  title: String
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userCount: Int! @default(value: 0) @pgColumn(name: "user_count")
  visibilityLevel: Int! @default(value: 0) @pgColumn(name: "visibility_level")
}

type GroupArchivedMessage @pgTable(name: "group_archived_messages") {
  createdAt: DateTime @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type GroupCustomField @pgTable(name: "group_custom_fields") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  name: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type GroupHistory @pgTable(name: "group_histories") {
  actingUserId: Int! @pgColumn(name: "acting_user_id")
  action: Int!
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  newValue: String @pgColumn(name: "new_value")
  prevValue: String @pgColumn(name: "prev_value")
  subject: String
  targetUserId: Int @pgColumn(name: "target_user_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type GroupMention @pgTable(name: "group_mentions") {
  createdAt: DateTime @pgColumn(name: "created_at")
  groupId: Int @pgColumn(name: "group_id")
  id: Int! @unique
  postId: Int @pgColumn(name: "post_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type GroupsWebHook @pgTable(name: "groups_web_hooks") {
  groupId: Int! @pgColumn(name: "group_id")
  webHookId: Int! @pgColumn(name: "web_hook_id")
}

type GroupUser @pgTable(name: "group_users") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  notificationLevel: Int! @default(value: 2) @pgColumn(name: "notification_level")
  owner: Boolean! @default(value: false)
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type IncomingDomain @pgTable(name: "incoming_domains") {
  https: Boolean! @default(value: false)
  id: Int! @unique
  name: String!
  port: Int!
}

type IncomingEmail @pgTable(name: "incoming_emails") {
  ccAddresses: String @pgColumn(name: "cc_addresses")
  createdAt: DateTime! @pgColumn(name: "created_at")
  error: String
  fromAddress: String @pgColumn(name: "from_address")
  id: Int! @unique
  isAutoGenerated: Boolean @default(value: false) @pgColumn(name: "is_auto_generated")
  isBounce: Boolean! @default(value: false) @pgColumn(name: "is_bounce")
  messageId: String @pgColumn(name: "message_id")
  postId: Int @pgColumn(name: "post_id")
  raw: String
  rejectionMessage: String @pgColumn(name: "rejection_message")
  subject: String
  toAddresses: String @pgColumn(name: "to_addresses")
  topicId: Int @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type IncomingLink @pgTable(name: "incoming_links") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  currentUserId: Int @pgColumn(name: "current_user_id")
  id: Int! @unique
  incomingRefererId: Int @pgColumn(name: "incoming_referer_id")
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  postId: Int! @pgColumn(name: "post_id")
  userId: Int @pgColumn(name: "user_id")
}

type IncomingReferer @pgTable(name: "incoming_referers") {
  id: Int! @unique
  incomingDomainId: Int! @pgColumn(name: "incoming_domain_id")
  path: String!
}

type InstagramUserInfo @pgTable(name: "instagram_user_infos") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  instagramUserId: Int @pgColumn(name: "instagram_user_id")
  screenName: String @pgColumn(name: "screen_name")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type Invite @pgTable(name: "invites") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  customMessage: String @pgColumn(name: "custom_message")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  email: String
  id: Int! @unique
  invalidatedAt: DateTime @pgColumn(name: "invalidated_at")
  invitedById: Int! @pgColumn(name: "invited_by_id")
  inviteKey: String! @pgColumn(name: "invite_key") @unique
  moderator: Boolean! @default(value: false)
  redeemedAt: DateTime @pgColumn(name: "redeemed_at")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type InvitedGroup @pgTable(name: "invited_groups") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int @pgColumn(name: "group_id")
  id: Int! @unique
  inviteId: Int @pgColumn(name: "invite_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type JavascriptCach @pgTable(name: "javascript_caches") {
  content: String!
  createdAt: DateTime! @pgColumn(name: "created_at")
  digest: String
  id: Int! @unique
  themeFieldId: Int! @pgColumn(name: "theme_field_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type MessageBus @pgTable(name: "message_bus") {
  context: String
  createdAt: DateTime! @pgColumn(name: "created_at")
  data: String
  id: Int! @unique
  name: String
}

type MutedUser @pgTable(name: "muted_users") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  mutedUserId: Int! @pgColumn(name: "muted_user_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type Notification @pgTable(name: "notifications") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  data: String!
  id: Int! @unique
  notificationType: Int! @pgColumn(name: "notification_type")
  postActionId: Int @pgColumn(name: "post_action_id")
  postNumber: Int @pgColumn(name: "post_number")
  read: Boolean! @default(value: false)
  topicId: Int @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type Oauth2UserInfo @pgTable(name: "oauth2_user_infos") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String
  id: Int! @unique
  name: String
  provider: String!
  uid: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type OnceoffLog @pgTable(name: "onceoff_logs") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  jobName: String @pgColumn(name: "job_name")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type OptimizedImage @pgTable(name: "optimized_images") {
  extension: String!
  filesize: Int
  height: Int!
  id: Int! @unique
  sha1: String!
  uploadId: Int! @pgColumn(name: "upload_id")
  url: String!
  width: Int!
}

type Permalink @pgTable(name: "permalinks") {
  categoryId: Int @pgColumn(name: "category_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  externalUrl: String @pgColumn(name: "external_url")
  id: Int! @unique
  postId: Int @pgColumn(name: "post_id")
  topicId: Int @pgColumn(name: "topic_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  url: String! @unique
}

type PluginStoreRow @pgTable(name: "plugin_store_rows") {
  id: Int! @unique
  key: String!
  pluginName: String! @pgColumn(name: "plugin_name")
  typeName: String! @pgColumn(name: "type_name")
  value: String
}

type Post @pgTable(name: "posts") {
  actionCode: String @pgColumn(name: "action_code")
  avgTime: Int @pgColumn(name: "avg_time")
  bakedAt: DateTime @pgColumn(name: "baked_at")
  bakedVersion: Int @pgColumn(name: "baked_version")
  bookmarkCount: Int! @default(value: 0) @pgColumn(name: "bookmark_count")
  # The processed HTML that is presented in a topic.
  cooked: String!
  cookMethod: Int! @default(value: 1) @pgColumn(name: "cook_method")
  createdAt: DateTime! @pgColumn(name: "created_at")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  editReason: String @pgColumn(name: "edit_reason")
  hidden: Boolean! @default(value: false)
  hiddenAt: DateTime @pgColumn(name: "hidden_at")
  hiddenReasonId: Int @pgColumn(name: "hidden_reason_id")
  id: Int! @unique
  illegalCount: Int! @default(value: 0) @pgColumn(name: "illegal_count")
  imageUrl: String @pgColumn(name: "image_url")
  inappropriateCount: Int! @default(value: 0) @pgColumn(name: "inappropriate_count")
  incomingLinkCount: Int! @default(value: 0) @pgColumn(name: "incoming_link_count")
  lastEditorId: Int @pgColumn(name: "last_editor_id")
  lastVersionAt: DateTime! @pgColumn(name: "last_version_at")
  likeCount: Int! @default(value: 0) @pgColumn(name: "like_count")
  likeScore: Int! @default(value: 0) @pgColumn(name: "like_score")
  lockedById: Int @pgColumn(name: "locked_by_id")
  notifyModeratorsCount: Int! @default(value: 0) @pgColumn(name: "notify_moderators_count")
  notifyUserCount: Int! @default(value: 0) @pgColumn(name: "notify_user_count")
  offTopicCount: Int! @default(value: 0) @pgColumn(name: "off_topic_count")
  percentRank: Float @default(value: 1.0) @pgColumn(name: "percent_rank")
  # The position of this post in the topic. The pair (topic_id, post_number) forms a natural key on the posts table.
  postNumber: Int! @pgColumn(name: "post_number")
  postType: Int! @default(value: 1) @pgColumn(name: "post_type")
  publicVersion: Int! @default(value: 1) @pgColumn(name: "public_version")
  quoteCount: Int! @default(value: 0) @pgColumn(name: "quote_count")
  # The raw Markdown that the user entered into the composer.
  raw: String!
  rawEmail: String @pgColumn(name: "raw_email")
  reads: Int! @default(value: 0)
  replyCount: Int! @default(value: 0) @pgColumn(name: "reply_count")
  # This column is true if the post contains a quote-reply, which causes the in-reply-to indicator to be absent.
  replyQuoted: Boolean! @default(value: false) @pgColumn(name: "reply_quoted")
  # If this post is a reply to another, this column is the post_number of the post it's replying to. [FKEY posts.topic_id, posts.post_number]
  replyToPostNumber: Int @pgColumn(name: "reply_to_post_number")
  replyToUserId: Int @pgColumn(name: "reply_to_user_id")
  score: Float
  selfEdits: Int! @default(value: 0) @pgColumn(name: "self_edits")
  sortOrder: Int @pgColumn(name: "sort_order")
  spamCount: Int! @default(value: 0) @pgColumn(name: "spam_count")
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userDeleted: Boolean! @default(value: false) @pgColumn(name: "user_deleted")
  userId: Int @pgColumn(name: "user_id")
  version: Int! @default(value: 1)
  viaEmail: Boolean! @default(value: false) @pgColumn(name: "via_email")
  wiki: Boolean! @default(value: false)
  wordCount: Int @pgColumn(name: "word_count")
}

type PostAction @pgTable(name: "post_actions") {
  agreedAt: DateTime @pgColumn(name: "agreed_at")
  agreedById: Int @pgColumn(name: "agreed_by_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  deferredAt: DateTime @pgColumn(name: "deferred_at")
  deferredById: Int @pgColumn(name: "deferred_by_id")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  disagreedAt: DateTime @pgColumn(name: "disagreed_at")
  disagreedById: Int @pgColumn(name: "disagreed_by_id")
  id: Int! @unique
  postActionTypeId: Int! @pgColumn(name: "post_action_type_id")
  postId: Int! @pgColumn(name: "post_id")
  relatedPostId: Int @pgColumn(name: "related_post_id")
  staffTookAction: Boolean! @default(value: false) @pgColumn(name: "staff_took_action")
  targetsTopic: Boolean! @default(value: false) @pgColumn(name: "targets_topic")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type PostActionType @pgTable(name: "post_action_types") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  icon: String
  id: Int! @unique
  isFlag: Boolean! @default(value: false) @pgColumn(name: "is_flag")
  nameKey: String! @pgColumn(name: "name_key")
  position: Int! @default(value: 0)
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type PostCustomField @pgTable(name: "post_custom_fields") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  postId: Int! @pgColumn(name: "post_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type PostDetail @pgTable(name: "post_details") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  extra: String
  id: Int! @unique
  key: String
  postId: Int @pgColumn(name: "post_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type PostReply @pgTable(name: "post_replies") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  postId: Int @pgColumn(name: "post_id")
  replyId: Int @pgColumn(name: "reply_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type PostReplyKey @pgTable(name: "post_reply_keys") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  postId: Int! @pgColumn(name: "post_id")
  replyKey: UUID! @pgColumn(name: "reply_key") @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type PostRevision @pgTable(name: "post_revisions") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  hidden: Boolean! @default(value: false)
  id: Int! @unique
  modifications: String
  number: Int
  postId: Int @pgColumn(name: "post_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type PostSearchDatum @pgTable(name: "post_search_data") {
  locale: String
  id: Int! @pgColumn(name: "post_id") @unique
  rawData: String @pgColumn(name: "raw_data")
  # Type tsvector is not supported
  # searchData: tsvector @pgColumn(name: "search_data")
  version: Int @default(value: 0)
}

type PostStat @pgTable(name: "post_stats") {
  composerOpenDurationMsecs: Int @pgColumn(name: "composer_open_duration_msecs")
  createdAt: DateTime @pgColumn(name: "created_at")
  draftsSaved: Int @pgColumn(name: "drafts_saved")
  id: Int! @unique
  postId: Int @pgColumn(name: "post_id")
  typingDurationMsecs: Int @pgColumn(name: "typing_duration_msecs")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type PostTiming @pgTable(name: "post_timings") {
  msecs: Int!
  postNumber: Int! @pgColumn(name: "post_number")
  topicId: Int! @pgColumn(name: "topic_id")
  userId: Int! @pgColumn(name: "user_id")
}

type PostUpload @pgTable(name: "post_uploads") {
  id: Int! @unique
  postId: Int! @pgColumn(name: "post_id")
  uploadId: Int! @pgColumn(name: "upload_id")
}

type PushSubscription @pgTable(name: "push_subscriptions") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  data: String!
  id: Int! @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type QueuedPost @pgTable(name: "queued_posts") {
  approvedAt: DateTime @pgColumn(name: "approved_at")
  approvedById: Int @pgColumn(name: "approved_by_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  postOptions: Json! @pgColumn(name: "post_options")
  queue: String!
  raw: String!
  rejectedAt: DateTime @pgColumn(name: "rejected_at")
  rejectedById: Int @pgColumn(name: "rejected_by_id")
  state: Int!
  topicId: Int @pgColumn(name: "topic_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type QuotedPost @pgTable(name: "quoted_posts") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  postId: Int! @pgColumn(name: "post_id")
  quotedPostId: Int! @pgColumn(name: "quoted_post_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type RemoteTheme @pgTable(name: "remote_themes") {
  aboutUrl: String @pgColumn(name: "about_url")
  branch: String
  commitsBehind: Int @pgColumn(name: "commits_behind")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  lastErrorText: String @pgColumn(name: "last_error_text")
  licenseUrl: String @pgColumn(name: "license_url")
  localVersion: String @pgColumn(name: "local_version")
  privateKey: String @pgColumn(name: "private_key")
  remoteUpdatedAt: DateTime @pgColumn(name: "remote_updated_at")
  remoteUrl: String! @pgColumn(name: "remote_url")
  remoteVersion: String @pgColumn(name: "remote_version")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type SchedulerStat @pgTable(name: "scheduler_stats") {
  durationMs: Int @pgColumn(name: "duration_ms")
  error: String
  hostname: String!
  id: Int! @unique
  liveSlotsFinish: Int @pgColumn(name: "live_slots_finish")
  liveSlotsStart: Int @pgColumn(name: "live_slots_start")
  name: String!
  pid: Int!
  startedAt: DateTime! @pgColumn(name: "started_at")
  success: Boolean
}

type SchemaMigration @pgTable(name: "schema_migrations") {
  id: ID! @pgColumn(name: "version") @unique
}

type SchemaMigrationDetail @pgTable(name: "schema_migration_details") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  direction: String
  duration: Int
  gitVersion: String @pgColumn(name: "git_version")
  hostname: String
  id: Int! @unique
  name: String
  railsVersion: String @pgColumn(name: "rails_version")
  version: String!
}

type ScreenedEmail @pgTable(name: "screened_emails") {
  actionType: Int! @pgColumn(name: "action_type")
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String! @unique
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  lastMatchAt: DateTime @pgColumn(name: "last_match_at")
  matchCount: Int! @default(value: 0) @pgColumn(name: "match_count")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type ScreenedIpAddress @pgTable(name: "screened_ip_addresses") {
  actionType: Int! @pgColumn(name: "action_type")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet! @pgColumn(name: "ip_address") @unique
  lastMatchAt: DateTime @pgColumn(name: "last_match_at")
  matchCount: Int! @default(value: 0) @pgColumn(name: "match_count")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type ScreenedUrl @pgTable(name: "screened_urls") {
  actionType: Int! @pgColumn(name: "action_type")
  createdAt: DateTime! @pgColumn(name: "created_at")
  domain: String!
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  lastMatchAt: DateTime @pgColumn(name: "last_match_at")
  matchCount: Int! @default(value: 0) @pgColumn(name: "match_count")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  url: String! @unique
}

type SearchLog @pgTable(name: "search_logs") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  searchResultId: Int @pgColumn(name: "search_result_id")
  searchResultType: Int @pgColumn(name: "search_result_type")
  searchType: Int! @pgColumn(name: "search_type")
  term: String!
  userId: Int @pgColumn(name: "user_id")
}

type SharedDraft @pgTable(name: "shared_drafts") {
  categoryId: Int! @pgColumn(name: "category_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id") @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type SingleSignOnRecord @pgTable(name: "single_sign_on_records") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  externalAvatarUrl: String @pgColumn(name: "external_avatar_url")
  externalCardBackgroundUrl: String @pgColumn(name: "external_card_background_url")
  externalEmail: String @pgColumn(name: "external_email")
  externalId: String! @pgColumn(name: "external_id") @unique
  externalName: String @pgColumn(name: "external_name")
  externalProfileBackgroundUrl: String @pgColumn(name: "external_profile_background_url")
  externalUsername: String @pgColumn(name: "external_username")
  id: Int! @unique
  lastPayload: String! @pgColumn(name: "last_payload")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type SiteSetting @pgTable(name: "site_settings") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  dataType: Int! @pgColumn(name: "data_type")
  id: Int! @unique
  name: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type SkippedEmailLog @pgTable(name: "skipped_email_logs") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  customReason: String @pgColumn(name: "custom_reason")
  emailType: String! @pgColumn(name: "email_type")
  id: Int! @unique
  postId: Int @pgColumn(name: "post_id")
  reasonType: Int! @pgColumn(name: "reason_type")
  toAddress: String! @pgColumn(name: "to_address")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type StylesheetCache @pgTable(name: "stylesheet_cache") {
  content: String!
  createdAt: DateTime @pgColumn(name: "created_at")
  digest: String!
  id: Int! @unique
  sourceMap: String @pgColumn(name: "source_map")
  target: String!
  themeId: Int! @default(value: -1) @pgColumn(name: "theme_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type Tag @pgTable(name: "tags") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  name: String! @unique
  pmTopicCount: Int! @default(value: 0) @pgColumn(name: "pm_topic_count")
  topicCount: Int! @default(value: 0) @pgColumn(name: "topic_count")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type TagGroup @pgTable(name: "tag_groups") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  onePerTopic: Boolean @default(value: false) @pgColumn(name: "one_per_topic")
  parentTagId: Int @pgColumn(name: "parent_tag_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type TagGroupMembership @pgTable(name: "tag_group_memberships") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  tagGroupId: Int! @pgColumn(name: "tag_group_id")
  tagId: Int! @pgColumn(name: "tag_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type TagGroupPermission @pgTable(name: "tag_group_permissions") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  permissionType: Int! @default(value: 1) @pgColumn(name: "permission_type")
  tagGroupId: Int! @pgColumn(name: "tag_group_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type TagSearchDatum @pgTable(name: "tag_search_data") {
  locale: String
  rawData: String @pgColumn(name: "raw_data")
  # Type tsvector is not supported
  # searchData: tsvector @pgColumn(name: "search_data")
  id: Int! @pgColumn(name: "tag_id") @unique
  version: Int @default(value: 0)
}

type TagUser @pgTable(name: "tag_users") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  notificationLevel: Int! @pgColumn(name: "notification_level")
  tagId: Int! @pgColumn(name: "tag_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type Theme @pgTable(name: "themes") {
  colorSchemeId: Int @pgColumn(name: "color_scheme_id")
  compilerVersion: Int! @default(value: 0) @pgColumn(name: "compiler_version")
  component: Boolean! @default(value: false)
  createdAt: DateTime! @pgColumn(name: "created_at")
  hidden: Boolean! @default(value: false)
  id: Int! @unique
  name: String!
  remoteThemeId: Int @pgColumn(name: "remote_theme_id") @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
  userSelectable: Boolean! @default(value: false) @pgColumn(name: "user_selectable")
}

type ThemeField @pgTable(name: "theme_fields") {
  compilerVersion: Int! @default(value: 0) @pgColumn(name: "compiler_version")
  createdAt: DateTime @pgColumn(name: "created_at")
  error: String
  id: Int! @unique
  name: String!
  targetId: Int! @pgColumn(name: "target_id")
  themeId: Int! @pgColumn(name: "theme_id")
  typeId: Int! @default(value: 0) @pgColumn(name: "type_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  uploadId: Int @pgColumn(name: "upload_id")
  value: String!
  valueBaked: String @pgColumn(name: "value_baked")
}

type ThemeSetting @pgTable(name: "theme_settings") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  dataType: Int! @pgColumn(name: "data_type")
  id: Int! @unique
  name: String!
  themeId: Int! @pgColumn(name: "theme_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type Topic @pgTable(name: "topics") {
  archetype: String! @default(value: "regular")
  archived: Boolean! @default(value: false)
  avgTime: Int @pgColumn(name: "avg_time")
  bumpedAt: DateTime! @pgColumn(name: "bumped_at")
  categoryId: Int @pgColumn(name: "category_id")
  closed: Boolean! @default(value: false)
  createdAt: DateTime! @pgColumn(name: "created_at")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  excerpt: String
  fancyTitle: String @pgColumn(name: "fancy_title")
  featuredLink: String @pgColumn(name: "featured_link")
  featuredUser1Id: Int @pgColumn(name: "featured_user1_id")
  featuredUser2Id: Int @pgColumn(name: "featured_user2_id")
  featuredUser3Id: Int @pgColumn(name: "featured_user3_id")
  featuredUser4Id: Int @pgColumn(name: "featured_user4_id")
  hasSummary: Boolean! @default(value: false) @pgColumn(name: "has_summary")
  highestPostNumber: Int! @default(value: 0) @pgColumn(name: "highest_post_number")
  highestStaffPostNumber: Int! @default(value: 0) @pgColumn(name: "highest_staff_post_number")
  id: Int! @unique
  imageUrl: String @pgColumn(name: "image_url")
  incomingLinkCount: Int! @default(value: 0) @pgColumn(name: "incoming_link_count")
  lastPostedAt: DateTime @pgColumn(name: "last_posted_at")
  lastPostUserId: Int! @pgColumn(name: "last_post_user_id")
  likeCount: Int! @default(value: 0) @pgColumn(name: "like_count")
  moderatorPostsCount: Int! @default(value: 0) @pgColumn(name: "moderator_posts_count")
  notifyModeratorsCount: Int! @default(value: 0) @pgColumn(name: "notify_moderators_count")
  participantCount: Int @default(value: 1) @pgColumn(name: "participant_count")
  percentRank: Float! @default(value: 1.0) @pgColumn(name: "percent_rank")
  pinnedAt: DateTime @pgColumn(name: "pinned_at")
  pinnedGlobally: Boolean! @default(value: false) @pgColumn(name: "pinned_globally")
  pinnedUntil: DateTime @pgColumn(name: "pinned_until")
  postsCount: Int! @default(value: 0) @pgColumn(name: "posts_count")
  replyCount: Int! @default(value: 0) @pgColumn(name: "reply_count")
  score: Float
  slug: String
  spamCount: Int! @default(value: 0) @pgColumn(name: "spam_count")
  subtype: String
  title: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
  views: Int! @default(value: 0)
  visible: Boolean! @default(value: true)
  wordCount: Int @pgColumn(name: "word_count")
}

type TopicAllowedGroup @pgTable(name: "topic_allowed_groups") {
  groupId: Int! @pgColumn(name: "group_id")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id")
}

type TopicAllowedUser @pgTable(name: "topic_allowed_users") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type TopicCustomField @pgTable(name: "topic_custom_fields") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String
}

type TopicEmbed @pgTable(name: "topic_embeds") {
  contentSha1: String @pgColumn(name: "content_sha1")
  createdAt: DateTime! @pgColumn(name: "created_at")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  embedUrl: String! @pgColumn(name: "embed_url") @unique
  id: Int! @unique
  postId: Int! @pgColumn(name: "post_id")
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type TopicInvite @pgTable(name: "topic_invites") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  inviteId: Int! @pgColumn(name: "invite_id")
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type TopicLink @pgTable(name: "topic_links") {
  clicks: Int! @default(value: 0)
  crawledAt: DateTime @pgColumn(name: "crawled_at")
  createdAt: DateTime! @pgColumn(name: "created_at")
  domain: String!
  extension: String
  id: Int! @unique
  internal: Boolean! @default(value: false)
  linkPostId: Int @pgColumn(name: "link_post_id")
  linkTopicId: Int @pgColumn(name: "link_topic_id")
  postId: Int @pgColumn(name: "post_id")
  quote: Boolean! @default(value: false)
  reflection: Boolean @default(value: false)
  title: String
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  url: String!
  userId: Int! @pgColumn(name: "user_id")
}

type TopicLinkClick @pgTable(name: "topic_link_clicks") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  topicLinkId: Int! @pgColumn(name: "topic_link_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int @pgColumn(name: "user_id")
}

type TopicSearchDatum @pgTable(name: "topic_search_data") {
  locale: String!
  rawData: String @pgColumn(name: "raw_data")
  # Type tsvector is not supported
  # searchData: tsvector @pgColumn(name: "search_data")
  id: Int! @pgColumn(name: "topic_id") @unique
  version: Int @default(value: 0)
}

type TopicTag @pgTable(name: "topic_tags") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  tagId: Int! @pgColumn(name: "tag_id")
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type TopicTimer @pgTable(name: "topic_timers") {
  basedOnLastPost: Boolean! @default(value: false) @pgColumn(name: "based_on_last_post")
  categoryId: Int @pgColumn(name: "category_id")
  createdAt: DateTime @pgColumn(name: "created_at")
  deletedAt: DateTime @pgColumn(name: "deleted_at")
  deletedById: Int @pgColumn(name: "deleted_by_id")
  executeAt: DateTime! @pgColumn(name: "execute_at")
  id: Int! @unique
  publicType: Boolean @default(value: true) @pgColumn(name: "public_type")
  statusType: Int! @pgColumn(name: "status_type")
  topicId: Int! @pgColumn(name: "topic_id") @unique
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type TopicUser @pgTable(name: "topic_users") {
  bookmarked: Boolean @default(value: false)
  clearedPinnedAt: DateTime @pgColumn(name: "cleared_pinned_at")
  firstVisitedAt: DateTime @pgColumn(name: "first_visited_at")
  highestSeenPostNumber: Int @pgColumn(name: "highest_seen_post_number")
  id: Int! @unique
  lastEmailedPostNumber: Int @pgColumn(name: "last_emailed_post_number")
  lastReadPostNumber: Int @pgColumn(name: "last_read_post_number")
  lastVisitedAt: DateTime @pgColumn(name: "last_visited_at")
  liked: Boolean @default(value: false)
  notificationLevel: Int! @default(value: 1) @pgColumn(name: "notification_level")
  notificationsChangedAt: DateTime @pgColumn(name: "notifications_changed_at")
  notificationsReasonId: Int @pgColumn(name: "notifications_reason_id")
  posted: Boolean! @default(value: false)
  topicId: Int! @pgColumn(name: "topic_id")
  totalMsecsViewed: Int! @default(value: 0) @pgColumn(name: "total_msecs_viewed")
  userId: Int! @pgColumn(name: "user_id")
}

type TopicView @pgTable(name: "topic_views") {
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  topicId: Int! @pgColumn(name: "topic_id")
  userId: Int @pgColumn(name: "user_id")
  viewedAt: DateTime! @pgColumn(name: "viewed_at")
}

type TopTopic @pgTable(name: "top_topics") {
  allScore: Float @default(value: 0.0) @pgColumn(name: "all_score")
  dailyLikesCount: Int! @default(value: 0) @pgColumn(name: "daily_likes_count")
  dailyOpLikesCount: Int! @default(value: 0) @pgColumn(name: "daily_op_likes_count")
  dailyPostsCount: Int! @default(value: 0) @pgColumn(name: "daily_posts_count")
  dailyScore: Float @default(value: 0.0) @pgColumn(name: "daily_score")
  dailyViewsCount: Int! @default(value: 0) @pgColumn(name: "daily_views_count")
  id: Int! @unique
  monthlyLikesCount: Int! @default(value: 0) @pgColumn(name: "monthly_likes_count")
  monthlyOpLikesCount: Int! @default(value: 0) @pgColumn(name: "monthly_op_likes_count")
  monthlyPostsCount: Int! @default(value: 0) @pgColumn(name: "monthly_posts_count")
  monthlyScore: Float @default(value: 0.0) @pgColumn(name: "monthly_score")
  monthlyViewsCount: Int! @default(value: 0) @pgColumn(name: "monthly_views_count")
  quarterlyLikesCount: Int! @default(value: 0) @pgColumn(name: "quarterly_likes_count")
  quarterlyOpLikesCount: Int! @default(value: 0) @pgColumn(name: "quarterly_op_likes_count")
  quarterlyPostsCount: Int! @default(value: 0) @pgColumn(name: "quarterly_posts_count")
  quarterlyScore: Float @default(value: 0.0) @pgColumn(name: "quarterly_score")
  quarterlyViewsCount: Int! @default(value: 0) @pgColumn(name: "quarterly_views_count")
  topicId: Int @pgColumn(name: "topic_id") @unique
  weeklyLikesCount: Int! @default(value: 0) @pgColumn(name: "weekly_likes_count")
  weeklyOpLikesCount: Int! @default(value: 0) @pgColumn(name: "weekly_op_likes_count")
  weeklyPostsCount: Int! @default(value: 0) @pgColumn(name: "weekly_posts_count")
  weeklyScore: Float @default(value: 0.0) @pgColumn(name: "weekly_score")
  weeklyViewsCount: Int! @default(value: 0) @pgColumn(name: "weekly_views_count")
  yearlyLikesCount: Int! @default(value: 0) @pgColumn(name: "yearly_likes_count")
  yearlyOpLikesCount: Int! @default(value: 0) @pgColumn(name: "yearly_op_likes_count")
  yearlyPostsCount: Int! @default(value: 0) @pgColumn(name: "yearly_posts_count")
  yearlyScore: Float @default(value: 0.0) @pgColumn(name: "yearly_score")
  yearlyViewsCount: Int! @default(value: 0) @pgColumn(name: "yearly_views_count")
}

type TranslationOverride @pgTable(name: "translation_overrides") {
  compiledJs: String @pgColumn(name: "compiled_js")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  locale: String!
  translationKey: String! @pgColumn(name: "translation_key")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  value: String!
}

type TwitterUserInfo @pgTable(name: "twitter_user_infos") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String
  id: Int! @unique
  screenName: String! @pgColumn(name: "screen_name")
  twitterUserId: Int! @pgColumn(name: "twitter_user_id") @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id") @unique
}

type UnsubscribeKey @pgTable(name: "unsubscribe_keys") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: ID! @pgColumn(name: "key") @unique
  postId: Int @pgColumn(name: "post_id")
  topicId: Int @pgColumn(name: "topic_id")
  unsubscribeKeyType: String @pgColumn(name: "unsubscribe_key_type")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type Upload @pgTable(name: "uploads") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  extension: String
  filesize: Int!
  height: Int
  id: Int! @unique
  origin: String
  originalFilename: String! @pgColumn(name: "original_filename")
  retainHours: Int @pgColumn(name: "retain_hours")
  sha1: String @unique
  thumbnailHeight: Int @pgColumn(name: "thumbnail_height")
  thumbnailWidth: Int @pgColumn(name: "thumbnail_width")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  url: String!
  userId: Int! @pgColumn(name: "user_id")
  width: Int
}

type User @pgTable(name: "users") {
  active: Boolean! @default(value: false)
  admin: Boolean! @default(value: false)
  approved: Boolean! @default(value: false)
  approvedAt: DateTime @pgColumn(name: "approved_at")
  approvedById: Int @pgColumn(name: "approved_by_id")
  createdAt: DateTime! @pgColumn(name: "created_at")
  dateOfBirth: DateTime @pgColumn(name: "date_of_birth")
  firstSeenAt: DateTime @pgColumn(name: "first_seen_at")
  flagLevel: Int! @default(value: 0) @pgColumn(name: "flag_level")
  groupLockedTrustLevel: Int @pgColumn(name: "group_locked_trust_level")
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  lastEmailedAt: DateTime @pgColumn(name: "last_emailed_at")
  lastPostedAt: DateTime @pgColumn(name: "last_posted_at")
  lastSeenAt: DateTime @pgColumn(name: "last_seen_at")
  locale: String
  manualLockedTrustLevel: Int @pgColumn(name: "manual_locked_trust_level")
  moderator: Boolean @default(value: false)
  name: String
  passwordHash: String @pgColumn(name: "password_hash")
  previousVisitAt: DateTime @pgColumn(name: "previous_visit_at")
  primaryGroupId: Int @pgColumn(name: "primary_group_id")
  # Type inet is not supported
  # registrationIpAddress: inet @pgColumn(name: "registration_ip_address")
  salt: String
  seenNotificationId: Int! @default(value: 0) @pgColumn(name: "seen_notification_id")
  silencedTill: DateTime @pgColumn(name: "silenced_till")
  staged: Boolean! @default(value: false)
  suspendedAt: DateTime @pgColumn(name: "suspended_at")
  suspendedTill: DateTime @pgColumn(name: "suspended_till")
  title: String
  trustLevel: Int! @pgColumn(name: "trust_level")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  uploadedAvatarId: Int @pgColumn(name: "uploaded_avatar_id")
  username: String! @unique
  usernameLower: String! @pgColumn(name: "username_lower") @unique
  views: Int! @default(value: 0)
}

type UserAction @pgTable(name: "user_actions") {
  actingUserId: Int @pgColumn(name: "acting_user_id")
  actionType: Int! @pgColumn(name: "action_type")
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  queuedPostId: Int @pgColumn(name: "queued_post_id")
  targetPostId: Int @pgColumn(name: "target_post_id")
  targetTopicId: Int @pgColumn(name: "target_topic_id")
  targetUserId: Int @pgColumn(name: "target_user_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserApiKey @pgTable(name: "user_api_keys") {
  applicationName: String! @pgColumn(name: "application_name")
  clientId: String! @pgColumn(name: "client_id") @unique
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  key: String! @unique
  lastUsedAt: DateTime! @pgColumn(name: "last_used_at")
  pushUrl: String @pgColumn(name: "push_url")
  revokedAt: DateTime @pgColumn(name: "revoked_at")
  scopes: String! @default(value: "{}")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserArchivedMessage @pgTable(name: "user_archived_messages") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserAuthToken @pgTable(name: "user_auth_tokens") {
  authToken: String! @pgColumn(name: "auth_token") @unique
  authTokenSeen: Boolean! @default(value: false) @pgColumn(name: "auth_token_seen")
  # Type inet is not supported
  # clientIp: inet @pgColumn(name: "client_ip")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  prevAuthToken: String! @pgColumn(name: "prev_auth_token") @unique
  rotatedAt: DateTime! @pgColumn(name: "rotated_at")
  seenAt: DateTime @pgColumn(name: "seen_at")
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userAgent: String @pgColumn(name: "user_agent")
  userId: Int! @pgColumn(name: "user_id")
}

type UserAuthTokenLog @pgTable(name: "user_auth_token_logs") {
  action: String!
  authToken: String @pgColumn(name: "auth_token")
  # Type inet is not supported
  # clientIp: inet @pgColumn(name: "client_ip")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  path: String
  userAgent: String @pgColumn(name: "user_agent")
  userAuthTokenId: Int @pgColumn(name: "user_auth_token_id")
  userId: Int @pgColumn(name: "user_id")
}

type UserAvatar @pgTable(name: "user_avatars") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  customUploadId: Int @pgColumn(name: "custom_upload_id")
  gravatarUploadId: Int @pgColumn(name: "gravatar_upload_id")
  id: Int! @unique
  lastGravatarDownloadAttempt: DateTime @pgColumn(name: "last_gravatar_download_attempt")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserBadge @pgTable(name: "user_badges") {
  badgeId: Int! @pgColumn(name: "badge_id")
  grantedAt: DateTime! @pgColumn(name: "granted_at")
  grantedById: Int! @pgColumn(name: "granted_by_id")
  id: Int! @unique
  notificationId: Int @pgColumn(name: "notification_id")
  postId: Int @pgColumn(name: "post_id")
  seq: Int! @default(value: 0)
  userId: Int! @pgColumn(name: "user_id")
}

type UserCustomField @pgTable(name: "user_custom_fields") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  name: String!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
  value: String
}

type UserEmail @pgTable(name: "user_emails") {
  createdAt: DateTime @pgColumn(name: "created_at")
  email: String!
  id: Int! @unique
  primary: Boolean! @default(value: false)
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserExport @pgTable(name: "user_exports") {
  createdAt: DateTime @pgColumn(name: "created_at")
  fileName: String! @pgColumn(name: "file_name")
  id: Int! @unique
  updatedAt: DateTime @pgColumn(name: "updated_at")
  uploadId: Int @pgColumn(name: "upload_id")
  userId: Int! @pgColumn(name: "user_id")
}

type UserField @pgTable(name: "user_fields") {
  createdAt: DateTime @pgColumn(name: "created_at")
  description: String!
  editable: Boolean! @default(value: false)
  externalName: String @pgColumn(name: "external_name")
  externalType: String @pgColumn(name: "external_type")
  fieldType: String! @pgColumn(name: "field_type")
  id: Int! @unique
  name: String!
  position: Int @default(value: 0)
  required: Boolean! @default(value: true)
  showOnProfile: Boolean! @default(value: false) @pgColumn(name: "show_on_profile")
  showOnUserCard: Boolean! @default(value: false) @pgColumn(name: "show_on_user_card")
  updatedAt: DateTime @pgColumn(name: "updated_at")
}

type UserFieldOption @pgTable(name: "user_field_options") {
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userFieldId: Int! @pgColumn(name: "user_field_id")
  value: String!
}

type UserHistory @pgTable(name: "user_histories") {
  actingUserId: Int @pgColumn(name: "acting_user_id")
  action: Int!
  adminOnly: Boolean @default(value: false) @pgColumn(name: "admin_only")
  categoryId: Int @pgColumn(name: "category_id")
  context: String
  createdAt: DateTime! @pgColumn(name: "created_at")
  customType: String @pgColumn(name: "custom_type")
  details: String
  email: String
  id: Int! @unique
  ipAddress: String @pgColumn(name: "ip_address")
  newValue: String @pgColumn(name: "new_value")
  postId: Int @pgColumn(name: "post_id")
  previousValue: String @pgColumn(name: "previous_value")
  subject: String
  targetUserId: Int @pgColumn(name: "target_user_id")
  topicId: Int @pgColumn(name: "topic_id")
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}

type UserOpenId @pgTable(name: "user_open_ids") {
  active: Boolean!
  createdAt: DateTime! @pgColumn(name: "created_at")
  email: String!
  id: Int! @unique
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  url: String!
  userId: Int! @pgColumn(name: "user_id")
}

type UserOption @pgTable(name: "user_options") {
  allowPrivateMessages: Boolean! @default(value: true) @pgColumn(name: "allow_private_messages")
  automaticallyUnpinTopics: Boolean! @default(value: true) @pgColumn(name: "automatically_unpin_topics")
  autoTrackTopicsAfterMsecs: Int @pgColumn(name: "auto_track_topics_after_msecs")
  digestAfterMinutes: Int @pgColumn(name: "digest_after_minutes")
  disableJumpReply: Boolean! @default(value: false) @pgColumn(name: "disable_jump_reply")
  dynamicFavicon: Boolean! @default(value: false) @pgColumn(name: "dynamic_favicon")
  emailAlways: Boolean! @default(value: false) @pgColumn(name: "email_always")
  emailDigests: Boolean @pgColumn(name: "email_digests")
  emailDirect: Boolean! @default(value: true) @pgColumn(name: "email_direct")
  emailInReplyTo: Boolean! @default(value: true) @pgColumn(name: "email_in_reply_to")
  emailPreviousReplies: Int! @default(value: 2) @pgColumn(name: "email_previous_replies")
  emailPrivateMessages: Boolean! @default(value: true) @pgColumn(name: "email_private_messages")
  enableQuoting: Boolean! @default(value: true) @pgColumn(name: "enable_quoting")
  externalLinksInNewTab: Boolean! @default(value: false) @pgColumn(name: "external_links_in_new_tab")
  hideProfileAndPresence: Boolean! @default(value: false) @pgColumn(name: "hide_profile_and_presence")
  homepageId: Int @pgColumn(name: "homepage_id")
  includeTl0InDigests: Boolean @default(value: false) @pgColumn(name: "include_tl0_in_digests")
  lastRedirectedToTopAt: DateTime @pgColumn(name: "last_redirected_to_top_at")
  likeNotificationFrequency: Int! @default(value: 1) @pgColumn(name: "like_notification_frequency")
  mailingListMode: Boolean! @default(value: false) @pgColumn(name: "mailing_list_mode")
  mailingListModeFrequency: Int! @default(value: 1) @pgColumn(name: "mailing_list_mode_frequency")
  newTopicDurationMinutes: Int @pgColumn(name: "new_topic_duration_minutes")
  notificationLevelWhenReplying: Int @pgColumn(name: "notification_level_when_replying")
  themeIds: Int! @pgColumn(name: "theme_ids")
  themeKeySeq: Int! @default(value: 0) @pgColumn(name: "theme_key_seq")
  id: Int! @pgColumn(name: "user_id") @unique
}

type UserProfile @pgTable(name: "user_profiles") {
  badgeGrantedTitle: Boolean @default(value: false) @pgColumn(name: "badge_granted_title")
  bioCooked: String @pgColumn(name: "bio_cooked")
  bioCookedVersion: Int @pgColumn(name: "bio_cooked_version")
  bioRaw: String @pgColumn(name: "bio_raw")
  cardBackground: String @pgColumn(name: "card_background")
  dismissedBannerKey: Int @pgColumn(name: "dismissed_banner_key")
  location: String
  profileBackground: String @pgColumn(name: "profile_background")
  id: Int! @pgColumn(name: "user_id") @unique
  views: Int! @default(value: 0)
  website: String
}

type UserProfileView @pgTable(name: "user_profile_views") {
  id: Int! @unique
  # Type inet is not supported
  # ipAddress: inet @pgColumn(name: "ip_address")
  userId: Int @pgColumn(name: "user_id")
  userProfileId: Int! @pgColumn(name: "user_profile_id")
  viewedAt: DateTime! @pgColumn(name: "viewed_at")
}

type UserSearchDatum @pgTable(name: "user_search_data") {
  locale: String
  rawData: String @pgColumn(name: "raw_data")
  # Type tsvector is not supported
  # searchData: tsvector @pgColumn(name: "search_data")
  id: Int! @pgColumn(name: "user_id") @unique
  version: Int @default(value: 0)
}

type UserSecondFactor @pgTable(name: "user_second_factors") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  data: String!
  enabled: Boolean! @default(value: false)
  id: Int! @unique
  lastUsed: DateTime @pgColumn(name: "last_used")
  method: Int!
  updatedAt: DateTime! @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type UserStat @pgTable(name: "user_stats") {
  bounceScore: Float! @default(value: 0) @pgColumn(name: "bounce_score")
  daysVisited: Int! @default(value: 0) @pgColumn(name: "days_visited")
  firstPostCreatedAt: DateTime @pgColumn(name: "first_post_created_at")
  likesGiven: Int! @default(value: 0) @pgColumn(name: "likes_given")
  likesReceived: Int! @default(value: 0) @pgColumn(name: "likes_received")
  newSince: DateTime! @pgColumn(name: "new_since")
  postCount: Int! @default(value: 0) @pgColumn(name: "post_count")
  postsReadCount: Int! @default(value: 0) @pgColumn(name: "posts_read_count")
  readFaq: DateTime @pgColumn(name: "read_faq")
  resetBounceScoreAfter: DateTime @pgColumn(name: "reset_bounce_score_after")
  timeRead: Int! @default(value: 0) @pgColumn(name: "time_read")
  topicCount: Int! @default(value: 0) @pgColumn(name: "topic_count")
  topicReplyCount: Int! @default(value: 0) @pgColumn(name: "topic_reply_count")
  topicsEntered: Int! @default(value: 0) @pgColumn(name: "topics_entered")
  id: Int! @pgColumn(name: "user_id") @unique
}

type UserUpload @pgTable(name: "user_uploads") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: Int! @unique
  uploadId: Int! @pgColumn(name: "upload_id")
  userId: Int! @pgColumn(name: "user_id")
}

type UserVisit @pgTable(name: "user_visits") {
  id: Int! @unique
  mobile: Boolean @default(value: false)
  postsRead: Int @default(value: 0) @pgColumn(name: "posts_read")
  timeRead: Int! @default(value: 0) @pgColumn(name: "time_read")
  userId: Int! @pgColumn(name: "user_id")
  visitedAt: DateTime! @pgColumn(name: "visited_at")
}

type UserWarning @pgTable(name: "user_warnings") {
  createdAt: DateTime @pgColumn(name: "created_at")
  createdById: Int! @pgColumn(name: "created_by_id")
  id: Int! @unique
  topicId: Int! @pgColumn(name: "topic_id") @unique
  updatedAt: DateTime @pgColumn(name: "updated_at")
  userId: Int! @pgColumn(name: "user_id")
}

type WatchedWord @pgTable(name: "watched_words") {
  action: Int!
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  updatedAt: DateTime @pgColumn(name: "updated_at")
  word: String!
}

type WebCrawlerRequest @pgTable(name: "web_crawler_requests") {
  count: Int! @default(value: 0)
  date: DateTime!
  id: Int! @unique
  userAgent: String! @pgColumn(name: "user_agent")
}

type WebHook @pgTable(name: "web_hooks") {
  active: Boolean! @default(value: false)
  contentType: Int! @default(value: 1) @pgColumn(name: "content_type")
  createdAt: DateTime @pgColumn(name: "created_at")
  id: Int! @unique
  lastDeliveryStatus: Int! @default(value: 1) @pgColumn(name: "last_delivery_status")
  payloadUrl: String! @pgColumn(name: "payload_url")
  secret: String @default(value: "")
  status: Int! @default(value: 1)
  updatedAt: DateTime @pgColumn(name: "updated_at")
  verifyCertificate: Boolean! @default(value: true) @pgColumn(name: "verify_certificate")
  wildcardWebHook: Boolean! @default(value: false) @pgColumn(name: "wildcard_web_hook")
}

type WebHookEvent @pgTable(name: "web_hook_events") {
  createdAt: DateTime @pgColumn(name: "created_at")
  duration: Int @default(value: 0)
  headers: String
  id: Int! @unique
  payload: String
  responseBody: String @pgColumn(name: "response_body")
  responseHeaders: String @pgColumn(name: "response_headers")
  status: Int @default(value: 0)
  updatedAt: DateTime @pgColumn(name: "updated_at")
  webHookId: Int! @pgColumn(name: "web_hook_id")
}

type WebHookEventType @pgTable(name: "web_hook_event_types") {
  id: Int! @unique
  name: String!
}

type WebHookEventTypesHook @pgTable(name: "web_hook_event_types_hooks") {
  webHookEventTypeId: Int! @pgColumn(name: "web_hook_event_type_id")
  webHookId: Int! @pgColumn(name: "web_hook_id")
}
