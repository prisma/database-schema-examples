model ApiKey {
  id: Int             @id @pg.serial("api_keys_id_seq")
  allowedIps: Inet?   
  createdAt: DateTime 
  createdById: Int?   
  hidden: Boolean     @default(false)
  key: String         
  updatedAt: DateTime 
  userId: Int?        @unique
}

model ApplicationRequest {
  id: Int        @id @pg.serial("application_requests_id_seq")
  count: Int     @default(0)
  date: DateTime 
  reqType: Int   
}

model ArInternalMetadatum {
  key: String         @id
  createdAt: DateTime 
  updatedAt: DateTime 
  value: String?      
}

model Badge {
  id: Int                  @id @pg.serial("badges_id_seq" initial_value: 100)
  allowTitle: Boolean      @default(false)
  autoRevoke: Boolean      @default(true)
  badgeGroupingId: Int     @default(5)
  badgeTypeId: Int         
  createdAt: DateTime      
  description: String?     
  enabled: Boolean         @default(true)
  grantCount: Int          @default(0)
  icon: String?            @default("fa-certificate")
  image: String?           
  listable: Boolean?       @default(true)
  longDescription: String? 
  multipleGrant: Boolean   @default(false)
  name: String             @unique
  query: String?           
  showPosts: Boolean       @default(false)
  system: Boolean          @default(false)
  targetPosts: Boolean?    @default(false)
  trigger: Int?            
  updatedAt: DateTime      
}

model BadgeGrouping {
  id: Int              @id @pg.serial("badge_groupings_id_seq")
  createdAt: DateTime  
  description: String? 
  name: String         
  position: Int        
  updatedAt: DateTime  
}

model BadgeType {
  id: Int             @id @pg.serial("badge_types_id_seq")
  createdAt: DateTime 
  name: String        @unique
  updatedAt: DateTime 
}

model CategoryWebHook {
  categoryId: Int 
  webHookId: Int  
}

model Category {
  id: Int                               @id @pg.serial("categories_id_seq")
  allowBadges: Boolean                  @default(true)
  allTopicsWiki: Boolean                @default(false)
  autoCloseBasedOnLastPost: Boolean?    @default(false)
  autoCloseHours: Float?                
  color: String                         @default("AB9364")
  containsMessages: Boolean?            
  createdAt: DateTime                   
  defaultTopPeriod: String?             @default("all")
  defaultView: String?                  
  description: String?                  
  emailIn: String?                      @unique
  emailInAllowStrangers: Boolean?       @default(false)
  latestPostId: Int?                    
  latestTopicId: Int?                   
  mailinglistMirror: Boolean            @default(false)
  minimumRequiredTags: Int?             @default(0)
  name: String                          @unique
  nameLower: String                     
  navigateToFirstPostAfterRead: Boolean @default(false)
  numFeaturedTopics: Int?               @default(3)
  parentCategoryId: Int?                
  position: Int?                        
  postCount: Int                        @default(0)
  postsDay: Int?                        @default(0)
  postsMonth: Int?                      @default(0)
  postsWeek: Int?                       @default(0)
  postsYear: Int?                       @default(0)
  readRestricted: Boolean               @default(false)
  showSubcategoryList: Boolean?         @default(false)
  slug: String                          
  sortAscending: Boolean?               
  sortOrder: String?                    
  subcategoryListStyle: String?         @default("rows_with_featured_topics")
  suppressFromLatest: Boolean?          @default(false)
  textColor: String                     @default("FFFFFF")
  topicCount: Int                       @default(0)
  topicFeaturedLinkAllowed: Boolean?    @default(true)
  topicId: Int?                         
  topicsDay: Int?                       @default(0)
  topicsMonth: Int?                     @default(0)
  topicsWeek: Int?                      @default(0)
  topicsYear: Int?                      @default(0)
  topicTemplate: String?                
  updatedAt: DateTime                   
  uploadedBackgroundId: Int?            
  uploadedLogoId: Int?                  
  userId: Int                           
}

model CategoryCustomField {
  id: Int             @id @pg.serial("category_custom_fields_id_seq")
  categoryId: Int     
  createdAt: DateTime 
  name: String        
  updatedAt: DateTime 
  value: String?      
}

model CategoryFeaturedTopic {
  id: Int             @id @pg.serial("category_featured_topics_id_seq")
  categoryId: Int     
  createdAt: DateTime 
  rank: Int           @default(0)
  topicId: Int        
  updatedAt: DateTime 
}

model CategoryGroup {
  id: Int              @id @pg.serial("category_groups_id_seq")
  categoryId: Int      
  createdAt: DateTime  
  groupId: Int         
  permissionType: Int? @default(1)
  updatedAt: DateTime  
}

model CategorySearchDatum {
  categoryId: Int       @id
  locale: String?       
  rawData: String?      
  searchData: Tsvector? 
  version: Int?         @default(0)
}

model CategoryTag {
  id: Int              @id @pg.serial("category_tags_id_seq")
  categoryId: Int      
  createdAt: DateTime? 
  tagId: Int           
  updatedAt: DateTime? 
}

model CategoryTagGroup {
  id: Int              @id @pg.serial("category_tag_groups_id_seq")
  categoryId: Int      
  createdAt: DateTime? 
  tagGroupId: Int      
  updatedAt: DateTime? 
}

model CategoryTagStat {
  id: Int         @id @pg.serial("category_tag_stats_id_seq")
  categoryId: Int 
  tagId: Int      
  topicCount: Int @default(0)
}

model CategoryUser {
  id: Int                @id @pg.serial("category_users_id_seq")
  categoryId: Int        
  notificationLevel: Int 
  userId: Int            
}

model ChildTheme {
  id: Int              @id @pg.serial("child_themes_id_seq")
  childThemeId: Int?   
  createdAt: DateTime? 
  parentThemeId: Int?  
  updatedAt: DateTime? 
}

