require 'pry'

def my_find(collection)
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    i = i + 1
  end
end
