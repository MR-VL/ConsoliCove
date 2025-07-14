CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
                       user_id UUID DEFAULT gen_random_uuid() NOT NULL,
                       username VARCHAR(50) UNIQUE NOT NULL,
                       email VARCHAR(100) UNIQUE NOT NULL,
                       password TEXT NOT NULL,
                       created_at TIMESTAMP DEFAULT NOW() NOT NULL ,
                       consolidev_username VARCHAR(50) UNIQUE NOT NULL,
                       consolidev_key VARCHAR(50) UNIQUE,

                       CONSTRAINT UsersPK PRIMARY KEY (user_id)
);


