require 'pry'

# my_all?([1,2,3]) {|i| i < 2}

def my_all?(collection)

  i = 0
  return_values = []
  
  while i < collection.length do
    
    return_values << yield(collection[i])
    i += 1
    
  end
  
  !return_values.include?(false)

end