CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW() NOT NULL ,
    consolidev_username VARCHAR(50) UNIQUE NOT NULL,
    consolidev_key VARCHAR(50) UNIQUE,

    CONSTRAINT UsersPK PRIMARY KEY (username)
);


CREATE TABLE posts (
    post_id UUID DEFAULT gen_random_uuid() NOT NULL ,
    title TEXT NOT NULL,
    content TEXT NULL,
    username VARCHAR(50) NOT NULL ,
    created_at TIMESTAMP DEFAULT NOW() NOT NULL ,

    CONSTRAINT PostsPK PRIMARY KEY (post_id),
    CONSTRAINT PostsAuthorFK FOREIGN KEY (username) REFERENCES users(username)
);