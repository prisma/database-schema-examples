type Author @db(name: "authors") {
  authorsBlogs: [AuthorsBlog]
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "authors_id_seq", initialValue: 1, allocationSize: 1)
  name: String
}

type AuthorsBlog @db(name: "authors_blogs") @linkTable {
  author: Author! @db(name: "author_id")
  blog: Blog! @db(name: "blog_id")
}

type Blog @db(name: "blogs") {
  authorsBlogs: [AuthorsBlog]
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "blogs_id_seq", initialValue: 1, allocationSize: 1)
  name: String!
  posts: [Post]
  viewcount: Int!
}

type Post @db(name: "posts") {
  blog: Blog! @db(name: "blog_id")
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "posts_id_seq", initialValue: 1, allocationSize: 1)
  tags: String! @default(value: "{}")
  title: String!
}
