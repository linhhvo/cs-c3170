CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    done BOOLEAN NOT NULL DEFAULT false
);
