-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;

CREATE TABLE authors (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR NOT NULL,
    dob DATE,
    pob VARCHAR
);

INSERT INTO
    authors (name, dob, pob)
VALUES
    ('Douglas Adams', '1952-03-11', 'Cambridge'),
    ('C.S. Lewis', '1898-11-29', 'Oxford'),
    ('J.R.R. Tolkien', '1892-01-03', 'Bloemfontein'),
    ('Ray Bradbury', '1920-08-22', 'Waukegan'),
    ('George Orwell', '1903-06-25', 'Motifari');

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR NOT NULL,
    released INT NOT NULL
);

INSERT INTO
    books (title, released)
VALUES
    ('Hitchhikers Guide to the Galaxy', 1979),
    ('The Restaurant at the End of the Universe', 1980),
    ('The Lion, the Witch and the Wardrobe', 1950),
    ('The Hobbit', 1937),
    ('The Fellowship of the Ring', 1954),
    ('Fahrenheit 451', 1953),
    ('Nineteen Eighty-Four', 1949);
