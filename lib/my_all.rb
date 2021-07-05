require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    yielded_value = yield(collection[i])
    block_return_values << yielded_value
    i += 1
    if !yielded_value
      return false
    end
  end
  true
  #if block_return_values.include?(false)
end
