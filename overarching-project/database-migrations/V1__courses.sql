CREATE TABLE courses
(
    id   SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE questions
(
    id        SERIAL PRIMARY KEY,
    course_id INTEGER REFERENCES courses (id) ON DELETE CASCADE,
    title     TEXT    NOT NULL,
    text      TEXT    NOT NULL,
    upvotes   INTEGER NOT NULL DEFAULT 0
);