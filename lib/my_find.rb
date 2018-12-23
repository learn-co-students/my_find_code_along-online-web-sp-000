require 'pry'

def my_find(collection)
  i = 0
  retVal = false
  while(i < collection.size)
    if yield(collection[i])
      retVal = true
      break
    end
    i += 1
  end
  retVal ? collection[i] : nil
end
