require 'pry'

def my_find(collection)
  i=0
  block_return_values=[ ]
  while i<collection.length
  #  block_return_values << yield(collection[i])
    if yield(collection[i])
      return collection[i]
    end
    i+= 1
  end

  #if block_return_values.include?(true)
#    collection[block_return_values.index(true)]
#  else
#    nil
#  end
end
