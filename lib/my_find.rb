require 'pry'
# def my_find(collection)
#   i = 0
#   while i < collection.length
#     if yield(collection[i])
#       return collection[i]
#     end
#     i = i + 1
#   end
# end

# We can refactor this slightly by putting our if statement all on one line using a statement modifier:
#///////////////////////////////////////////////////////////
def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end