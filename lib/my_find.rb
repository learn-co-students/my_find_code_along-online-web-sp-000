require 'pry'

def my_find(collection)
    i = 0 
    # new_collection = []
    while i < collection.length
        if yield(collection[i])
            return collection[i]
        end
        i += 1
    end
end

# collection = (1..100).to_a
# my_find(collection) {|num| (num % 3 === 0 && num % 5 == 0)}