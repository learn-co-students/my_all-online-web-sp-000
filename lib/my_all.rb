require 'pry'

def my_all?(collection)
 i = 0 
 block_return_values = [] #create an empty array 
 while i < collection.length 
 block_return_values <<
 #when this code is run and it hits the yield line, it is going to send whatever is passed in as the argument to the block 
  yield(collection[i])
 i = i + 1  
end

if
  block_return_values.include?(false)
    false
  else  
    true  
  end
end  