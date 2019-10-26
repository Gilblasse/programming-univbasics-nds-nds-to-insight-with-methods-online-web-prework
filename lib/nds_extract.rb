require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  row_index = 0
  
  while row_index < nds.count do
    director_name = nds[row_index][:name]
    director_movies = nds[row_index][:movies]
    director_movies_gross = gross_for_director(director_movies)
    
    result[director_name] = director_movies_gross
    row_index += 1 
  end

  result
end




# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0
  movie_row_index = 0
  
  while movie_row_index < director_data.count do
    total += director_data[movie_row_index][:worldwide_gross]
    movie_row_index += 1
  end
  
  total
end
