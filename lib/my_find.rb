require 'pry'

def my_find(collection)
  if collection.length > 0
    i = 0
    while i < collection.length
      return collection[i] if yield(collection[i])
      i += 1
    end
  end

end
