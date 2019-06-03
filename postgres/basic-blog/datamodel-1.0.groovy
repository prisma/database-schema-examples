type Author @pgTable(name: "authors") {
  authorsBlogs: [AuthorsBlog]
  id: Int! @unique
  name: String
}

type AuthorsBlog @linkTable @pgTable(name: "authors_blogs") {
  author: Author! @pgColumn(name: "author_id")
  blog: Blog! @pgColumn(name: "blog_id")
}

type Blog @pgTable(name: "blogs") {
  authorsBlogs: [AuthorsBlog]
  id: Int! @unique
  name: String!
  posts: [Post]
  viewcount: Int!
}

type Post @pgTable(name: "posts") {
  blog: Blog! @pgColumn(name: "blog_id")
  id: Int! @unique
  tags: String! @default(value: "{}")
  title: String!
}
