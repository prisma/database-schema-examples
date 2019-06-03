type Location @db(name: "locations") {
  id: UUID! @id
  latitude: Float!
  longitude: Float!
  tweets: [Tweet]
}

type Tweet @db(name: "tweets") {
  createdAt: DateTime! @db(name: "created_at")
  id: UUID! @id
  location: Location!
  owner: User!
  text: String!
}

type User @db(name: "users") {
  createdAt: DateTime! @db(name: "created_at")
  handle: String!
  id: UUID! @id
  name: String!
  tweets: [Tweet]
  updatedAt: DateTime! @db(name: "updated_at")
}
