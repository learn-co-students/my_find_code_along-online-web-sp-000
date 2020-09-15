collection = (1..100).to_a

puts "Here is the first set and the answer acc. to learn.co"
def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end

puts my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
puts
puts
puts "Here is the Second set"

def my_find2(collection)
  nu_array = []
  i = 0
  while i < collection.length
    nu_array.push(collection[i]) if yield(collection[i])
    i = i + 1
  end
  nu_array
end

#def my_find2(collection)
#  nu_array = []
#  i = 0
#  while i < collection.length
#    if yield(collection[i])           # more complicated
#      nu_array.push(collection[i])    # but this will work also
#    end
#    i = i + 1
#  end
#  nu_array
#end

puts my_find2(collection) {|i| i % 3 == 0 and i % 5 == 0 }
