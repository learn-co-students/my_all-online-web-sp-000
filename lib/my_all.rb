require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])        #yields each element in collection to the block. Sends whatever is passed in as the argument to the block.
    i += 1
  end
  if block_return_values.include?(false)            #added an #include? to determine the return value of the #my_all?
    return false                                           #returns false when block condition is met
  else
    return true                                             #returns true when block condition is met
  end
end