model ColorScheme {
  id: Int               @id @pg.serial("color_schemes_id_seq")
  baseSchemeId: String? 
  createdAt: DateTime   
  name: String          
  themeId: Int?         
  updatedAt: DateTime   
  version: Int          @default(1)
  viaWizard: Boolean    @default(false)
}

model ColorSchemeColor {
  id: Int             @id @pg.serial("color_scheme_colors_id_seq")
  colorSchemeId: Int  
  createdAt: DateTime 
  hex: String         
  name: String        
  updatedAt: DateTime 
}

model CustomEmoji {
  id: Int             @id @pg.serial("custom_emojis_id_seq")
  createdAt: DateTime 
  name: String        @unique
  updatedAt: DateTime 
  uploadId: Int       
}

model Developer {
  id: Int     @id @pg.serial("developers_id_seq")
  userId: Int 
}

model DirectoryItem {
  id: Int              @id @pg.serial("directory_items_id_seq")
  createdAt: DateTime? 
  daysVisited: Int     @default(0)
  likesGiven: Int      
  likesReceived: Int   
  periodType: Int      
  postCount: Int       
  postsRead: Int       @default(0)
  topicCount: Int      
  topicsEntered: Int   
  updatedAt: DateTime? 
  userId: Int          
}

model Draft {
  id: Int             @id @pg.serial("drafts_id_seq")
  createdAt: DateTime 
  data: String        
  draftKey: String    
  revisions: Int      @default(1)
  sequence: Int       @default(0)
  updatedAt: DateTime 
  userId: Int         
}

model DraftSequence {
  id: Int          @id @pg.serial("draft_sequences_id_seq")
  draftKey: String 
  sequence: Int    
  userId: Int      
}

model EmailChangeRequest {
  id: Int               @id @pg.serial("email_change_requests_id_seq")
  changeState: Int      
  createdAt: DateTime   
  newEmail: String      
  newEmailTokenId: Int? 
  oldEmail: String      
  oldEmailTokenId: Int? 
  updatedAt: DateTime   
  userId: Int           
}

model EmailLog {
  id: Int             @id @pg.serial("email_logs_id_seq")
  bounced: Boolean    @default(false)
  bounceKey: Uuid?    
  createdAt: DateTime 
  emailType: String   
  messageId: String?  
  postId: Int?        
  toAddress: String   
  updatedAt: DateTime 
  userId: Int?        
}

model EmailToken {
  id: Int             @id @pg.serial("email_tokens_id_seq")
  confirmed: Boolean  @default(false)
  createdAt: DateTime 
  email: String       
  expired: Boolean    @default(false)
  token: String       @unique
  updatedAt: DateTime 
  userId: Int         
}

model EmbeddableHost {
  id: Int                @id @pg.serial("embeddable_hosts_id_seq")
  categoryId: Int        
  className: String?     
  createdAt: DateTime?   
  host: String           
  pathWhitelist: String? 
  updatedAt: DateTime?   
}

model FacebookUserInfo {
  id: Int             @id @pg.serial("facebook_user_infos_id_seq")
  aboutMe: String?    
  avatarUrl: String?  
  createdAt: DateTime 
  email: String?      
  facebookUserId: Int @unique
  firstName: String?  
  gender: String?     
  lastName: String?   
  link: String?       
  location: String?   
  name: String?       
  updatedAt: DateTime 
  userId: Int         @unique
  username: String?   
  website: String?    
}

model GithubUserInfo {
  id: Int             @id @pg.serial("github_user_infos_id_seq")
  createdAt: DateTime 
  githubUserId: Int   @unique
  screenName: String  
  updatedAt: DateTime 
  userId: Int         @unique
}

model GivenDailyLike {
  givenDate: DateTime   
  likesGiven: Int       
  limitReached: Boolean @default(false)
  userId: Int           
}

model GoogleUserInfo {
  id: Int              @id @pg.serial("google_user_infos_id_seq")
  createdAt: DateTime  
  email: String?       
  firstName: String?   
  gender: String?      
  googleUserId: String @unique
  lastName: String?    
  link: String?        
  name: String?        
  picture: String?     
  profileLink: String? 
  updatedAt: DateTime  
  userId: Int          @unique
}

model Group {
  id: Int                                  @id @pg.serial("groups_id_seq" initial_value: 100)
  allowMembershipRequests: Boolean         @default(false)
  automatic: Boolean                       @default(false)
  automaticMembershipEmailDomains: String? 
  automaticMembershipRetroactive: Boolean? @default(false)
  bioCooked: String?                       
  bioRaw: String?                          
  createdAt: DateTime                      
  defaultNotificationLevel: Int            @default(3)
  flairBgColor: String?                    
  flairColor: String?                      
  flairUrl: String?                        
  fullName: String?                        
  grantTrustLevel: Int?                    
  hasMessages: Boolean                     @default(false)
  incomingEmail: String?                   @unique
  membershipRequestTemplate: String?       
  mentionableLevel: Int?                   @default(0)
  messageableLevel: Int?                   @default(0)
  name: String                             @unique
  primaryGroup: Boolean                    @default(false)
  publicAdmission: Boolean                 @default(false)
  publicExit: Boolean                      @default(false)
  title: String?                           
  updatedAt: DateTime                      
  userCount: Int                           @default(0)
  visibilityLevel: Int                     @default(0)
}

model GroupArchivedMessage {
  id: Int              @id @pg.serial("group_archived_messages_id_seq")
  createdAt: DateTime? 
  groupId: Int         
  topicId: Int         
  updatedAt: DateTime? 
}

model GroupCustomField {
  id: Int             @id @pg.serial("group_custom_fields_id_seq")
  createdAt: DateTime 
  groupId: Int        
  name: String        
  updatedAt: DateTime 
  value: String?      
}

