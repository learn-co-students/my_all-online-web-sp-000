require 'pry'

def my_all?(collection)
  if collection.length > 0
    i = 0
    block_return_values = []
    while collection.length > i
      block_return_values << yield(collection[i])
      i += 1
    end

    if block_return_values.include?(false)
      false
    else
      true
    end
  end

end
