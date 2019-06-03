type Location @pgTable(name: "locations") {
  id: UUID! @unique
  latitude: Float!
  longitude: Float!
  tweets: [Tweet]
}

type Tweet @pgTable(name: "tweets") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  id: UUID! @unique
  location: Location!
  owner: User!
  text: String!
}

type User @pgTable(name: "users") {
  createdAt: DateTime! @pgColumn(name: "created_at")
  handle: String!
  id: UUID! @unique
  name: String!
  tweets: [Tweet]
  updatedAt: DateTime! @pgColumn(name: "updated_at")
}
