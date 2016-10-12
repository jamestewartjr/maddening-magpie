DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(255) NULL
);

DROP TABLE IF EXISTS books;

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  genre vARCHAR(50) NULL,
  cover VARCHAR(255) NULL,
  description text NULL
);

DROP TABLE IF EXISTS authors;

CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE UNIQUE INDEX author_name ON authors (name);

DROP TABLE IF EXISTS book_users;

CREATE TABLE book_users(
  user_id INTEGER NOT NULL,
  book_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS book_authors;

CREATE TABLE book_authors(
  author_id INTEGER NOT NULL,
  book_id INTEGER NOT NULL
);