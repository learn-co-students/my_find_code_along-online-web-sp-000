require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
      binding.pry
     if yield(collection[i]) == true

       return collection[i]
     end
    i = i + 1
  end
end

collection =  (1..100).to_a
yielded = []
my_find(collection) do |number|
  yielded.push number
end

#super interesting
#if i do
# if yield(collection[i])  == true
#the test doesn't pass fully
#it says it fails the part "  yields the correct element to the block"
#       expected: [1]
#got: [1, 2, 3,.. 99, 100]
