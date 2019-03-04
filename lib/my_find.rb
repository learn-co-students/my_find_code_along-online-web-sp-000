require 'pry'

def my_find(collection)
  if block_given?
    i = 0
    block_return_values = []
    while i < collection.length
      yield(collection[i])
      i += 1
    end
    if block_return_values.detect != nil
      block_return_values
    else
      false
    end
  end
end
