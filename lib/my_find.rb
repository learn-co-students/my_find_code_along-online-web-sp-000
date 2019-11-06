require 'pry'

 def my_find(array)
   i = 0
   while i < array.length 
        if yield(array[i])
          return array[i]
        end
        i = i + 1
  end
 end