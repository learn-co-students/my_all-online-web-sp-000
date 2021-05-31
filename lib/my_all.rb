require 'pry'

def my_all?(collection)
  i=0
  meth_return_array = []
  while i < collection.size
    meth_return_array << yield(collection[i])
    i += 1
  end
  if meth_return_array.include?(false)
    false
  else
    true
  end
end
