require 'pry'

def my_all?(collection)
    i = 0
    block_return_values = []
    while i < collection.length
        if block_given?
            block_return_values << yield(collection[i])
            i += 1
        else
            return "No block given to yield in my_all method."
        end
    end

    if block_return_values.include?(false)
        false
    else
        true
    end
end