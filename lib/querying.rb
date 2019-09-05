# -- Series (id, title, author_id, subgenre_id)
# -- SubGenres (id, name)
# -- Authors (id, name)
# -- Books (id, title, year, series_id)
# -- Characters (id, name, motto, species, author_id, series_id)
# -- Character_books(id, character_id, book_id)

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY(motto)
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors, subgenres, series
  WHERE authors.id = series.author_id
  AND subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title 
  FROM
    (SELECT COUNT(characters.id) AS num_humans, character_books.book_id, books.series_id
    FROM characters, character_books, books    
    WHERE characters.id = character_books.character_id
    AND character_books.book_id = books.id
    AND characters.species = 'human'
    GROUP BY books.series_id) AS results, series
  ORDER BY results.num_humans
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.id)
  FROM characters, character_books
  WHERE characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.id) DESC;"
end
