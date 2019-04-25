type Actor @db(name: "actor") {
  actor_id: Int! @id(strategy: SEQUENCE) @sequence(name: "actor_actor_id_seq", initialValue: 1, allocationSize: 1)
  filmActor: [FilmActor]
  firstName: String! @db(name: "first_name")
  lastName: String! @db(name: "last_name")
  lastUpdate: DateTime! @db(name: "last_update")
}

type Address @db(name: "address") {
  address: String!
  address2: String
  address_id: Int! @id(strategy: SEQUENCE) @sequence(name: "address_address_id_seq", initialValue: 1, allocationSize: 1)
  city: City! @db(name: "city_id")
  customer: [Customer]
  district: String!
  lastUpdate: DateTime! @db(name: "last_update")
  phone: String!
  postalCode: String @db(name: "postal_code")
  staff: [Staff]
  store: [Store]
}

type Category @db(name: "category") {
  category_id: Int! @id(strategy: SEQUENCE) @sequence(name: "category_category_id_seq", initialValue: 1, allocationSize: 1)
  filmCategory: [FilmCategory]
  lastUpdate: DateTime! @db(name: "last_update")
  name: String!
}

type City @db(name: "city") {
  address: [Address]
  city: String!
  city_id: Int! @id(strategy: SEQUENCE) @sequence(name: "city_city_id_seq", initialValue: 1, allocationSize: 1)
  country: Country! @db(name: "country_id")
  lastUpdate: DateTime! @db(name: "last_update")
}

type Country @db(name: "country") {
  city: [City]
  country: String!
  country_id: Int! @id(strategy: SEQUENCE) @sequence(name: "country_country_id_seq", initialValue: 1, allocationSize: 1)
  lastUpdate: DateTime! @db(name: "last_update")
}

type Customer @db(name: "customer") {
  active: Int
  activebool: Boolean! @default(value: true)
  address: Address! @db(name: "address_id")
  createDate: DateTime! @db(name: "create_date")
  customer_id: Int! @id(strategy: SEQUENCE) @sequence(name: "customer_customer_id_seq", initialValue: 1, allocationSize: 1)
  email: String
  firstName: String! @db(name: "first_name")
  lastName: String! @db(name: "last_name")
  lastUpdate: DateTime @db(name: "last_update")
  payment: [Payment]
  rental: [Rental]
  storeId: Int! @db(name: "store_id")
}

type Film @db(name: "film") {
  description: String
  film_id: Int! @id(strategy: SEQUENCE) @sequence(name: "film_film_id_seq", initialValue: 1, allocationSize: 1)
  filmActor: [FilmActor]
  filmCategory: [FilmCategory]
  # Type tsvector is not supported
  # fulltext: tsvector!
  inventory: [Inventory]
  language: Language! @db(name: "language_id")
  lastUpdate: DateTime! @db(name: "last_update")
  length: Int
  rating: MpaaRating
  releaseYear: Int @db(name: "release_year")
  rentalDuration: Int! @db(name: "rental_duration") @default(value: 3)
  rentalRate: Float! @db(name: "rental_rate") @default(value: 4.99)
  replacementCost: Float! @db(name: "replacement_cost") @default(value: 19.99)
  specialFeatures: String @db(name: "special_features")
  title: String!
}

type FilmActor @db(name: "film_actor") {
  # Multiple ID fields (compound indexes) are not supported
  # actor_id: Actor! @id
  # Multiple ID fields (compound indexes) are not supported
  # film_id: Film! @id
  lastUpdate: DateTime! @db(name: "last_update")
}

type FilmCategory @db(name: "film_category") {
  # Multiple ID fields (compound indexes) are not supported
  # category_id: Category! @id
  # Multiple ID fields (compound indexes) are not supported
  # film_id: Film! @id
  lastUpdate: DateTime! @db(name: "last_update")
}

type Inventory @db(name: "inventory") {
  film: Film! @db(name: "film_id")
  inventory_id: Int! @id(strategy: SEQUENCE) @sequence(name: "inventory_inventory_id_seq", initialValue: 1, allocationSize: 1)
  lastUpdate: DateTime! @db(name: "last_update")
  rental: [Rental]
  storeId: Int! @db(name: "store_id")
}

type Language @db(name: "language") {
  film: [Film]
  language_id: Int! @id(strategy: SEQUENCE) @sequence(name: "language_language_id_seq", initialValue: 1, allocationSize: 1)
  lastUpdate: DateTime! @db(name: "last_update")
  name: String!
}

type Payment @db(name: "payment") {
  amount: Float!
  customer: Customer! @db(name: "customer_id")
  payment_id: Int! @id(strategy: SEQUENCE) @sequence(name: "payment_payment_id_seq", initialValue: 1, allocationSize: 1)
  paymentDate: DateTime! @db(name: "payment_date")
  rental: Rental! @db(name: "rental_id")
  staff: Staff! @db(name: "staff_id")
}

type Rental @db(name: "rental") {
  customer: Customer! @db(name: "customer_id")
  inventory: Inventory! @db(name: "inventory_id")
  lastUpdate: DateTime! @db(name: "last_update")
  payment: [Payment]
  rental_id: Int! @id(strategy: SEQUENCE) @sequence(name: "rental_rental_id_seq", initialValue: 1, allocationSize: 1)
  rentalDate: DateTime! @db(name: "rental_date")
  returnDate: DateTime @db(name: "return_date")
  staff: Staff! @db(name: "staff_id")
}

type Staff @db(name: "staff") {
  active: Boolean! @default(value: true)
  address: Address! @db(name: "address_id")
  email: String
  firstName: String! @db(name: "first_name")
  lastName: String! @db(name: "last_name")
  lastUpdate: DateTime! @db(name: "last_update")
  password: String
  payment: [Payment]
  # Type bytea is not supported
  # picture: bytea
  rental: [Rental]
  staff_id: Int! @id(strategy: SEQUENCE) @sequence(name: "staff_staff_id_seq", initialValue: 1, allocationSize: 1)
  store: Store!
  storeId: Int! @db(name: "store_id")
  username: String!
}

type Store @db(name: "store") {
  address: Address! @db(name: "address_id")
  lastUpdate: DateTime! @db(name: "last_update")
  managerStaff: Staff! @db(name: "manager_staff_id") @unique
  store_id: Int! @id(strategy: SEQUENCE) @sequence(name: "store_store_id_seq", initialValue: 1, allocationSize: 1)
}

enum MpaaRating {
  G
  NC-17
  PG
  PG-13
  R
}
