require 'pry'

def my_all?(collection)
  i = 0
  returnedArr = []
  while i<collection.length
    returnedArr << yield(collection[i])
    i += 1
  end

  if returnedArr.include?(false)
    false
  else
    true
  end

end
