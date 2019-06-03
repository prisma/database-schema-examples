model Author {
  id: Int @id @pg.serial("authors_id_seq")
  authorsBlogs: AuthorsBlog[] 
  name: String? 
}

model AuthorBlog {
  author: Author 
  blog: Blog 
}

model Blog {
  id: Int @id @pg.serial("blogs_id_seq")
  authorsBlogs: AuthorsBlog[] 
  name: String 
  posts: Post[] 
  viewcount: Int 
}

model Post {
  id: Int @id @pg.serial("posts_id_seq")
  blog: Blog 
  tags: String @default([])
  title: String 
}
