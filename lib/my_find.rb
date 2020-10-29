require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end





#using a while loop, check/find elements that match a certain condition.
#return those that match as a new array and return nil if none of the org array match the condition
#use yield block to check condition
