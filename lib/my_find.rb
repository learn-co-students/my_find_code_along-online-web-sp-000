require 'pry'


#returns the first element in the iteration that returns true first

def my_find(collection)
  i = 0 
  while i < collection.length 
    value = yield(collection[i])
    if value
      return collection[i]
    end
    i += 1 
  end
end

# def my_find(collection)
#   i = 0 
#   while i < collection.length 
#     value = yield(collection[i])
#     if value === true
#       return collection[i]
#     end
#     i += 1 
#   end
# end