model GroupHistory {
  id: Int             @id @pg.serial("group_histories_id_seq")
  actingUserId: Int   
  action: Int         
  createdAt: DateTime 
  groupId: Int        
  newValue: String?   
  prevValue: String?  
  subject: String?    
  targetUserId: Int?  
  updatedAt: DateTime 
}

model GroupMention {
  id: Int              @id @pg.serial("group_mentions_id_seq")
  createdAt: DateTime? 
  groupId: Int?        
  postId: Int?         
  updatedAt: DateTime? 
}

model GroupUser {
  id: Int                @id @pg.serial("group_users_id_seq")
  createdAt: DateTime    
  groupId: Int           
  notificationLevel: Int @default(2)
  owner: Boolean         @default(false)
  updatedAt: DateTime    
  userId: Int            
}

model GroupWebHook {
  groupId: Int   
  webHookId: Int 
}

model IncomingDomain {
  id: Int        @id @pg.serial("incoming_domains_id_seq")
  https: Boolean @default(false)
  name: String   
  port: Int      
}

model IncomingEmail {
  id: Int                   @id @pg.serial("incoming_emails_id_seq")
  ccAddresses: String?      
  createdAt: DateTime       
  error: String?            
  fromAddress: String?      
  isAutoGenerated: Boolean? @default(false)
  isBounce: Boolean         @default(false)
  messageId: String?        
  postId: Int?              
  raw: String?              
  rejectionMessage: String? 
  subject: String?          
  toAddresses: String?      
  topicId: Int?             
  updatedAt: DateTime       
  userId: Int?              
}

model IncomingLink {
  id: Int                 @id @pg.serial("incoming_links_id_seq")
  createdAt: DateTime     
  currentUserId: Int?     
  incomingRefererId: Int? 
  ipAddress: Inet?        
  postId: Int             
  userId: Int?            
}

model IncomingReferer {
  id: Int               @id @pg.serial("incoming_referers_id_seq")
  incomingDomainId: Int 
  path: String          
}

model InstagramUserInfo {
  id: Int               @id @pg.serial("instagram_user_infos_id_seq")
  createdAt: DateTime   
  instagramUserId: Int? 
  screenName: String?   
  updatedAt: DateTime   
  userId: Int?          
}

model Invite {
  id: Int                  @id @pg.serial("invites_id_seq")
  createdAt: DateTime      
  customMessage: String?   
  deletedAt: DateTime?     
  deletedById: Int?        
  email: String?           
  invalidatedAt: DateTime? 
  invitedById: Int         
  inviteKey: String        @unique
  moderator: Boolean       @default(false)
  redeemedAt: DateTime?    
  updatedAt: DateTime      
  userId: Int?             
}

model InvitedGroup {
  id: Int             @id @pg.serial("invited_groups_id_seq")
  createdAt: DateTime 
  groupId: Int?       
  inviteId: Int?      
  updatedAt: DateTime 
}

model JavascriptCach {
  id: Int             @id @pg.serial("javascript_caches_id_seq")
  content: String     
  createdAt: DateTime 
  digest: String?     
  themeFieldId: Int   
  updatedAt: DateTime 
}

model MessageBus {
  id: Int             @id @pg.serial("message_bus_id_seq")
  context: String?    
  createdAt: DateTime 
  data: String?       
  name: String?       
}

model MutedUser {
  id: Int              @id @pg.serial("muted_users_id_seq")
  createdAt: DateTime? 
  mutedUserId: Int     
  updatedAt: DateTime? 
  userId: Int          
}

model Notification {
  id: Int               @id @pg.serial("notifications_id_seq")
  createdAt: DateTime   
  data: String          
  notificationType: Int 
  postActionId: Int?    
  postNumber: Int?      
  read: Boolean         @default(false)
  topicId: Int?         
  updatedAt: DateTime   
  userId: Int           
}

model Oauth2UserInfo {
  id: Int             @id @pg.serial("oauth2_user_infos_id_seq")
  createdAt: DateTime 
  email: String?      
  name: String?       
  provider: String    
  uid: String         
  updatedAt: DateTime 
  userId: Int         
}

model OnceoffLog {
  id: Int             @id @pg.serial("onceoff_logs_id_seq")
  createdAt: DateTime 
  jobName: String?    
  updatedAt: DateTime 
}

model OptimizedImage {
  id: Int           @id @pg.serial("optimized_images_id_seq")
  extension: String 
  filesize: Int?    
  height: Int       
  sha1: String      
  uploadId: Int     
  url: String       
  width: Int        
}

model Permalink {
  id: Int              @id @pg.serial("permalinks_id_seq")
  categoryId: Int?     
  createdAt: DateTime? 
  externalUrl: String? 
  postId: Int?         
  topicId: Int?        
  updatedAt: DateTime? 
  url: String          @unique
}

model PluginStoreRow {
  id: Int            @id @pg.serial("plugin_store_rows_id_seq")
  key: String        
  pluginName: String 
  typeName: String   
  value: String?     
}

model Post {
  id: Int                    @id @pg.serial("posts_id_seq")
  actionCode: String?        
  avgTime: Int?              
  bakedAt: DateTime?         
  bakedVersion: Int?         
  bookmarkCount: Int         @default(0)
  cooked: String             
  cookMethod: Int            @default(1)
  createdAt: DateTime        
  deletedAt: DateTime?       
  deletedById: Int?          
  editReason: String?        
  hidden: Boolean            @default(false)
  hiddenAt: DateTime?        
  hiddenReasonId: Int?       
  illegalCount: Int          @default(0)
  imageUrl: String?          
  inappropriateCount: Int    @default(0)
  incomingLinkCount: Int     @default(0)
  lastEditorId: Int?         
  lastVersionAt: DateTime    
  likeCount: Int             @default(0)
  likeScore: Int             @default(0)
  lockedById: Int?           
  notifyModeratorsCount: Int @default(0)
  notifyUserCount: Int       @default(0)
  offTopicCount: Int         @default(0)
  percentRank: Float?        @default(1)
  postNumber: Int            
  postType: Int              @default(1)
  publicVersion: Int         @default(1)
  quoteCount: Int            @default(0)
  raw: String                
  rawEmail: String?          
  reads: Int                 @default(0)
  replyCount: Int            @default(0)
  replyQuoted: Boolean       @default(false)
  replyToPostNumber: Int?    
  replyToUserId: Int?        
  score: Float?              
  selfEdits: Int             @default(0)
  sortOrder: Int?            
  spamCount: Int             @default(0)
  topicId: Int               
  updatedAt: DateTime        
  userDeleted: Boolean       @default(false)
  userId: Int?               
  version: Int               @default(1)
  viaEmail: Boolean          @default(false)
  wiki: Boolean              @default(false)
  wordCount: Int?            
}

