require 'pry'

alg1 = {|element| puts element * element}

def my_find(collection)
  i = 0
  while i < collection.length
    yield(collection[i])
    i += 1
  end
end

my_find([1,2,3,4]) {|element| puts element * element}
