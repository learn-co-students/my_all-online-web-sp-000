require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end

# block_return_values = [true, false, false]
# my_all?([1,2,3]) {|1| 1 < 2}
#   #=> true
#   def my_all?(collection)
#     i = 0
#     block_return_values = []
#     while i < collection.length
#       block_return_values << yield(collection[i])
#       i = i + 1
#     end
#   end
