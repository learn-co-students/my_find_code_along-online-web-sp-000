require 'pry'

def my_find(collection)
  i = 0
  found = 0
  while i < collection.size
    if yield(collection[i])
      found += 1
      return(collection[i])
    end
    i += 1
  end
  return found == 0 ? NIL : found
end