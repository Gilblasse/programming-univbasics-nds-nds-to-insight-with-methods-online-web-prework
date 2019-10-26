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
    director_movies_gross = gross_for_director(director_hash)
    
    row_index += 1 
  end

  result
end




# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0
  director_data.class
end
