require 'pry'

def my_all?(collection)
 i = 0 
 return_value = []
 while i < collection.length 
 return_value << yield(collection[i])
  i += 1 
 end 
 if return_value.include?(false)
   false 
  else 
    true
  end 
end