model PostAction {
  id: Int                  @id @pg.serial("post_actions_id_seq")
  agreedAt: DateTime?      
  agreedById: Int?         
  createdAt: DateTime      
  deferredAt: DateTime?    
  deferredById: Int?       
  deletedAt: DateTime?     
  deletedById: Int?        
  disagreedAt: DateTime?   
  disagreedById: Int?      
  postActionTypeId: Int    
  postId: Int              
  relatedPostId: Int?      
  staffTookAction: Boolean @default(false)
  targetsTopic: Boolean    @default(false)
  updatedAt: DateTime      
  userId: Int              
}

model PostActionType {
  id: Int             @id @pg.serial("post_action_types_id_seq")
  createdAt: DateTime 
  icon: String?       
  isFlag: Boolean     @default(false)
  nameKey: String     
  position: Int       @default(0)
  updatedAt: DateTime 
}

model PostCustomField {
  id: Int             @id @pg.serial("post_custom_fields_id_seq")
  createdAt: DateTime 
  name: String        
  postId: Int         
  updatedAt: DateTime 
  value: String?      
}

model PostDetail {
  id: Int             @id @pg.serial("post_details_id_seq")
  createdAt: DateTime 
  extra: String?      
  key: String?        
  postId: Int?        
  updatedAt: DateTime 
  value: String?      
}

model PostReply {
  createdAt: DateTime 
  postId: Int?        
  replyId: Int?       
  updatedAt: DateTime 
}

model PostReplyKey {
  id: Int             @id @pg.serial("post_reply_keys_id_seq")
  createdAt: DateTime 
  postId: Int         
  replyKey: Uuid      @unique
  updatedAt: DateTime 
  userId: Int         
}

model PostRevision {
  id: Int                @id @pg.serial("post_revisions_id_seq")
  createdAt: DateTime    
  hidden: Boolean        @default(false)
  modifications: String? 
  number: Int?           
  postId: Int?           
  updatedAt: DateTime    
  userId: Int?           
}

model PostSearchDatum {
  postId: Int           @id
  locale: String?       
  rawData: String?      
  searchData: Tsvector? 
  version: Int?         @default(0)
}

model PostStat {
  id: Int                         @id @pg.serial("post_stats_id_seq")
  composerOpenDurationMsecs: Int? 
  createdAt: DateTime?            
  draftsSaved: Int?               
  postId: Int?                    
  typingDurationMsecs: Int?       
  updatedAt: DateTime?            
}

model PostTiming {
  msecs: Int      
  postNumber: Int 
  topicId: Int    
  userId: Int     
}

model PostUpload {
  id: Int       @id @pg.serial("post_uploads_id_seq")
  postId: Int   
  uploadId: Int 
}

model PushSubscription {
  id: Int             @id @pg.serial("push_subscriptions_id_seq")
  createdAt: DateTime 
  data: String        
  updatedAt: DateTime 
  userId: Int         
}

model QueuedPost {
  id: Int               @id @pg.serial("queued_posts_id_seq")
  approvedAt: DateTime? 
  approvedById: Int?    
  createdAt: DateTime?  
  postOptions: Json     
  queue: String         
  raw: String           
  rejectedAt: DateTime? 
  rejectedById: Int?    
  state: Int            
  topicId: Int?         
  updatedAt: DateTime?  
  userId: Int           
}

model QuotedPost {
  id: Int             @id @pg.serial("quoted_posts_id_seq")
  createdAt: DateTime 
  postId: Int         
  quotedPostId: Int   
  updatedAt: DateTime 
}

model RemoteTheme {
  id: Int                    @id @pg.serial("remote_themes_id_seq")
  aboutUrl: String?          
  branch: String?            
  commitsBehind: Int?        
  createdAt: DateTime?       
  lastErrorText: String?     
  licenseUrl: String?        
  localVersion: String?      
  privateKey: String?        
  remoteUpdatedAt: DateTime? 
  remoteUrl: String          
  remoteVersion: String?     
  updatedAt: DateTime?       
}

model SchedulerStat {
  id: Int               @id @pg.serial("scheduler_stats_id_seq")
  durationMs: Int?      
  error: String?        
  hostname: String      
  liveSlotsFinish: Int? 
  liveSlotsStart: Int?  
  name: String          
  pid: Int              
  startedAt: DateTime   
  success: Boolean?     
}

model SchemaMigration {
  version: String @id @unique
}

model SchemaMigrationDetail {
  id: Int               @id @pg.serial("schema_migration_details_id_seq")
  createdAt: DateTime   
  direction: String?    
  duration: Int?        
  gitVersion: String?   
  hostname: String?     
  name: String?         
  railsVersion: String? 
  version: String       
}

model ScreenedEmail {
  id: Int                @id @pg.serial("screened_emails_id_seq")
  actionType: Int        
  createdAt: DateTime    
  email: String          @unique
  ipAddress: Inet?       
  lastMatchAt: DateTime? 
  matchCount: Int        @default(0)
  updatedAt: DateTime    
}

