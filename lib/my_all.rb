require 'pry'

def my_all?(collection)
  counter = 0
  collect = []
  while counter < collection.length
    collect << yield(collection[counter])
    counter += 1
  end
  collect.include?(false) ? false : true
end
