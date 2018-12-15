require 'pry'

def my_all?(collection) # does not call on all?
i = 0
  block_return_values = [] #can handle an empty collection
  while i < collection.length
    block_return_values << yield(collection[i]) # yields the correct element to the block
    i = i + 1
  end
 
  if block_return_values.include?(false) #returns false when the block condition is not met
    false
  else
    true #returns true when the block condition is met
  end
end