model ScreenedIpAddress {
  id: Int                @id @pg.serial("screened_ip_addresses_id_seq")
  actionType: Int        
  createdAt: DateTime    
  ipAddress: Inet        @unique
  lastMatchAt: DateTime? 
  matchCount: Int        @default(0)
  updatedAt: DateTime    
}

model ScreenedUrl {
  id: Int                @id @pg.serial("screened_urls_id_seq")
  actionType: Int        
  createdAt: DateTime    
  domain: String         
  ipAddress: Inet?       
  lastMatchAt: DateTime? 
  matchCount: Int        @default(0)
  updatedAt: DateTime    
  url: String            @unique
}

model SearchLog {
  id: Int                @id @pg.serial("search_logs_id_seq")
  createdAt: DateTime    
  ipAddress: Inet?       
  searchResultId: Int?   
  searchResultType: Int? 
  searchType: Int        
  term: String           
  userId: Int?           
}

model SharedDraft {
  id: Int             @id @pg.serial("shared_drafts_id_seq")
  categoryId: Int     
  createdAt: DateTime 
  topicId: Int        @unique
  updatedAt: DateTime 
}

model SingleSignOnRecord {
  id: Int                               @id @pg.serial("single_sign_on_records_id_seq")
  createdAt: DateTime                   
  externalAvatarUrl: String?            
  externalCardBackgroundUrl: String?    
  externalEmail: String?                
  externalId: String                    @unique
  externalName: String?                 
  externalProfileBackgroundUrl: String? 
  externalUsername: String?             
  lastPayload: String                   
  updatedAt: DateTime                   
  userId: Int                           
}

model SiteSetting {
  id: Int             @id @pg.serial("site_settings_id_seq")
  createdAt: DateTime 
  dataType: Int       
  name: String        
  updatedAt: DateTime 
  value: String?      
}

model SkippedEmailLog {
  id: Int               @id @pg.serial("skipped_email_logs_id_seq")
  createdAt: DateTime   
  customReason: String? 
  emailType: String     
  postId: Int?          
  reasonType: Int       
  toAddress: String     
  updatedAt: DateTime   
  userId: Int?          
}

model StylesheetCache {
  id: Int              @id @pg.serial("stylesheet_cache_id_seq")
  content: String      
  createdAt: DateTime? 
  digest: String       
  sourceMap: String?   
  target: String       
  themeId: Int         @default(-1)
  updatedAt: DateTime? 
}

model Tag {
  id: Int              @id @pg.serial("tags_id_seq")
  createdAt: DateTime? 
  name: String         @unique
  pmTopicCount: Int    @default(0)
  topicCount: Int      @default(0)
  updatedAt: DateTime? 
}

model TagGroup {
  id: Int               @id @pg.serial("tag_groups_id_seq")
  createdAt: DateTime?  
  name: String          
  onePerTopic: Boolean? @default(false)
  parentTagId: Int?     
  updatedAt: DateTime?  
}

model TagGroupMembership {
  id: Int              @id @pg.serial("tag_group_memberships_id_seq")
  createdAt: DateTime? 
  tagGroupId: Int      
  tagId: Int           
  updatedAt: DateTime? 
}

model TagGroupPermission {
  id: Int             @id @pg.serial("tag_group_permissions_id_seq")
  createdAt: DateTime 
  groupId: Int        
  permissionType: Int @default(1)
  tagGroupId: Int     
  updatedAt: DateTime 
}

model TagSearchDatum {
  tagId: Int            @id @pg.serial("tag_search_data_tag_id_seq")
  locale: String?       
  rawData: String?      
  searchData: Tsvector? 
  version: Int?         @default(0)
}

model TagUser {
  id: Int                @id @pg.serial("tag_users_id_seq")
  createdAt: DateTime?   
  notificationLevel: Int 
  tagId: Int             
  updatedAt: DateTime?   
  userId: Int            
}

model Theme {
  id: Int                 @id @pg.serial("themes_id_seq")
  colorSchemeId: Int?     
  compilerVersion: Int    @default(0)
  component: Boolean      @default(false)
  createdAt: DateTime     
  hidden: Boolean         @default(false)
  name: String            
  remoteThemeId: Int?     @unique
  updatedAt: DateTime     
  userId: Int             
  userSelectable: Boolean @default(false)
}

model ThemeField {
  id: Int              @id @pg.serial("theme_fields_id_seq")
  compilerVersion: Int @default(0)
  createdAt: DateTime? 
  error: String?       
  name: String         
  targetId: Int        
  themeId: Int         
  typeId: Int          @default(0)
  updatedAt: DateTime? 
  uploadId: Int?       
  value: String        
  valueBaked: String?  
}

model ThemeSetting {
  id: Int             @id @pg.serial("theme_settings_id_seq")
  createdAt: DateTime 
  dataType: Int       
  name: String        
  themeId: Int        
  updatedAt: DateTime 
  value: String?      
}

model TopTopic {
  id: Int                    @id @pg.serial("top_topics_id_seq")
  allScore: Float?           @default(0)
  dailyLikesCount: Int       @default(0)
  dailyOpLikesCount: Int     @default(0)
  dailyPostsCount: Int       @default(0)
  dailyScore: Float?         @default(0)
  dailyViewsCount: Int       @default(0)
  monthlyLikesCount: Int     @default(0)
  monthlyOpLikesCount: Int   @default(0)
  monthlyPostsCount: Int     @default(0)
  monthlyScore: Float?       @default(0)
  monthlyViewsCount: Int     @default(0)
  quarterlyLikesCount: Int   @default(0)
  quarterlyOpLikesCount: Int @default(0)
  quarterlyPostsCount: Int   @default(0)
  quarterlyScore: Float?     @default(0)
  quarterlyViewsCount: Int   @default(0)
  topicId: Int?              @unique
  weeklyLikesCount: Int      @default(0)
  weeklyOpLikesCount: Int    @default(0)
  weeklyPostsCount: Int      @default(0)
  weeklyScore: Float?        @default(0)
  weeklyViewsCount: Int      @default(0)
  yearlyLikesCount: Int      @default(0)
  yearlyOpLikesCount: Int    @default(0)
  yearlyPostsCount: Int      @default(0)
  yearlyScore: Float?        @default(0)
  yearlyViewsCount: Int      @default(0)
}

