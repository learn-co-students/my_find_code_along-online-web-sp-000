require 'pry'

def my_find(collection)
  i = 0
  #matches = []
  while i < collection.length
    entry = collection[i]
    return entry if yield(entry)
    #if valid?
      #matches <<  entry
    #end
    i += 1
  end
  #matches
end
