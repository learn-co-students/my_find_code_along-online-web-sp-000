require 'pry'

def my_find(collection)
 i = 0
 thing_to_yield_to = []
 while i < collection.size
  return collection[i] if yield(collection[i])
   i += 1
 end
end
