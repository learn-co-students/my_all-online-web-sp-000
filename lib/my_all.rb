require 'pry'

def my_all?(collection)
  i = 0
  retVals = []
  while i < collection.size
    retVals << yield(collection[i])
    i += 1
  end

  if retVals.include?(false)
    false
  else
    true
  end
end
