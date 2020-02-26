require 'pry'


    def my_find(collection)
              #   counter = 0
              #   array = []
              #  if collection == []
              #   while counter < collection.length
              #      if yield(collection[counter])
              #       collection[counter]
              #      end
              #          counter += 1
              #        end
              #   else
              #      while counter < collection.length
              #      array << collection[counter]
              #      counter += 1
              #    end
              #      return yield(array.find{|i| i.odd? })
              # end
              counter = 0

      if (collection.length == 0)
        return counter
      end

      while counter < collection.length
        if yield(collection[counter])
          return collection[counter]
        end
        counter = counter + 1
      end

      return nil

    end
