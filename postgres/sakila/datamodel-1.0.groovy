type Actor @pgTable(name: "actor") {
  id: Int! @pgColumn(name: "actor_id") @unique
  filmActor: [FilmActor]
  firstName: String! @pgColumn(name: "first_name")
  lastName: String! @pgColumn(name: "last_name")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
}

type Address @pgTable(name: "address") {
  address: String!
  address2: String
  id: Int! @pgColumn(name: "address_id") @unique
  city: City! @pgColumn(name: "city_id")
  customer: [Customer]
  district: String!
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  phone: String!
  postalCode: String @pgColumn(name: "postal_code")
  staff: [Staff]
  store: [Store]
}

type Category @pgTable(name: "category") {
  id: Int! @pgColumn(name: "category_id") @unique
  filmCategory: [FilmCategory]
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  name: String!
}

type City @pgTable(name: "city") {
  address: [Address]
  city: String!
  id: Int! @pgColumn(name: "city_id") @unique
  country: Country! @pgColumn(name: "country_id")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
}

type Country @pgTable(name: "country") {
  city: [City]
  country: String!
  id: Int! @pgColumn(name: "country_id") @unique
  lastUpdate: DateTime! @pgColumn(name: "last_update")
}

type Customer @pgTable(name: "customer") {
  active: Int
  activebool: Boolean! @default(value: true)
  address: Address! @pgColumn(name: "address_id")
  createDate: DateTime! @pgColumn(name: "create_date")
  id: Int! @pgColumn(name: "customer_id") @unique
  email: String
  firstName: String! @pgColumn(name: "first_name")
  lastName: String! @pgColumn(name: "last_name")
  lastUpdate: DateTime @pgColumn(name: "last_update")
  payment: [Payment]
  rental: [Rental]
  storeId: Int! @pgColumn(name: "store_id")
}

type Film @pgTable(name: "film") {
  description: String
  id: Int! @pgColumn(name: "film_id") @unique
  filmActor: [FilmActor]
  filmCategory: [FilmCategory]
  # Type tsvector is not supported
  # fulltext: tsvector!
  inventory: [Inventory]
  language: Language! @pgColumn(name: "language_id")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  length: Int
  rating: MpaaRating
  releaseYear: Int @pgColumn(name: "release_year")
  rentalDuration: Int! @default(value: 3) @pgColumn(name: "rental_duration")
  rentalRate: Float! @default(value: 4.99) @pgColumn(name: "rental_rate")
  replacementCost: Float! @default(value: 19.99) @pgColumn(name: "replacement_cost")
  specialFeatures: String @pgColumn(name: "special_features")
  title: String!
}

type FilmActor @pgTable(name: "film_actor") {
  # Multiple ID fields (compound indexes) are not supported
  # id: Actor! @pgColumn(name: "actor_id") @unique
  # Multiple ID fields (compound indexes) are not supported
  # id: Film! @pgColumn(name: "film_id") @unique
  lastUpdate: DateTime! @pgColumn(name: "last_update")
}

type FilmCategory @pgTable(name: "film_category") {
  # Multiple ID fields (compound indexes) are not supported
  # id: Category! @pgColumn(name: "category_id") @unique
  # Multiple ID fields (compound indexes) are not supported
  # id: Film! @pgColumn(name: "film_id") @unique
  lastUpdate: DateTime! @pgColumn(name: "last_update")
}

type Inventory @pgTable(name: "inventory") {
  film: Film! @pgColumn(name: "film_id")
  id: Int! @pgColumn(name: "inventory_id") @unique
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  rental: [Rental]
  storeId: Int! @pgColumn(name: "store_id")
}

type Language @pgTable(name: "language") {
  film: [Film]
  id: Int! @pgColumn(name: "language_id") @unique
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  name: String!
}

type Payment @pgTable(name: "payment") {
  amount: Float!
  customer: Customer! @pgColumn(name: "customer_id")
  id: Int! @pgColumn(name: "payment_id") @unique
  paymentDate: DateTime! @pgColumn(name: "payment_date")
  rental: Rental! @pgColumn(name: "rental_id")
  staff: Staff! @pgColumn(name: "staff_id")
}

type Rental @pgTable(name: "rental") {
  customer: Customer! @pgColumn(name: "customer_id")
  inventory: Inventory! @pgColumn(name: "inventory_id")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  payment: [Payment]
  id: Int! @pgColumn(name: "rental_id") @unique
  rentalDate: DateTime! @pgColumn(name: "rental_date")
  returnDate: DateTime @pgColumn(name: "return_date")
  staff: Staff! @pgColumn(name: "staff_id")
}

type Staff @pgTable(name: "staff") {
  active: Boolean! @default(value: true)
  address: Address! @pgColumn(name: "address_id")
  email: String
  firstName: String! @pgColumn(name: "first_name")
  lastName: String! @pgColumn(name: "last_name")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  password: String
  payment: [Payment]
  # Type bytea is not supported
  # picture: bytea
  rental: [Rental]
  id: Int! @pgColumn(name: "staff_id") @unique
  store: Store!
  storeId: Int! @pgColumn(name: "store_id")
  username: String!
}

type Store @pgTable(name: "store") {
  address: Address! @pgColumn(name: "address_id")
  lastUpdate: DateTime! @pgColumn(name: "last_update")
  managerStaff: Staff! @pgColumn(name: "manager_staff_id") @unique
  id: Int! @pgColumn(name: "store_id") @unique
}

enum MpaaRating {
  G
  NC-17
  PG
  PG-13
  R
}
