require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
    # binding.pry 
  end

# my_all?([1,2,3]) {|i| i < 2}

 if block_return_values.include?(false)
    false
  else
    true
  end
end