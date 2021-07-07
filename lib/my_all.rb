require 'pry'

def my_all?(collection)
  i = 0
  block_return_values =[]
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
#binding.pry
  if block_return_values.include?(false)
    false
  else
    true
  end

end

#my_all?([1,2,3,4,5]) {|i| i<5 }
