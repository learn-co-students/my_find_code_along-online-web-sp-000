require 'pry'

def my_find(collection)
 i = 0 
 while i < collection.length 
 return collection[i] if yield(collection[i]) #alternate way of writing within
 i = i + 1                                   #while loop: if yield(collection[i])
 end                                        #return collection[i] end i = i + 1                                                                             
end