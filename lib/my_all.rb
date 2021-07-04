require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = [] #Storing return values
  while i < collection.length #Incrememnting through input array
    block_return_values << yield(collection[i])
    i += 1
  end
  if block_return_values.include?(false) #If any 'false' items are found
    return false
  else
    return true
  end
end
