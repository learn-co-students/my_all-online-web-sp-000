require 'pry'

def my_all?(collection)
  index = 0 
  block_return_values = []
  while index < collection.length 
    block_return_values << yield(collection[index])
    index += 1 
  end
  
  if block_return_values.include?(false)
    false
  else
    true
  end
end