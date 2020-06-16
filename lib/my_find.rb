require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    item = collection[i]
    return item if yield(item)
    i += 1
  end
end