model Topic {
  id: Int                     @id @pg.serial("topics_id_seq")
  archetype: String           @default("regular")
  archived: Boolean           @default(false)
  avgTime: Int?               
  bumpedAt: DateTime          
  categoryId: Int?            
  closed: Boolean             @default(false)
  createdAt: DateTime         
  deletedAt: DateTime?        
  deletedById: Int?           
  excerpt: String?            
  fancyTitle: String?         
  featuredLink: String?       
  featuredUser1Id: Int?       
  featuredUser2Id: Int?       
  featuredUser3Id: Int?       
  featuredUser4Id: Int?       
  hasSummary: Boolean         @default(false)
  highestPostNumber: Int      @default(0)
  highestStaffPostNumber: Int @default(0)
  imageUrl: String?           
  incomingLinkCount: Int      @default(0)
  lastPostedAt: DateTime?     
  lastPostUserId: Int         
  likeCount: Int              @default(0)
  moderatorPostsCount: Int    @default(0)
  notifyModeratorsCount: Int  @default(0)
  participantCount: Int?      @default(1)
  percentRank: Float          @default(1)
  pinnedAt: DateTime?         
  pinnedGlobally: Boolean     @default(false)
  pinnedUntil: DateTime?      
  postsCount: Int             @default(0)
  replyCount: Int             @default(0)
  score: Float?               
  slug: String?               
  spamCount: Int              @default(0)
  subtype: String?            
  title: String               
  updatedAt: DateTime         
  userId: Int?                
  views: Int                  @default(0)
  visible: Boolean            @default(true)
  wordCount: Int?             
}

model TopicAllowedGroup {
  id: Int      @id @pg.serial("topic_allowed_groups_id_seq")
  groupId: Int 
  topicId: Int 
}

model TopicAllowedUser {
  id: Int             @id @pg.serial("topic_allowed_users_id_seq")
  createdAt: DateTime 
  topicId: Int        
  updatedAt: DateTime 
  userId: Int         
}

model TopicCustomField {
  id: Int             @id @pg.serial("topic_custom_fields_id_seq")
  createdAt: DateTime 
  name: String        
  topicId: Int        
  updatedAt: DateTime 
  value: String?      
}

model TopicEmbed {
  id: Int              @id @pg.serial("topic_embeds_id_seq")
  contentSha1: String? 
  createdAt: DateTime  
  deletedAt: DateTime? 
  deletedById: Int?    
  embedUrl: String     @unique
  postId: Int          
  topicId: Int         
  updatedAt: DateTime  
}

model TopicInvite {
  id: Int             @id @pg.serial("topic_invites_id_seq")
  createdAt: DateTime 
  inviteId: Int       
  topicId: Int        
  updatedAt: DateTime 
}

model TopicLink {
  id: Int              @id @pg.serial("topic_links_id_seq")
  clicks: Int          @default(0)
  crawledAt: DateTime? 
  createdAt: DateTime  
  domain: String       
  extension: String?   
  internal: Boolean    @default(false)
  linkPostId: Int?     
  linkTopicId: Int?    
  postId: Int?         
  quote: Boolean       @default(false)
  reflection: Boolean? @default(false)
  title: String?       
  topicId: Int         
  updatedAt: DateTime  
  url: String          
  userId: Int          
}

model TopicLinkClick {
  id: Int             @id @pg.serial("topic_link_clicks_id_seq")
  createdAt: DateTime 
  ipAddress: Inet?    
  topicLinkId: Int    
  updatedAt: DateTime 
  userId: Int?        
}

model TopicSearchDatum {
  topicId: Int          @id
  locale: String        
  rawData: String?      
  searchData: Tsvector? 
  version: Int?         @default(0)
}

model TopicTag {
  id: Int              @id @pg.serial("topic_tags_id_seq")
  createdAt: DateTime? 
  tagId: Int           
  topicId: Int         
  updatedAt: DateTime? 
}

model TopicTimer {
  id: Int                  @id @pg.serial("topic_timers_id_seq")
  basedOnLastPost: Boolean @default(false)
  categoryId: Int?         
  createdAt: DateTime?     
  deletedAt: DateTime?     
  deletedById: Int?        
  executeAt: DateTime      
  publicType: Boolean?     @default(true)
  statusType: Int          
  topicId: Int             @unique
  updatedAt: DateTime?     
  userId: Int              
}

model TopicUser {
  id: Int                           @id @pg.serial("topic_users_id_seq")
  bookmarked: Boolean?              @default(false)
  clearedPinnedAt: DateTime?        
  firstVisitedAt: DateTime?         
  highestSeenPostNumber: Int?       
  lastEmailedPostNumber: Int?       
  lastReadPostNumber: Int?          
  lastVisitedAt: DateTime?          
  liked: Boolean?                   @default(false)
  notificationLevel: Int            @default(1)
  notificationsChangedAt: DateTime? 
  notificationsReasonId: Int?       
  posted: Boolean                   @default(false)
  topicId: Int                      
  totalMsecsViewed: Int             @default(0)
  userId: Int                       
}

model TopicView {
  ipAddress: Inet?   
  topicId: Int       
  userId: Int?       
  viewedAt: DateTime 
}

model TranslationOverride {
  id: Int                @id @pg.serial("translation_overrides_id_seq")
  compiledJs: String?    
  createdAt: DateTime    
  locale: String         
  translationKey: String 
  updatedAt: DateTime    
  value: String          
}

