require 'pry'

def my_all?(collection)
  i = 0

  while i < collection.length
    if yield(collection[i]) == false
      return false
    end
    i += 1
  end

  true
end
