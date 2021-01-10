require 'pry'

def my_all?(array)
  collection = []
  i = 0
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection.include?(false) ? false : true
end
