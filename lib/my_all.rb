require 'pry'

def my_all?(collection)
  all_true = true 
  i = 0 
  block_return_values = [] 
  while i < collection.length 
    block_return_values << yield(collection[i])
    i+=1 
  end 
  if block_return_values.include?(false)
    false
  else 
    true 
  end 
end