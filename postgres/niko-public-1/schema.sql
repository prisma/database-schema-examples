CREATE TABLE users (
	user_id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(256),
	email VARCHAR(256) UNIQUE NOT NULL
);
CREATE TABLE posts (
	post_id SERIAL PRIMARY KEY NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	title VARCHAR(256) NOT NULL,
	content TEXT,
	author_id INTEGER REFERENCES users(user_id) 
);
CREATE TABLE profiles (
	profile_id SERIAL PRIMARY KEY NOT NULL,
	bio TEXT,
	user_id INTEGER NOT NULL REFERENCES users(user_id) 
);
CREATE TABLE categories (
	category_id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(256)
);
CREATE TABLE post_in_categories (
	post_id INTEGER NOT NULL REFERENCES posts(post_id),
	category_id INTEGER NOT NULL REFERENCES categories(category_id) 
);
