require 'pry'

def my_all?(collection)
  i = 0                                  # <-- restart counter at 0
  block_return_value = []                # <-- Store the return value
    while i < collection.length
    block_return_value << yield(collection[i])    # <-- adding the return value of the block into the array
    i = i + 1                            # <-- increment the counter by 1
  end

  if block_return_value.include?(false)
    false
  else
    true
  end
end

# my_all?([1,2,3]) {|i| i < 2}  #<-- This is the argument which is passed into the yield line
#
# def my_all?([1,2,3])      <-- This represents how the method will run
#   i = 0
#   while i < 3
#     yield(1)
#     i = 0 + 1
#   end
# end

# The return value of all? is simply true or false.
# If any element in the collection evaluates to false, then all? should return false.
# If they are all true, the method should return true.
