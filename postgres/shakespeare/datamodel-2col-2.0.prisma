model Chapter {
  chapterid: Int      @id
  chapter: Int        
  description: String 
  section: Int        
  workid: Work        
}

model Character {
  charid: String                 @id
  abbrev: String?                
  characterWork: CharacterWork[] 
  charname: String               
  description: String?           
  paragraph: Paragraph[]         
  speechcount: Int               
}

model CharacterWork {
  charid: Character 
  workid: Work      
}

model Paragraph {
  paragraphid: Int      @id
  chapter: Int          
  charcount: Int        
  charid: Character     
  paragraphnum: Int     
  paragraphtype: String 
  phonetictext: String  
  plaintext: String     
  section: Int          
  stemtext: String      
  wordcount: Int        
  workid: Work          
}

model Wordform {
  wordformid: Int      @id
  occurences: Int      
  phonetictext: String 
  plaintext: String    
  stemtext: String     
}

model Work {
  workid: String                 @id
  chapter: Chapter[]             
  characterWork: CharacterWork[] 
  genretype: String              
  longtitle: String              
  notes: String?                 
  paragraph: Paragraph[]         
  source: String                 
  title: String                  
  totalparagraphs: Int           
  totalwords: Int                
  year: Int                      
}
