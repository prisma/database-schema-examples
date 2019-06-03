# Basic Twitter

Based on Prisma's
[example](https://www.prisma.io/docs/datamodel-and-migrations/datamodel-MONGO-knun/).

```
type Tweet {
  id: ID! @id
  createdAt: DateTime! @createdAt
  text: String!
  owner: User!
  location: Location!
}

type User {
  id: ID! @id
  createdAt: DateTime! @createdAt
  updatedAt: DateTime! @updatedAt
  handle: String! @unique
  name: String
  tweets: [Tweet!]! @relation(link: INLINE)
}

type Location @embedded {
  latitude: Float!
  longitude: Float!
}
```
