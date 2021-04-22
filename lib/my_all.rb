require 'pry'

def my_all?(collection)
    i = 0
    block_of_return_values = []
    while i < collection.length
        block_of_return_values << yield(collection[i])
        i += 1
    end
    if block_of_return_values.include?(false)
        false
    else
        true
    end
end