model TwitterUserInfo {
  id: Int             @id @pg.serial("twitter_user_infos_id_seq")
  createdAt: DateTime 
  email: String?      
  screenName: String  
  twitterUserId: Int  @unique
  updatedAt: DateTime 
  userId: Int         @unique
}

model UnsubscribeKey {
  key: String                 @id
  createdAt: DateTime?        
  postId: Int?                
  topicId: Int?               
  unsubscribeKeyType: String? 
  updatedAt: DateTime?        
  userId: Int                 
}

model Upload {
  id: Int                  @id @pg.serial("uploads_id_seq")
  createdAt: DateTime      
  extension: String?       
  filesize: Int            
  height: Int?             
  origin: String?          
  originalFilename: String 
  retainHours: Int?        
  sha1: String?            @unique
  thumbnailHeight: Int?    
  thumbnailWidth: Int?     
  updatedAt: DateTime      
  url: String              
  userId: Int              
  width: Int?              
}

model User {
  id: Int                      @id @pg.serial("users_id_seq")
  active: Boolean              @default(false)
  admin: Boolean               @default(false)
  approved: Boolean            @default(false)
  approvedAt: DateTime?        
  approvedById: Int?           
  createdAt: DateTime          
  dateOfBirth: DateTime?       
  firstSeenAt: DateTime?       
  flagLevel: Int               @default(0)
  groupLockedTrustLevel: Int?  
  ipAddress: Inet?             
  lastEmailedAt: DateTime?     
  lastPostedAt: DateTime?      
  lastSeenAt: DateTime?        
  locale: String?              
  manualLockedTrustLevel: Int? 
  moderator: Boolean?          @default(false)
  name: String?                
  passwordHash: String?        
  previousVisitAt: DateTime?   
  primaryGroupId: Int?         
  registrationIpAddress: Inet? 
  salt: String?                
  seenNotificationId: Int      @default(0)
  silencedTill: DateTime?      
  staged: Boolean              @default(false)
  suspendedAt: DateTime?       
  suspendedTill: DateTime?     
  title: String?               
  trustLevel: Int              
  updatedAt: DateTime          
  uploadedAvatarId: Int?       
  username: String             @unique
  usernameLower: String        @unique
  views: Int                   @default(0)
}

model UserAction {
  id: Int             @id @pg.serial("user_actions_id_seq")
  actingUserId: Int?  
  actionType: Int     
  createdAt: DateTime 
  queuedPostId: Int?  
  targetPostId: Int?  
  targetTopicId: Int? 
  targetUserId: Int?  
  updatedAt: DateTime 
  userId: Int         
}

model UserApiKey {
  id: Int                 @id @pg.serial("user_api_keys_id_seq")
  applicationName: String 
  clientId: String        @unique
  createdAt: DateTime?    
  key: String             @unique
  lastUsedAt: DateTime    
  pushUrl: String?        
  revokedAt: DateTime?    
  scopes: String          @default([])
  updatedAt: DateTime?    
  userId: Int             
}

model UserArchivedMessage {
  id: Int              @id @pg.serial("user_archived_messages_id_seq")
  createdAt: DateTime? 
  topicId: Int         
  updatedAt: DateTime? 
  userId: Int          
}

model UserAuthToken {
  id: Int                @id @pg.serial("user_auth_tokens_id_seq")
  authToken: String      @unique
  authTokenSeen: Boolean @default(false)
  clientIp: Inet?        
  createdAt: DateTime?   
  prevAuthToken: String  @unique
  rotatedAt: DateTime    
  seenAt: DateTime?      
  updatedAt: DateTime?   
  userAgent: String?     
  userId: Int            
}

model UserAuthTokenLog {
  id: Int               @id @pg.serial("user_auth_token_logs_id_seq")
  action: String        
  authToken: String?    
  clientIp: Inet?       
  createdAt: DateTime?  
  path: String?         
  userAgent: String?    
  userAuthTokenId: Int? 
  userId: Int?          
}

model UserAvatar {
  id: Int                                @id @pg.serial("user_avatars_id_seq")
  createdAt: DateTime                    
  customUploadId: Int?                   
  gravatarUploadId: Int?                 
  lastGravatarDownloadAttempt: DateTime? 
  updatedAt: DateTime                    
  userId: Int                            
}

model UserBadge {
  id: Int              @id @pg.serial("user_badges_id_seq")
  badgeId: Int         
  grantedAt: DateTime  
  grantedById: Int     
  notificationId: Int? 
  postId: Int?         
  seq: Int             @default(0)
  userId: Int          
}

model UserCustomField {
  id: Int             @id @pg.serial("user_custom_fields_id_seq")
  createdAt: DateTime 
  name: String        
  updatedAt: DateTime 
  userId: Int         
  value: String?      
}

model UserEmail {
  id: Int              @id @pg.serial("user_emails_id_seq")
  createdAt: DateTime? 
  email: String        
  primary: Boolean     @default(false)
  updatedAt: DateTime? 
  userId: Int          
}

model UserExport {
  id: Int              @id @pg.serial("user_exports_id_seq")
  createdAt: DateTime? 
  fileName: String     
  updatedAt: DateTime? 
  uploadId: Int?       
  userId: Int          
}

model UserField {
  id: Int                 @id @pg.serial("user_fields_id_seq")
  createdAt: DateTime?    
  description: String     
  editable: Boolean       @default(false)
  externalName: String?   
  externalType: String?   
  fieldType: String       
  name: String            
  position: Int?          @default(0)
  required: Boolean       @default(true)
  showOnProfile: Boolean  @default(false)
  showOnUserCard: Boolean @default(false)
  updatedAt: DateTime?    
}

model UserFieldOption {
  id: Int              @id @pg.serial("user_field_options_id_seq")
  createdAt: DateTime? 
  updatedAt: DateTime? 
  userFieldId: Int     
  value: String        
}

