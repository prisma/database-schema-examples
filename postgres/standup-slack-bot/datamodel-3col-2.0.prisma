model Eventid {
  eventId    String    @id
  createdAt  DateTime  
}

model Migrate {
  version  Int  @id
}

model Post {
  id         Int        @id @pg.serial("posts_id_seq")
  createdAt  DateTime   
  reports    Report[]?  
  standup    Standup    
  updatedAt  DateTime   
}

model Question {
  id         Int       @id @pg.serial("questions_id_seq")
  createdAt  DateTime  
  order      Int       
  question   String    
  standup    Standup   
  updatedAt  DateTime  
}

model Report {
  id         Int           @id @pg.serial("reports_id_seq")
  createdAt  DateTime      
  post       Post?         
  questions  Json          
  standup    Standup       
  status     ReportStatus  
  updatedAt  DateTime      
  user       User          
}

enum ReportStatus {
  Asked     = "ASKED"
  Complete  = "COMPLETE"
  Pending   = "PENDING"
  Skip      = "SKIP"
}

model Review {
  id         Int         @id @pg.serial("reviews_id_seq")
  createdAt  DateTime    
  text       String      
  type       ReviewType  
  user       User        
}

enum ReviewType {
  Comment       = "COMMENT"
  ExitFeedback  = "EXIT_FEEDBACK"
  ReferredBy    = "REFERRED_BY"
}

model Standup {
  id             Int             @id @pg.serial("standups_id_seq")
  channelId      String          
  createdAt      DateTime        
  isThreaded     Boolean         @default(false)
  name           Citext          
  posts          Post[]          
  questions      Question[]      
  reports        Report[]        
  standupsUsers  StandupsUser[]  
  team           Team            
  time           Time            
  timezone       String          
  updatedAt      DateTime        
}

enum StandupUserStatus {
  Active    = "ACTIVE"
  Inactive  = "INACTIVE"
  Invited   = "INVITED"
}

model StandupUser {
  createdAt       DateTime           
  isStandupOwner  Boolean            @default(false)
  standup         Standup            
  status          StandupUserStatus  
  time            Time               
  updatedAt       DateTime           
  user            User               
}

model Team {
  id                  Int         @id @pg.serial("teams_id_seq")
  botAccessToken      String      @unique
  botSlackId          String      
  costPerUser         Int         @default(100)
  createdAt           DateTime    
  minimumMonthlyCost  Int         @default(0)
  scope               String      @default([])
  standups            Standup[]   
  status              TeamStatus  
  stripeId            String?     
  teamAccessToken     String      @unique
  teamName            String      
  teamSlackId         String      @unique
  trialEnds           DateTime    
  updatedAt           DateTime    
  users               User[]      
}

enum TeamStatus {
  Active      = "ACTIVE"
  Delinquent  = "DELINQUENT"
  Inactive    = "INACTIVE"
}

model User {
  id             Int             @id @pg.serial("users_id_seq")
  avatarUrl      String?         
  createdAt      DateTime        
  email          String?         
  firstName      String?         
  isTeamOwner    Boolean         @default(false)
  lastName       String?         
  reports        Report[]        
  reviews        Review[]        
  slackId        String          
  standupsUsers  StandupsUser[]  
  team           Team            
  timezone       String          
  updatedAt      DateTime        
  username       String          
}
