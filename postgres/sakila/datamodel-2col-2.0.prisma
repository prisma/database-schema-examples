model Actor {
  actorId: Int           @id @pg.serial("actor_actor_id_seq")
  filmActor: FilmActor[] 
  firstName: String      
  lastName: String       
  lastUpdate: DateTime   
}

model Address {
  addressId: Int       @id @pg.serial("address_address_id_seq")
  address: String      
  address2: String?    
  city: City           
  customer: Customer[] 
  district: String     
  lastUpdate: DateTime 
  phone: String        
  postalCode: String?  
  staff: Staff[]       
  store: Store[]       
}

model Category {
  categoryId: Int              @id @pg.serial("category_category_id_seq")
  filmCategory: FilmCategory[] 
  lastUpdate: DateTime         
  name: String                 
}

model City {
  cityId: Int          @id @pg.serial("city_city_id_seq")
  address: Address[]   
  city: String         
  country: Country     
  lastUpdate: DateTime 
}

model Country {
  countryId: Int       @id @pg.serial("country_country_id_seq")
  city: City[]         
  country: String      
  lastUpdate: DateTime 
}

model Customer {
  customerId: Int       @id @pg.serial("customer_customer_id_seq")
  active: Int?          
  activebool: Boolean   @default(true)
  address: Address      
  createDate: DateTime  
  email: String?        
  firstName: String     
  lastName: String      
  lastUpdate: DateTime? 
  payment: Payment[]    
  rental: Rental[]      
  storeId: Int          
}

model Film {
  filmId: Int                  @id @pg.serial("film_film_id_seq")
  description: String?         
  filmActor: FilmActor[]       
  filmCategory: FilmCategory[] 
  fulltext: Tsvector           
  inventory: Inventory[]       
  language: Language           
  lastUpdate: DateTime         
  length: Int?                 
  rating: MpaaRating?          
  releaseYear: Int?            
  rentalDuration: Int          @default(3)
  rentalRate: Float            @default(4.99)
  replacementCost: Float       @default(19.99)
  specialFeatures: String?     
  title: String                
}

model FilmActor {
  filmId: Film         @id
  actorId: Actor       @id
  lastUpdate: DateTime 
}

model FilmCategory {
  filmId: Film         @id
  categoryId: Category @id
  lastUpdate: DateTime 
}

model Inventory {
  inventoryId: Int     @id @pg.serial("inventory_inventory_id_seq")
  film: Film           
  lastUpdate: DateTime 
  rental: Rental[]     
  storeId: Int         
}

model Language {
  languageId: Int      @id @pg.serial("language_language_id_seq")
  film: Film[]         
  lastUpdate: DateTime 
  name: String         
}

enum MpaaRating {
  G      = "G"
  Nc_17  = "NC-17"
  Pg     = "PG"
  Pg_13  = "PG-13"
  R      = "R"
}

model Payment {
  paymentId: Int        @id @pg.serial("payment_payment_id_seq")
  amount: Float         
  customer: Customer    
  paymentDate: DateTime 
  rental: Rental        
  staff: Staff          
}

model Rental {
  rentalId: Int         @id @pg.serial("rental_rental_id_seq")
  customer: Customer    
  inventory: Inventory  
  lastUpdate: DateTime  
  payment: Payment[]    
  rentalDate: DateTime  
  returnDate: DateTime? 
  staff: Staff          
}

model Staff {
  staffId: Int         @id @pg.serial("staff_staff_id_seq")
  active: Boolean      @default(true)
  address: Address     
  email: String?       
  firstName: String    
  lastName: String     
  lastUpdate: DateTime 
  password: String?    
  payment: Payment[]   
  picture: Bytea?      
  rental: Rental[]     
  store: Store         
  storeId: Int         
  username: String     
}

model Store {
  storeId: Int         @id @pg.serial("store_store_id_seq")
  address: Address     
  lastUpdate: DateTime 
  managerStaff: Staff  @unique
}
