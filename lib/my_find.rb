require 'pry'

def my_find(collection)
i = 0
  while i < collection.length
  return collection[i] if yield(collection[i])
    i+=1
  end
end

collection = (1..100).to_a
my_find([1,2,3,4,5,15]) {|i| i % 3 == 0 && i % 5 == 0 }