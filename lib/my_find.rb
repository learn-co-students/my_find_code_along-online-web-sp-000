require 'pry'

def my_find(collection)
  found = nil
  i = 0
  while i < collection.length
    if yield(collection[i])
      found = collection[i]
      break
    end


    i = i + 1
  end

  return found
end
