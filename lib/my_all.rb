require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  if block_return_values.include?(false)
    false
  else
    true
  end
  # print block_return_values #this print changes the return value of this whole method to nil(so be careful using it!!)
end

my_all?([1, 2, 3]) {|i| i > 0}
# my_all?([true, true, true]) {|i| i < 2}