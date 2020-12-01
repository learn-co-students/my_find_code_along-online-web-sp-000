require 'pry'

def my_find(collection)
  #start a 0  
  i = 0
  #while variable is less thank the array length 
  while i < collection.length
  #if the block returns true, return the argument passed into yield. This will exit the loop and the element will be the return value of the method. If the block returns false, continue to the next element in the array
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end