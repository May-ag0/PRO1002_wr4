PRAGMA foreign_keys = ON;

CREATE TABLE Books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT,
    publication_year INTEGER
);

CREATE TABLE Authors(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT,
    birth_year INTEGER,
);

CREATE TABLE Quotes(
    id INTEGER PRIMARY KEY,
    quote_text TEXT NOT NULL
    book_id INTEGER NOT NULL REFRENCES Books(id),
    author_id INTEGER NOT NULL REFRENCES Author(id)
);
