-- Series (id, title, author_id, subgenre_id)
-- SubGenres (id, name)
-- Authors (id, name)
-- Books (id, title, year, series_id)
-- Characters (id, name, motto, species, author_id, series_id)
-- Character_books(id, character_id, book_id)

INSERT INTO series (title, author_id, subgenre_id)
VALUES ("something", 1, 2); 
INSERT INTO series (title, author_id, subgenre_id)
VALUES ("something else", 2, 1);

INSERT INTO subgenres (name)
VALUES ("super deluxe extra fantasy");
INSERT INTO subgenres (name)
VALUES ("extra triple double sci-fi");

INSERT INTO authors (name)
VALUES ("Jack");
INSERT INTO authors (name)
VALUES ("Jill");

INSERT INTO books (title, year, series_id)
VALUES ("book 1", 2000, 1); 
INSERT INTO books (title, year, series_id)
VALUES ("book 2", 2001, 1); 
INSERT INTO books (title, year, series_id)
VALUES ("book 3", 2002, 1);
INSERT INTO books (title, year, series_id)
VALUES ("book 4", 2010, 2);  
INSERT INTO books (title, year, series_id)
VALUES ("book 5", 2011, 2); 
INSERT INTO books (title, year, series_id)
VALUES ("book 6", 2012, 2);

INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("A", "Hey", "Human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("B", "Hello", "Human", 1, 1); 
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("C", "Hi", "Warlock", 1, 1); 
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("D", "Yo", "Mostly Human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("W", "Wuzgood", "Jedi", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("X", "Woof", "Cat", 2, 2); 
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Y", "BILLY MAYS HERE", "Salesman", 2, 2); 
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Buzz", "To Infinity and Beyond!", "Space Ranger", 2, 2);

INSERT INTO character_books (character_id, book_id)
VALUES (1, 1);
INSERT INTO character_books (character_id, book_id)
VALUES (1, 2); 
INSERT INTO character_books (character_id, book_id)
VALUES (1, 3); 
INSERT INTO character_books (character_id, book_id)
VALUES (2, 1); 
INSERT INTO character_books (character_id, book_id)
VALUES (2, 2); 
INSERT INTO character_books (character_id, book_id)
VALUES (2, 3);
INSERT INTO character_books (character_id, book_id)
VALUES (3, 1);
INSERT INTO character_books (character_id, book_id)
VALUES (4, 3);
INSERT INTO character_books (character_id, book_id)
VALUES (5, 4);
INSERT INTO character_books (character_id, book_id)
VALUES (5, 5);
INSERT INTO character_books (character_id, book_id)
VALUES (5, 6);
INSERT INTO character_books (character_id, book_id)
VALUES (6, 4);
INSERT INTO character_books (character_id, book_id)
VALUES (6, 5);
INSERT INTO character_books (character_id, book_id)
VALUES (6, 6);
INSERT INTO character_books (character_id, book_id)
VALUES (7, 4);
INSERT INTO character_books (character_id, book_id)
VALUES (8, 5);

