require 'pry'

def my_find(collection)
  if block_given?
    i = 0
    while i < collection.length
      return (collection[i]) if yield(collection[i])
      i += 1
    end
  else
    "No block given"
  end
end
collection = (1..100).to_a
print my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
