require 'pry'

def my_all?(collection)
  counter = 0
  returned_collection = []
  while counter < collection.length 
    returned_collection << yield(collection[counter])
    counter += 1
  end
  if returned_collection.include? (false)
    false
  else
    true 
  end
end