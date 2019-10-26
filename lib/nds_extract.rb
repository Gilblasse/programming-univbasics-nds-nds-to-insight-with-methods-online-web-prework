require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  row_index = 0
  
  while row_index < nds.count do
    director_hash = nds[row_index]
    director_name = nds[row_index][:name]
    director_movies_gross = gross_for_director(director_hash)
    
    result[director_name] = director_movies_gross
    row_index += 1 
  end

result
end




# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total_worldwide_earnings = 0
  director = director_data[:name]
  director_movies = director_data[:movies]
  movie_index = 0
  
  while movie_index < director_movies.count do
    movie_gross = director_movies[movie_index][:worldwide_gross]
    total_worldwide_earnings += movie_gross
    movie_index += 1
  end
  
 total_worldwide_earnings
end
