model Location {
  id: Uuid         @id
  latitude: Float  
  longitude: Float 
  tweets: Tweet[]  
}

model Tweet {
  id: Uuid            @id
  createdAt: DateTime 
  location: Location  
  owner: User         
  text: String        
}

model User {
  id: Uuid            @id
  createdAt: DateTime 
  handle: String      
  name: String        
  tweets: Tweet[]     
  updatedAt: DateTime 
}