model UserHistory {
  id: Int                @id @pg.serial("user_histories_id_seq")
  actingUserId: Int?     
  action: Int            
  adminOnly: Boolean?    @default(false)
  categoryId: Int?       
  context: String?       
  createdAt: DateTime    
  customType: String?    
  details: String?       
  email: String?         
  ipAddress: String?     
  newValue: String?      
  postId: Int?           
  previousValue: String? 
  subject: String?       
  targetUserId: Int?     
  topicId: Int?          
  updatedAt: DateTime    
}

model UserOpenId {
  id: Int             @id @pg.serial("user_open_ids_id_seq")
  active: Boolean     
  createdAt: DateTime 
  email: String       
  updatedAt: DateTime 
  url: String         
  userId: Int         
}

model UserOption {
  userId: Int                         @id @unique
  allowPrivateMessages: Boolean       @default(true)
  automaticallyUnpinTopics: Boolean   @default(true)
  autoTrackTopicsAfterMsecs: Int?     
  digestAfterMinutes: Int?            
  disableJumpReply: Boolean           @default(false)
  dynamicFavicon: Boolean             @default(false)
  emailAlways: Boolean                @default(false)
  emailDigests: Boolean?              
  emailDirect: Boolean                @default(true)
  emailInReplyTo: Boolean             @default(true)
  emailPreviousReplies: Int           @default(2)
  emailPrivateMessages: Boolean       @default(true)
  enableQuoting: Boolean              @default(true)
  externalLinksInNewTab: Boolean      @default(false)
  hideProfileAndPresence: Boolean     @default(false)
  homepageId: Int?                    
  includeTl0InDigests: Boolean?       @default(false)
  lastRedirectedToTopAt: DateTime?    
  likeNotificationFrequency: Int      @default(1)
  mailingListMode: Boolean            @default(false)
  mailingListModeFrequency: Int       @default(1)
  newTopicDurationMinutes: Int?       
  notificationLevelWhenReplying: Int? 
  themeIds: Int                       
  themeKeySeq: Int                    @default(0)
}

model UserProfile {
  userId: Int                 @id
  badgeGrantedTitle: Boolean? @default(false)
  bioCooked: String?          
  bioCookedVersion: Int?      
  bioRaw: String?             
  cardBackground: String?     
  dismissedBannerKey: Int?    
  location: String?           
  profileBackground: String?  
  views: Int                  @default(0)
  website: String?            
}

model UserProfileView {
  id: Int            @id @pg.serial("user_profile_views_id_seq")
  ipAddress: Inet?   
  userId: Int?       
  userProfileId: Int 
  viewedAt: DateTime 
}

model UserSearchDatum {
  userId: Int           @id
  locale: String?       
  rawData: String?      
  searchData: Tsvector? 
  version: Int?         @default(0)
}

model UserSecondFactor {
  id: Int             @id @pg.serial("user_second_factors_id_seq")
  createdAt: DateTime 
  data: String        
  enabled: Boolean    @default(false)
  lastUsed: DateTime? 
  method: Int         
  updatedAt: DateTime 
  userId: Int         
}

model UserStat {
  userId: Int                      @id
  bounceScore: Float               @default(0)
  daysVisited: Int                 @default(0)
  firstPostCreatedAt: DateTime?    
  likesGiven: Int                  @default(0)
  likesReceived: Int               @default(0)
  newSince: DateTime               
  postCount: Int                   @default(0)
  postsReadCount: Int              @default(0)
  readFaq: DateTime?               
  resetBounceScoreAfter: DateTime? 
  timeRead: Int                    @default(0)
  topicCount: Int                  @default(0)
  topicReplyCount: Int             @default(0)
  topicsEntered: Int               @default(0)
}

model UserUpload {
  id: Int             @id @pg.serial("user_uploads_id_seq")
  createdAt: DateTime 
  uploadId: Int       
  userId: Int         
}

model UserVisit {
  id: Int             @id @pg.serial("user_visits_id_seq")
  mobile: Boolean?    @default(false)
  postsRead: Int?     @default(0)
  timeRead: Int       @default(0)
  userId: Int         
  visitedAt: DateTime 
}

model UserWarning {
  id: Int              @id @pg.serial("user_warnings_id_seq")
  createdAt: DateTime? 
  createdById: Int     
  topicId: Int         @unique
  updatedAt: DateTime? 
  userId: Int          
}

model WatchedWord {
  id: Int              @id @pg.serial("watched_words_id_seq")
  action: Int          
  createdAt: DateTime? 
  updatedAt: DateTime? 
  word: String         
}

model WebCrawlerRequest {
  id: Int           @id @pg.serial("web_crawler_requests_id_seq")
  count: Int        @default(0)
  date: DateTime    
  userAgent: String 
}

model WebHook {
  id: Int                    @id @pg.serial("web_hooks_id_seq")
  active: Boolean            @default(false)
  contentType: Int           @default(1)
  createdAt: DateTime?       
  lastDeliveryStatus: Int    @default(1)
  payloadUrl: String         
  secret: String?            @default("")
  status: Int                @default(1)
  updatedAt: DateTime?       
  verifyCertificate: Boolean @default(true)
  wildcardWebHook: Boolean   @default(false)
}

model WebHookEvent {
  id: Int                  @id @pg.serial("web_hook_events_id_seq")
  createdAt: DateTime?     
  duration: Int?           @default(0)
  headers: String?         
  payload: String?         
  responseBody: String?    
  responseHeaders: String? 
  status: Int?             @default(0)
  updatedAt: DateTime?     
  webHookId: Int           
}

model WebHookEventType {
  id: Int      @id @pg.serial("web_hook_event_types_id_seq")
  name: String 
}

model WebHookEventTypeHook {
  webHookEventTypeId: Int 
  webHookId: Int          
}
