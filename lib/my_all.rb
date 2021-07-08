require 'pry'

def my_all?(collection)
  i = 0
  returns = []
  while i < collection.length
    returns << yield(collection[i])
    i += 1
  end

  !returns.include?(false)
end
